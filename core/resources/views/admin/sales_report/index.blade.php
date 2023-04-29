@extends('admin.layout')

@section('content')
<div class="page-header">
    <h4 class="page-title">Sales Report</h4>
    <ul class="breadcrumbs">
        <li class="nav-home">
            <a href="{{route('admin.dashboard')}}">
                <i class="flaticon-home"></i>
            </a>
        </li>
        <li class="separator">
            <i class="flaticon-right-arrow"></i>
        </li>
        <li class="nav-item">
            <a href="#">Sales Management</a>
        </li>
        <li class="separator">
            <i class="flaticon-right-arrow"></i>
        </li>
        <li class="nav-item">
            <a href="#">Sales Report</a>
        </li>
    </ul>
</div>
@php
$today = \Carbon\Carbon::now()->format('F j, Y');
@endphp

<div class="row">
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-title d-inline-block">Today's Orders</div>
                        <div class="date-text float-lg-right">{{ $today }}</div>
                        <div class="float-lg-right mx-4">
                            @if($yesterdaysOrders)
                            @if($percentIncrease > 0)
                            <span class="text-success"><i class="fa fa-arrow-up"></i> {{ number_format($percentIncrease,
                                2) }}%</span>
                            @elseif($percentIncrease < $yesterdaysOrders) <span class="text-danger"><i
                                    class="fa fa-arrow-down"></i> {{ number_format(abs($percentIncrease), 2) }}%</span>
                                @else
                                <span class="text-muted"><i class="fa fa-arrows-h"></i> {{
                                    number_format($percentIncrease, 2) }}%</span>
                                @endif
                                @else
                                <span class="text-muted">No data available</span>
                                @endif
                                <div class="text-muted font-size-sm">vs yesterday</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <h2 class="text-center">{{ $todaysOrders }}</h2>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-title d-inline-block">Today's Sales</div>
                        <div class="date-text float-lg-right">{{ $today }}</div>
                        <div class="float-lg-right mx-4">
                            @if($yesterdaySales)
                            @if($salespercentIncrease > 0)
                            <span class="text-success"><i class="fa fa-arrow-up"></i> {{
                                number_format($salespercentIncrease, 2) }}%</span>
                            @elseif($percentIncrease < $yesterdaySales) <span class="text-danger"><i
                                    class="fa fa-arrow-down"></i> {{ number_format(abs($salespercentIncrease), 2)
                                }}%</span>
                                @else
                                <span class="text-muted"><i class="fa fa-arrows-h"></i> {{
                                    number_format($salespercentIncrease, 2) }}%</span>
                                @endif
                                @else
                                <span class="text-muted">No data available</span>
                                @endif
                                <div class="text-muted font-size-sm">vs yesterday</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <h2 class="text-center">{{ $todaysSales }}</h2>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-title d-inline-block">Today's Incoming Sales</div>
                        <div class="date-text float-lg-right">{{ $today }}</div>
                        <div class="float-lg-right mx-4">
                            @if($yesterdayIncomingSales)
                            @if($incomoingpercentIncrease > 0)
                            <span class="text-success"><i class="fa fa-arrow-up"></i> {{
                                number_format($incomoingpercentIncrease, 2) }}%</span>
                            @elseif($percentIncrease < $yesterdayIncomingSales) <span class="text-danger"><i
                                    class="fa fa-arrow-down"></i> {{ number_format(abs($incomoingpercentIncrease), 2)
                                }}%</span>
                                @else
                                <span class="text-muted"><i class="fa fa-arrows-h"></i> {{
                                    number_format($incomoingpercentIncrease, 2) }}%</span>
                                @endif
                                @else
                                <span class="text-muted">No data available</span>
                                @endif
                                <div class="text-muted font-size-sm">vs yesterday</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <h2 class="text-center">{{ $todaysIncomingSales }}</h2>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-8">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-title d-inline-block">Top Selling Dish</div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col">Dish Name</th>
                                <th scope="col">Price</th>
                                <th scope="col">Special</th>
                                <th scope="col">Total Sales</th>
                                <th scope="col">Rating</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($topSellingDishes as $dish)
                            <tr>
                                <td>{{ $dish->title }}</td>
                                <td>&#8369;{{ number_format($dish->current_price, 2) }}</td>
                                <td>{{ $dish->is_special ? 'Yes' : 'No' }}</td>
                                <td>&#8369;{{ number_format($dish->total_sales, 2) }}</td>
                                <td>{{ number_format($dish->rating, 1) }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card-title d-inline-block">Top Selling Categories</div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <ul>
                    @foreach ($topSellingCategories as $category)
                    <li style="font-size: 1.2em;">{{ $category->name }} - ₱{{ number_format($category->category_sales,
                        2) }}</li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="row justify-content-between">
                    <div class="col-md-auto">
                        <div class="card-title d-inline-block">Sales Analytics</div>
                    </div>
                    <div class="col-md-auto">
                        <select class="form-control w-auto" id="chart-type-dropdown">
                            <option value="line">Line Chart</option>
                            <option value="bar">Bar Graph</option>
                        </select>
                    </div>
                    <div class="col-md-auto">
                        <select class="form-control w-auto" id="sales-analytics-dropdown">
                            <option value="all">All</option>
                            <option value="daily">Daily</option>
                            <option value="weekly">Weekly</option>
                            <option value="monthly">Monthly</option>
                            <option value="yearly">Yearly</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <canvas id="sales-analytics-chart" width="500" height="auto"></canvas>
                <table class="table mt-4" id="sales-analytics-table">
                    <thead>
                        <tr>
                            <th>Time Period</th>
                            <th>Total Sales</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@section('scripts')
<script>
    const salesAnalyticsDropdown = document.getElementById('sales-analytics-dropdown');
        const chartTypeDropdown = document.getElementById('chart-type-dropdown');
        const salesAnalyticsChartElement = document.getElementById('sales-analytics-chart');
        const salesAnalyticsTable = document.getElementById('sales-analytics-table').querySelector('tbody');
        let salesAnalyticsChart;

        function fetchAndRenderSalesAnalyticsData() {
             // Fetch sales data
            const currentDate = new Date();
            const startOfYear = new Date(currentDate.getFullYear(), 0, 1).toISOString().split('T')[0];
            const endOfYear = new Date(currentDate.getFullYear(), 11, 31).toISOString().split('T')[0];

                fetch('{{ route("admin.sales-report.analytics") }}?time_period=' + salesAnalyticsDropdown.value + '&start_date=' + startOfYear + '&end_date=' + endOfYear)

        .then(response => response.json())
        .then(data => {
            // Update chart
            if (salesAnalyticsChart) {
                salesAnalyticsChart.destroy();
            }

            let labels = [];
            let sales = [];

            switch (salesAnalyticsDropdown.value) {
                case 'daily':
                    const daysInMonth = new Date(new Date().getFullYear(), new Date().getMonth() + 1, 0).getDate();
                    labels = Array.from({ length: daysInMonth }, (_, i) => i + 1);
                    sales = Array(daysInMonth).fill(0);

                    data.forEach(item => {
                        const day = parseInt(item.date.split('-')[2]);
                        sales[day - 1] = item.total_sales;
                    });
                    break;
                case 'weekly':
                    labels = ['Week 1', 'Week 2', 'Week 3', 'Week 4'];
                    sales = Array(4).fill(0);

                    data.forEach(item => {
                        const week = Math.ceil(parseInt(item.date.split('-')[2]) / 7);
                        sales[week - 1] += parseFloat(item.total_sales);
                    });
                    break;
                case 'monthly':
                    labels = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
                    sales = Array(12).fill(0);

                    data.forEach(item => {
                        const month = parseInt(item.date.split('-')[1]);
                        sales[month - 1] += parseFloat(item.total_sales);
                    });
                    break;
                case 'yearly':
                case 'all':
                    labels = [new Date().getFullYear()];
                    sales = [0];

                    data.forEach(item => {
                        sales[0] += parseFloat(item.total_sales);
                    });
                    break;
            }

            salesAnalyticsChart = new Chart(salesAnalyticsChartElement, {
                type: chartTypeDropdown.value,
                data: {
                    labels: labels,
                    datasets: [{
                        label: 'Sales',
                        data: sales,
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    },
                    plugins: {
                        tooltip: {
                            displayColors: false,
                            callbacks: {
                                title: function() {
                                    return '';
                                }
                            },
                            bodyFont: {
                                size: 20 // Set the font size for the tooltip text
                            },
                            backgroundColor: 'transparent',
                        }
                    }
                }
            });

            // Update table
            salesAnalyticsTable.innerHTML = '';
            data.forEach(item => {
                const row = document.createElement('tr');
                const dateCell = document.createElement('td');
                const salesCell = document.createElement('td');

                dateCell.textContent = item.date;
                salesCell.textContent = '₱' + parseFloat(item.total_sales).toFixed(2);

                row.appendChild(dateCell);
                row.appendChild(salesCell);
                salesAnalyticsTable.appendChild(row);
            });
        });
        }


        salesAnalyticsDropdown.addEventListener('change', fetchAndRenderSalesAnalyticsData);
        chartTypeDropdown.addEventListener('change', fetchAndRenderSalesAnalyticsData);

        // Fetch initial data
        fetchAndRenderSalesAnalyticsData();
</script>
@endsection

@endsection