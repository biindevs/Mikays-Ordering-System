<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Models\Product;
use App\Models\Orderitem;

class SalesReportController extends Controller
{
    public function index()
    {
        // Get today's orders
        $todaysOrders = DB::table('product_orders')
                        ->whereDate('created_at', Carbon::today())
                        ->count();

        // Get yesterday's orders
        $yesterdaysOrders = DB::table('product_orders')
                            ->whereDate('created_at', Carbon::yesterday())
                            ->count();

        // Calculate the percentage increase from yesterday's orders
        $percentIncrease = $yesterdaysOrders ? ((($todaysOrders - $yesterdaysOrders) / $yesterdaysOrders) * 100) : 0;

        // Get today's sales
        $todaysSales = DB::table('product_orders')
                        ->whereDate('created_at', Carbon::today())
                        ->where('payment_status', 'Completed')
                        ->sum('total');

        // Get yesterday's sales
        $yesterdaySales = DB::table('product_orders')
                        ->whereDate('created_at', Carbon::yesterday())
                        ->where('payment_status', 'Completed')
                        ->sum('total');

        // Calculate the percentage increase from yesterday's orders
        $salespercentIncrease = $yesterdaySales ? ((($todaysSales - $yesterdaySales) / $yesterdaySales) * 100) : 0;

        // Get yesterday's today's incoming sales
        $yesterdayIncomingSales = DB::table('product_orders')
                                ->whereDate('created_at', Carbon::yesterday())
                                ->where('payment_status', '!=', 'Completed')
                                ->sum('total');

        $incomoingpercentIncrease = $yesterdaySales ? ((($todaysSales - $yesterdaySales) / $yesterdaySales) * 100) : 0;

        // Get today's incoming sales
        $todaysIncomingSales = DB::table('product_orders')
                                    ->whereDate('created_at', Carbon::today())
                                    ->where('payment_status', '!=', 'Completed')
                                    ->sum('total');

        // Format the sales values to two decimal places
        $todaysSales = number_format((float)$todaysSales, 2, '.', '');
        $todaysIncomingSales = number_format((float)$todaysIncomingSales, 2, '.', '');

        // Get top selling dishes
        $topSellingDishes = Product::select('products.title', 'products.current_price', 'products.is_special', 'products.rating', DB::raw('SUM(order_items.total) as total_sales'))
                            ->join('order_items', 'products.id', '=', 'order_items.product_id')
                            ->groupBy('products.id', 'products.title', 'products.current_price', 'products.is_special', 'products.rating')
                            ->orderBy('total_sales', 'desc')
                            ->get();

        // Get top selling categories
        $topSellingCategories = DB::table('pcategories')
                                ->select('pcategories.name', DB::raw('SUM(order_items.total) as category_sales'))
                                ->join('products', 'pcategories.id', '=', 'products.category_id')
                                ->join('order_items', 'products.id', '=', 'order_items.product_id')
                                ->groupBy('pcategories.id', 'pcategories.name')
                                ->orderBy('category_sales', 'desc')
                                ->get();

        return view('admin.sales_report.index', [
            'todaysOrders' => $todaysOrders,
            'yesterdaysOrders' => $yesterdaysOrders,
            'percentIncrease' => $percentIncrease,
            'salespercentIncrease' => $salespercentIncrease,
            'yesterdaySales' => $yesterdaySales,
            'todaysSales' => $todaysSales,
            'yesterdayIncomingSales' => $yesterdayIncomingSales,
            'incomoingpercentIncrease' => $incomoingpercentIncrease,
            'todaysIncomingSales' => $todaysIncomingSales,
            'topSellingDishes' => $topSellingDishes,
            'topSellingCategories' => $topSellingCategories
        ]);
    }


    public function fetchAnalyticsData(Request $request)
    {
        $timePeriod = $request->input('time_period');
        $startDateParam = $request->input('start_date');
        $endDateParam = $request->input('end_date');

        // Calculate the start date and end date based on the selected time period
        $startDate = Carbon::now();
        $endDate = Carbon::now();

        switch ($timePeriod) {
            case 'daily':
                $startDate = $endDate->copy()->startOfDay();
                break;
            case 'weekly':
                $startDate = $endDate->copy()->startOfWeek();
                break;
            case 'monthly':
                $startDate = $endDate->copy()->startOfMonth();
                break;
            case 'yearly':
                $startDate = $endDate->copy()->startOfYear();
                break;
            default:
                $startDate = null;
        }

        // Override the start date and end date if provided in the request
        if ($startDateParam) {
            $startDate = Carbon::parse($startDateParam);
        }
        if ($endDateParam) {
            $endDate = Carbon::parse($endDateParam);
        }

        // Fetch sales data
        $salesData = DB::table('product_orders')
                    ->select(DB::raw('DATE(created_at) as date'), DB::raw('SUM(total) as total_sales'))
                    ->where('payment_status', 'Completed')
                    ->when($startDate, function ($query, $startDate) {
                        return $query->where('created_at', '>=', $startDate);
                    })
                    ->when($endDate, function ($query, $endDate) {
                        return $query->where('created_at', '<=', $endDate);
                    })
                    ->groupBy('date')
                    ->orderBy('date')
                    ->get();
        return response()->json($salesData);
    }

}
