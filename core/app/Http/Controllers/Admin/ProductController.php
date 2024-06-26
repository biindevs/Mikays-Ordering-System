<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
use App\Models\BasicExtended as BE;
use App\Models\BasicSetting as BS;
use App\Models\Language;
use App\Models\Pcategory;
use App\Models\ProductImage;
use App\Models\Product;
use App\Models\PsubCategory;
use App\Models\OrderItem;
use Purifier;
use Validator;
use Session;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $lang = Language::where('code', $request->language)->first();

        $lang_id = $lang->id;
        $data['products'] = Product::where('language_id', $lang_id)->orderBy('id', 'DESC')->get();
        $data['lang_id'] = $lang_id;
        return view('admin.product.index', $data);
    }


    public function create(Request $request)
    {
        $lang = Language::where('code', $request->language)->first();
        $categories = Pcategory::where('status', 1)->where('language_id', $lang->id)->get();
        return view('admin.product.create', compact('categories'));
    }

    public function sliderstore(Request $request)
    {

        $img = $request->file('file');
        $allowedExts = array('jpg', 'png', 'jpeg', 'webp');
        $rules = [
            'file' => [
                function ($attribute, $value, $fail) use ($img, $allowedExts) {
                    $ext = $img->getClientOriginalExtension();
                    if (!in_array($ext, $allowedExts)) {
                        return $fail("Only png, jpg, jpeg, and webp images are allowed");
                    }
                },
            ]
        ];
        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }
        $filename = uniqid() . '.jpg';
        $img->move('assets/front/img/product/sliders/', $filename);
        $pi = new ProductImage;
        if (!empty($request->product_id)) {
            $pi->product_id = $request->product_id;
        }
        $pi->image = $filename;
        $pi->save();
        return response()->json(['status' => 'success', 'file_id' => $pi->id]);
    }
    public function sliderrmv(Request $request)
    {
        $pi = ProductImage::findOrFail($request->fileid);
        @unlink('assets/front/img/product/sliders/' . $pi->image);
        $pi->delete();
        return $pi->id;
    }

    public function getCategory($langid)
    {
        $category = Pcategory::where('language_id', $langid)->get();
        return $category;
    }
    public function getSubcategory($catId)
    {
        $category = PsubCategory::where('category_id', $catId)->where('status', 1)->get();
        return $category;
    }


    public function store(Request $request)
    {
        $img = $request->file('feature_image');
        $allowedExts = array('jpg', 'png', 'jpeg', 'webp');
        $slug = make_slug($request->title);

        $rules = [
            'language_id' => 'required',
            'title' => 'required|max:255',
            'category_id' => 'required',
            'current_price' => 'required|numeric|min:1',
            'summary' => 'required',
            'description' => 'required',
            'slider_images' => 'required',
            'status' => 'required',

            'feature_image' => [
                'required',
                function ($attribute, $value, $fail) use ($img, $allowedExts) {
                    if (!empty($img)) {
                        $ext = $img->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg, and webp image is allowed");
                        }
                    }
                },
            ],
        ];


        $messages = [
            'language_id.required' => 'The language field is required.',
            'category_id.required' => 'The category field is required.',
            'title.required' => 'The dish name field is required.'
        ];


        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()) {
            $errmsgs = $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }

        $in = $request->all();
        if ($request->hasFile('feature_image')) {
            $filename = time() . '.' . $img->getClientOriginalExtension();
            $request->file('feature_image')->move('assets/front/img/product/featured/', $filename);
            $in['feature_image'] = $filename;
        }



        $in['language_id'] = $request->language_id;
        $in['slug'] = $slug;
        $in['description'] = Purifier::clean($request->description);

        // store varations as json
        $variations = [];
        if ($request->has('variant_names')) {
            $i = 0;
            foreach ($request->variant_names as $key => $vname) {
                $keyv = Str::replace(' ', '_', $vname);
                if ($request[$keyv . "_names"]) {
                    foreach ($request[$keyv . "_names"] as $key => $val) {
                        $variations[$keyv][$key]["name"] = $val;
                        $variations[$keyv][$key]["price"] = (float)$request[$keyv . "_prices"][$key];
                    }
                }
            }
        }
        $in['variations'] = json_encode($variations);
        // store addons as json
        $addons = [];
        if ($request->has('addon_names')) {
            $i = 0;
            foreach ($request->addon_names as $key => $aname) {
                // if the addon name input field contains value
                if (!empty($aname)) {
                    $addons[$i]['name'] = $aname;
                    $aprice = $request->addon_prices[$key];
                    $addons[$i]['price'] = !empty($aprice) ? (float)$aprice : 0;
                    $i++;
                }
            }
        }
        $in['addons'] = json_encode($addons);
        $product = Product::create($in);
        $slders = $request->slider_images;
        $pis = ProductImage::findOrFail($slders);
        foreach ($pis as $key => $pi) {
            $pi->product_id = $product->id;
            $pi->save();
        }
        Session::flash('success', 'Product added successfully!');
        return "success";
    }


    public function edit(Request $request, $id)
    {
        $lang = Language::where('code', $request->language)->first();
        $data['categories'] = $lang->pcategories()->where('status', 1)->get();
        $data['data'] = Product::findOrFail($id);
        $data['subCategories'] = PsubCategory::where('category_id', $data['data']->category_id)->where('status', 1)->get();

        return view('admin.product.edit', $data);
    }

    public function images($portid)
    {
        $images = ProductImage::where('product_id', $portid)->get();
        return $images;
    }

    public function variants($pid)
    {
        $variations = Product::find($pid)->variations;
        $variations = json_decode($variations, true);
        $variants = [];
        $i = 0;

        foreach ($variations as $var => $opts) {
            $variants[$i] = [
                'name' => str_replace("_", " ", $var),
                'uniqid' => uniqid(),
                'options' => $opts
            ];
            $i++;
        }

        return response()->json($variants);
    }

    public function addons($pid)
    {
        $addons = Product::find($pid)->addons;
        $addonArr = json_decode($addons, true);

        $addons = [];
        for ($i = 0; $i < count($addonArr); $i++) {
            $addons[$i]['uniqid'] = uniqid();
            $addons[$i]['name'] = $addonArr[$i]["name"];
            $addons[$i]['price'] = $addonArr[$i]["price"];
        }
        return response()->json($addons);
    }

    public function update(Request $request)
    {
        $img = $request->file('feature_image');
        $allowedExts = array('jpg', 'png', 'jpeg', 'webp');
        $slug = make_slug($request->title);

        $rules = [

            'title' => 'required|max:255',
            'category_id' => 'required',
            'current_price' => 'required|numeric|min:1',
            'summary' => 'required',
            'description' => 'required',
            'status' => 'required',
            'feature_image' => [
                function ($attribute, $value, $fail) use ($img, $allowedExts) {
                    if (!empty($img)) {
                        $ext = $img->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg, webp image is allowed");
                        }
                    }
                },
            ],

        ];

        $messages = [
            'category_id.required' => 'Service category is required'
        ];



        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()) {
            $errmsgs = $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }

        $in = $request->all();
        $product = Product::findOrFail($request->product_id);

        if ($request->hasFile('feature_image')) {
            @unlink('assets/front/img/product/featured/' . $product->feature_image);
            $filename = time() . '.' . $img->getClientOriginalExtension();
            $request->file('feature_image')->move('assets/front/img/product/featured/', $filename);
            $in['feature_image'] = $filename;
        }

        $in['slug'] = $slug;
        $in['description'] = Purifier::clean($request->description);

        $variations = [];
        if ($request->has('variant_names')) {
            $i = 0;
            foreach ($request->variant_names as $key => $vname) {
                $keyv = Str::replace(' ', '_', $vname);
                if ($request[$keyv . "_names"]) {
                    foreach ($request[$keyv . "_names"] as $key => $val) {
                        $variations[$keyv][$key]["name"] = $val;
                        $variations[$keyv][$key]["price"] = (float)$request[$keyv . "_prices"][$key];
                    }
                }
            }

            $in['variations'] = json_encode($variations);
        } else {
            $in['variations'] = NULL;
        }

        // store addons as json
        $addons = [];
        if ($request->has('addon_names')) {
            $i = 0;
            foreach ($request->addon_names as $key => $aname) {
                // if the addon name input field contains value
                if (!empty($aname)) {
                    $addons[$i]['name'] = $aname;
                    $aprice = $request->addon_prices[$key];
                    $addons[$i]['price'] = !empty($aprice) ? (float)$aprice : 0;
                    $i++;
                }
            }
            $in['addons'] = json_encode($addons);
        } else {
            $in['addons'] = NULL;
        }

        $product = $product->fill($in)->save();

        Session::flash('success', 'Product updated successfully!');
        return "success";
    }


    public function delete(Request $request)
    {
        $product = Product::findOrFail($request->product_id);

        // Check if the product has been ordered
        $orderItemCount = OrderItem::where('product_id', $product->id)->count();
        if ($orderItemCount > 0) {
            Session::flash('warning', 'The Dish cannot be deleted because it has already been ordered. To resolve this, it\'s recommended to hide the dish status instead of deleting it.');
            return back();
        }

        foreach ($product->product_images as $key => $pi) {
            @unlink('assets/front/img/product/sliders/' . $pi->image);
            $pi->delete();
        }

        @unlink('assets/front/img/product/featured/' . $product->feature_image);
        $product->delete();

        Session::flash('success', 'Product deleted successfully!');
        return back();
    }


    public function bulkDelete(Request $request)
    {
        $ids = $request->ids;
        $nonDeletedProducts = [];

        foreach ($ids as $id) {
            $product = Product::findOrFail($id);

            // Check if the product has been ordered
            $orderItemCount = OrderItem::where('product_id', $product->id)->count();
            if ($orderItemCount > 0) {
                $nonDeletedProducts[] = $product->title;
                continue;
            }

            foreach ($product->product_images as $key => $pi) {
                @unlink('assets/front/img/product/sliders/' . $pi->image);
                $pi->delete();
            }

            @unlink('assets/front/img/product/featured/' . $product->feature_image);
            $product->delete();
        }

        if (count($nonDeletedProducts) > 0) {
            $nonDeletedProductsString = implode(', ', $nonDeletedProducts);
            Session::flash('warning', 'The following dish could not be deleted because they have already been ordered: ' . $nonDeletedProductsString . '. It\'s recommended to hide the dish status instead of deleting it.');
        } else {
            Session::flash('success', 'Products deleted successfully!');
        }

        return "success";
    }


    public function FeatureCheck(Request $request)
    {
        $id = $request->product_id;
        $value = $request->feature;

        $product = Product::findOrFail($id);
        $product->is_feature = $value;
        $product->save();

        Session::flash('success', 'Product updated successfully!');
        return back();
    }


    public function SpecialCheck(Request $request)
    {
        $id = $request->product_id;
        $value = $request->special;

        $product = Product::findOrFail($id);
        $product->is_special = $value;
        $product->save();

        Session::flash('success', 'Product updated successfully!');
        return back();
    }
}
