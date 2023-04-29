<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ProductOrder;
use App\Models\OrderItem;
use Auth;
use Carbon\Carbon;


class OrderController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('setlang');
    }
    public function index()
    {
        $orders = ProductOrder::where('user_id',Auth::user()->id)->orderBy('id', 'DESC')->paginate(10);
        return view('user.order',compact('orders'));
    }

    public function orderdetails($id)
    {
        $data = ProductOrder::findOrFail($id);
        // if the order has no user_id (guest checkout), then no check
        if (!empty($data->user_id)) {
            if (Auth::check() && Auth::user()->id != $data->user_id) {
                return back();
            }
        }
        return view('user.order_details',compact('data'));
    }

    public function cancelOrder(Request $request, $id)
    {
        $order = ProductOrder::findOrFail($id);

        // Check if the order has already been cancelled
        if ($order->order_status === 'cancelled') {
            return redirect()->route('user-orders')->with('error',__('This order has already been cancelled.'));
        }

        // Check if the delivery or pick-up date is less than two days away
        $serving_date = Carbon::createFromFormat('m/d/Y', $order->serving_method === 'pick_up' ? $order->pick_up_date : $order->delivery_date);
        $now = Carbon::now();
        $interval = $now->diffInDays($serving_date, false);

        if ($interval < 1) {
            return redirect()->route('user-orders')->with('error',__('Orders with delivery or pickup dates less than 2 days away cannot be cancelled.'));
        }

        // Check if the delivery or pick-up date is already past
        if ($now->greaterThanOrEqualTo($serving_date)) {
            return redirect()->route('user-orders')->with('error',__('Orders with delivery or pickup dates already past cannot be cancelled.'));
        }

        // Check if the order has already been completed
        if ($order->completed === 'yes') {
            return redirect()->route('user-orders')->with('error',__('This order has already been completed.'));
        }

        // Update the 'order_status' and 'cancellation_reason' columns
        $order->order_status = 'cancelled';
        $order->cancellation_reason = $request->input('cancellation_reason');
        $order->save();

        return back()->with('success',__('Your order has been cancelled.'));
    }


    public function cancelItem(Request $request, $id)
    {
        $itemId = $id;
        $status = 'canceled';
        $item = OrderItem::find($itemId);

        if ($item) {

            // Count the items with 'approved' status
            $approvedItemsCount = $item->productOrder->orderItems->where('status', 'approved')->count();

            // Check if there's only one 'approved' order item and the status is 'canceled'
            if ($approvedItemsCount === 1 && $status === 'canceled') {
                return back()->with('warning', 'If the quantity of the item is one or less, cancellation of the item is not permitted. In this case, please cancel the entire order instead.');
            }
            // Store the previous status
            $previousStatus = $item->status;

            // Update the OrderItem status
            $item->update(['status' => $status]);

            // Retrieve the related ProductOrder
            $productOrder = $item->productOrder;

            if ($status === 'canceled') {
                // Subtract the OrderItem total from the ProductOrder total
                $newTotal = $productOrder->total - $item->total;

                // Update and save the new total in the ProductOrder
                $productOrder->update(['total' => $newTotal]);
            }

            return back()->with('success', __('Item has been cancelled.'));
        }

        return back()->with('error', __('Item not found.'));
    }

}
