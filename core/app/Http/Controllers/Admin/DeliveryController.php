<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\DeliveryRider;
use App\Models\ProductOrder;
use Illuminate\Http\Request;
use Validator;
use Session;

class DeliveryController extends Controller
{
    public function index()
    {
        $deliveryRiders = DeliveryRider::with('productOrder')->get();
        $assignedOrderNumbers = $deliveryRiders->pluck('productOrder.order_number')->toArray();
        $orderNumbers = ProductOrder::where('completed', 'no')
                                    ->where('serving_method', 'home_delivery') // add this line
                                    ->whereNotIn('order_number', $assignedOrderNumbers)
                                    ->pluck('order_number')
                                    ->toArray();
        return view('admin.product.delivery.index', compact('deliveryRiders', 'orderNumbers'));
    }

    public function store(Request $request)
    {
        $rules = [
            'name' => 'required|regex:/^[A-Za-z\s\'-]+$/',
            'phone_number' => 'required|regex:/^\d+$/',
            'status' => 'required',
            'order_number' => 'required|exists:product_orders,order_number',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $errmsgs = $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }

        $productOrder = ProductOrder::where('order_number', $request->order_number)->first();

        $rider = new DeliveryRider;
        $rider->name = $request->name;
        $rider->phone_number = $request->phone_number;
        $rider->delivery_service = $request->status;
        $rider->product_order_id = $productOrder->id;
        $rider->save();

        Session::flash('success', 'Rider added successfully!');
        return back();
    }

    public function update(Request $request)
    {
        $rules = [
            'name' => 'required|regex:/^[A-Za-z\s\'-]+$/',
            'phone_number' => 'required|regex:/^\d+$/',
            'delivery_service' => 'required',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $errmsgs = $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }

        $rider = DeliveryRider::findOrFail($request->rider_id);
        $rider->name = $request->name;
        $rider->phone_number = $request->phone_number;
        $rider->delivery_service = $request->delivery_service;
        $rider->save();

        Session::flash('success', 'Rider updated successfully!');
        return back();
    }




    public function deliveryStatus(Request $request)
    {
        $rules = [
            'rider_id' => 'required|exists:delivery_riders,id',
            'status' => 'required|in:Pending,Completed',
        ];

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $errmsgs = $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }

        $rider = DeliveryRider::findOrFail($request->rider_id);
        $rider->status = $request->status;
        $rider->save();

        Session::flash('success', 'Status updated successfully!');
        return back();
    }

    public function delete(Request $request)
    {
        $rider = DeliveryRider::findOrFail($request->rider_id);
        $rider->delete();

        Session::flash('success', 'Rider deleted successfully!');
        return back();
    }



    // ... other methods ...
}
