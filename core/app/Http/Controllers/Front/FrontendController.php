<?php

namespace App\Http\Controllers\Front;

use Config;
use Validator;
use App\Models\Faq;
use App\Models\Job;
use App\Models\Blog;
use App\Models\Page;
use App\Models\Member;
use App\Models\Slider;
use App\Models\Feature;
use App\Models\Gallery;
use App\Models\Product;
use App\Models\Language;
use App\Models\Bcategory;
use App\Models\Jcategory;
use App\Models\Pcategory;
use App\Models\TableBook;
use App\Models\Subscriber;
use App\Models\Testimonial;
use App\Events\WaiterCalled;
use Illuminate\Http\Request;
use App\Http\Helpers\MegaMailer;
use App\Models\ReservationInput;
use App\Models\BasicSetting as BS;
use PHPMailer\PHPMailer\PHPMailer;
use App\Models\BasicExtended as BE;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

class FrontendController extends Controller
{

    public function __construct()
    {
        $bs = BS::first();
        $be = BE::first();

        Config::set('captcha.sitekey', $bs->google_recaptcha_site_key);
        Config::set('captcha.secret', $bs->google_recaptcha_secret_key);
        Config::set('mail.host', $be->smtp_host);
        Config::set('mail.port', $be->smtp_port);
        Config::set('mail.username', $be->smtp_username);
        Config::set('mail.password', $be->smtp_password);
        Config::set('mail.encryption', $be->encryption);
    }



    public function index()
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }
        $lang_id = $currentLang->id;
        $bs = $currentLang->basic_setting;
        $be = $currentLang->basic_extended;

        $data['sliders'] = Slider::where('language_id', $lang_id)->orderBy('serial_number', 'ASC')->get();
        $data['features'] = Feature::where('language_id', $lang_id)->get();
        $data['members'] = Member::where('language_id', $lang_id)->where('feature', 1)->get();
        $data['testimonials'] = Testimonial::where('language_id', $lang_id)->orderBy('serial_number', 'ASC')->get();
        $data['blogs'] = Blog::where('language_id', $lang_id)->orderBy('id', 'desc')->take(2)->get();
        $data['special_product'] = Product::where('language_id', $lang_id)->where('status', 1)->where('is_special', 1)->orderBy('id', 'desc')->get();
        $data['categories'] = Pcategory::where('status', 1)->where('is_feature', 1)->where('language_id', $currentLang->id)->get();

        $data['products'] = Product::where('language_id', $lang_id)->where('status', 1)->paginate(10);

        $data['shapeImg'] = $bs->home_version == 'slider' ? $be->slider_shape_img : $be->hero_shape_img;
        $data['bottomImg'] = $bs->home_version == 'slider' ? $be->slider_bottom_img : $be->hero_bottom_img;

        return view('front.index', $data);
    }

    public function subscribe(Request $request)
    {
        $rules = [
            'email' => 'required|email|unique:subscribers'
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json(array('errors' => $validator->getMessageBag()->toArray()));
        }

        $subsc = new Subscriber;
        $subsc->email = $request->email;
        $subsc->save();

        return "success";
    }


    public function contact()
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }

        $data['contact'] = BS::where('language_id', $currentLang->id)->select(
            'contact_form_title',
            'contact_info_title',
            'contact_address',
            'contact_number',
            'contact_text'
        )->first();

        return view('front.contact', $data);
    }

    public function sendmail(Request $request)
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }

        $bs = $currentLang->basic_setting;

        $messages = [
            'g-recaptcha-response.required' => 'Please verify that you are not a robot.',
            'g-recaptcha-response.captcha' => 'Captcha error! try again later or contact site admin.',
        ];

        $rules = [
            'name' => 'required',
            'email' => 'required|email',
            'subject' => 'required',
            'message' => 'required'

        ];

        if ($bs->is_recaptcha == 1) {
            $rules['g-recaptcha-response'] = 'required|captcha';
        }

        $request->validate($rules, $messages);

        $be =  BE::firstOrFail();
        $from = $request->email;
        $to = $be->to_mail;
        $subject = $request->subject;
        $message = $request->message;

        try {

            $mail = new PHPMailer(true);
            $mail->setFrom($from, $request->name);
            $mail->addAddress($to);     // Add a recipient

            // Content
            $mail->isHTML(true);  // Set email format to HTML
            $mail->Subject = $subject;
            $mail->Body    = $message;

            $mail->send();
        } catch (\Exception $e) {
        }

        Session::flash('success', 'Thank you for your message. We will get back to you soon!');
        return back();
    }


    public function career(Request $request)
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }

        $data['jcats'] = $currentLang->jcategories()->where('status', 1)->orderBy('serial_number', 'ASC')->get();


        $category = $request->category;
        $term = $request->term;

        if (!empty($category)) {
            $data['category'] = Jcategory::findOrFail($category);
        }

        $data['jobs'] = Job::when($category, function ($query, $category) {
            return $query->where('jcategory_id', $category);
        })->when($term, function ($query, $term) {
            return $query->where('title', 'like', '%' . $term . '%');
        })->when($currentLang, function ($query, $currentLang) {
            return $query->where('language_id', $currentLang->id);
        })->orderBy('serial_number', 'ASC')->paginate(4);

        $data['jobscount'] = Job::when($currentLang, function ($query, $currentLang) {
            return $query->where('language_id', $currentLang->id);
        })->count();

        return view('front.career', $data);
    }


    public function careerdetails($slug, $id)
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }

        $data['jcats'] = $currentLang->jcategories()->where('status', 1)->orderBy('serial_number', 'ASC')->get();

        $data['job'] = Job::findOrFail($id);

        $data['jobscount'] = Job::when($currentLang, function ($query, $currentLang) {
            return $query->where('language_id', $currentLang->id);
        })->count();


        return view('front.career-details', $data);
    }


    public function gallery()
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }

        $lang_id = $currentLang->id;

        $data['galleries'] = Gallery::where('language_id', $lang_id)->orderBy('serial_number', 'ASC')->get();
        return view('front.gallery', $data);
    }

    public function faq()
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }

        $lang_id = $currentLang->id;

        $data['faqs'] = Faq::where('language_id', $lang_id)->orderBy('serial_number', 'ASC')->get();

        return view('front.faq', $data);
    }


    public function team()
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }

        $data['members'] = Member::when($currentLang, function ($query, $currentLang) {
            return $query->where('language_id', $currentLang->id);
        })->get();
        return view('front.teams', $data);
    }


    public function dynamicPage($slug, $id)
    {
        if (session()->has('lang')) {
            $currentLang = Language::where('code', session()->get('lang'))->first();
        } else {
            $currentLang = Language::where('is_default', 1)->first();
        }

        $data['page'] = Page::findOrFail($id);

        return view('front.dynamic', $data);
    }

    public function changeLanguage($lang, $type = 'website')
    {
        session()->put('lang', $lang);
        app()->setLocale($lang);

        if ($type == 'qr') {
            return redirect()->route('front.qrmenu');
        } else {
            return redirect()->route('front.index');
        }
    }

    // public function callwaiter(Request $request)
    // {
    //     $request->validate([
    //         'table' => 'required'
    //     ]);

    //     event(new WaiterCalled($request->table));

    //     Session::flash('success', __('Restaurant is informed!'));
    //     return back();
    // }

    public function offline() {
        return view('front.offline');
    }
}
