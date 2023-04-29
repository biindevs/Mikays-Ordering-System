@extends('front.layout')

@section('content')
<section class="page-title-area d-flex align-items-center"
    style="background-image: url('{{asset('assets/front/img/' . $bs->breadcrumb)}}');background-size:cover;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-title-item text-center">
                    <h2 class="title">{{__('Order Details')}}</h2>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active" aria-current="page">{{('Order Details')}}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>

<!--====== CHECKOUT PART START ======-->
<section class="user-dashbord">
    <div class="container">
        <div class="row">
            @include('user.inc.site_bar')
            <div class="col-lg-9">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="user-profile-details">
                            <div class="order-details">
                                <div class="progress-area-step">
                                    <ul class="progress-steps">
                                        <li class="{{$data->order_status == 'pending' ? 'active' : ''}}">
                                            <div class="icon"></div>
                                            <div class="progress-title">{{__('Pending')}}</div>
                                        </li>
                                        <li class="{{$data->order_status == 'received' ? 'active' : ''}}">
                                            <div class="icon"></div>
                                            <div class="progress-title">{{__('Received')}}</div>
                                        </li>
                                        <li class="{{$data->order_status == 'preparing' ? 'active' : ''}}">
                                            <div class="icon"></div>
                                            <div class="progress-title">{{__('Preparing')}}</div>
                                        </li>
                                        @if ($data->serving_method != 'on_table')
                                        <li class="{{$data->order_status == 'ready_to_pick_up' ? 'active' : ''}}">
                                            <div class="icon"></div>
                                            <div class="progress-title">{{__('Ready to pick up')}}</div>
                                        </li>
                                        <li class="{{$data->order_status == 'picked_up' ? 'active' : ''}}">
                                            <div class="icon"></div>
                                            <div class="progress-title">{{__('Picked up')}}</div>
                                        </li>
                                        @endif
                                        @if ($data->serving_method == 'home_delivery')
                                        <li class="{{$data->order_status == 'delivered' ? 'active' : ''}}">
                                            <div class="icon"></div>
                                            <div class="progress-title">{{__('Delivered')}}</div>
                                        </li>
                                        @endif
                                        <li class="{{$data->order_status == 'cancelled' ? 'active' : ''}}">
                                            <div class="icon"></div>
                                            <div class="progress-title">{{__('Cancelled')}}</div>
                                        </li>
                                        @if ($data->serving_method == 'on_table')
                                        <li class="{{$data->order_status == 'ready_to_serve' ? 'active' : ''}}">
                                            <div class="icon"></div>
                                            <div class="progress-title">{{__('Ready to Serve')}}</div>
                                        </li>
                                        <li class="{{$data->order_status == 'served' ? 'active' : ''}}">
                                            <div class="icon"></div>
                                            <div class="progress-title">{{__('Served')}}</div>
                                        </li>
                                        @endif
                                    </ul>
                                </div>
                                <div class="title">
                                    <h4>{{__('My Order Details')}}</h4>
                                </div>
                                <div id="print">
                                    <div class="view-order-page">
                                        <div class="order-info-area">
                                            <div class="row align-items-center">
                                                <div class="col-lg-8">
                                                    <div class="order-info">
                                                        <h3 class="text-capitalize">{{__('Order')}} {{$data->order_id}}
                                                            [{{str_replace("_", " ", $data->order_status)}}]</h3>
                                                        <p>{{__('Order Date')}} {{$data->created_at->format('d-m-Y')}}
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col-lg-4 print-btn">
                                                    <div class="prinit">
                                                        <a href="{{asset('assets/front/invoices/product/' . $data->invoice_number)}}"
                                                            download="invoice" id="print-click" class="btn"><i
                                                                class="fas fa-print"></i>{{__('Download Invoice')}}</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="billing-add-area">
                                        <div class="row">

                                            <div class="col-md-4 ">
                                                <div class="payment-information">
                                                    <h5>{{__('Order')}} : </h5>
                                                    @if (!empty($data->type))
                                                    <p>{{__('Ordered From')}} :
                                                        <span>
                                                            @if(strtolower($data->type) =='website')
                                                            {{__('Website Menu')}}
                                                            @else
                                                            {{__('QR Menu')}}
                                                            @endif
                                                        </span>
                                                    </p>
                                                    @endif

                                                    @if (!empty($data->serving_method))
                                                    <p>{{__('Delivery Method')}} :
                                                        <span>
                                                            @if(strtolower($data->serving_method) == 'on_table')
                                                            {{__('On Table')}}
                                                            @elseif(strtolower($data->serving_method) ==
                                                            'home_delivery')
                                                            {{__('Home Delivery')}}
                                                            @elseif(strtolower($data->serving_method) == 'pick_up')
                                                            {{__('Pick up')}}
                                                            @endif
                                                        </span>
                                                    </p>
                                                    @endif

                                                    @if ($data->postal_code_status == 0)
                                                    @if (!empty($data->shipping_method))
                                                    <p>{{__('Shipping Method')}} : <span> {{$data->shipping_method}}
                                                        </span></p>
                                                    @endif
                                                    @elseif ($data->postal_code_status == 1)
                                                    <p>{{__('Postal Code')}} ({{__('Delivery Area')}}) : <span>
                                                            {{$data->postal_code}} </span></p>
                                                    @endif

                                                    @if (!empty($data->shipping_charge))
                                                    <p>{{__('Shipping Charge')}} : <span style="direction: ltr;"
                                                            class="amount">{{$data->currency_symbol_position == 'left' ?
                                                            $data->currency_symbol : ''}} {{$data->shipping_charge}}
                                                            {{$data->currency_symbol_position == 'right' ?
                                                            $data->currency_symbol : ''}}</span></p>
                                                    @endif

                                                    @if (!empty($data->tax))
                                                    <p>{{__('Tax')}} : <span style="direction: ltr;"
                                                            class="amount">{{$data->currency_symbol_position == 'left' ?
                                                            $data->currency_symbol : ''}} {{$data->tax}}
                                                            {{$data->currency_symbol_position == 'right' ?
                                                            $data->currency_symbol : ''}}</span></p>
                                                    @endif

                                                    @if (!empty($data->coupon))
                                                    <p>{{__('Discount')}} : <span style="direction: ltr;"
                                                            class="amount">{{$data->currency_symbol_position == 'left' ?
                                                            $data->currency_symbol : ''}} {{$data->coupon}}
                                                            {{$data->currency_symbol_position == 'right' ?
                                                            $data->currency_symbol : ''}}</span></p>
                                                    @endif

                                                    <p>{{__('Paid Amount')}} : <span style="direction: ltr;"
                                                            class="amount">{{$data->currency_symbol_position == 'left' ?
                                                            $data->currency_symbol : ''}} {{$data->total}}
                                                            {{$data->currency_symbol_position == 'right' ?
                                                            $data->currency_symbol : ''}}</span></p>

                                                    <p class="text-capitalize">{{__('Payment Method')}} :
                                                        {{convertUtf8($data->method)}}</p>

                                                    <p>{{__('Payment Status')}} :
                                                        @if($data->payment_status =='Pending' || $data->payment_status
                                                        == 'pending')
                                                        <span class="badge badge-danger">{{$data->payment_status}}
                                                        </span>
                                                        @else
                                                        <span class="badge badge-success">{{$data->payment_status}}
                                                        </span>
                                                        @endif
                                                    </p>

                                                    <p>{{__('Complete')}} :
                                                        @if(strtolower($data->completed) =='yes')
                                                        <span class="badge badge-success">{{__('Yes')}} </span>
                                                        @else
                                                        <span class="badge badge-danger">{{__('No')}} </span>
                                                        @endif
                                                    </p>

                                                    <p>{{__('Time')}} :
                                                        {{$data->created_at}}
                                                    </p>

                                                    <p>{{__('Order Notes')}} :
                                                        @if (!empty($order->order_notes))
                                                        <button class="btn btn-info btn-sm" data-toggle="modal"
                                                            data-target="#modalNotes">Show</button>
                                                        @else
                                                        -
                                                        @endif
                                                    </p>

                                                </div>
                                            </div>

                                            <!-- Modal -->
                                            <div class="modal fade" id="modalNotes" tabindex="-1" role="dialog"
                                                aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="exampleModalLongTitle">
                                                                __{{('Order Notes')}}</h5>
                                                            <button type="button" class="close" data-dismiss="modal"
                                                                aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            {{$data->order_notes}}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            @if ($data->serving_method == 'home_delivery')
                                            <div class="col-md-4">
                                                <div class="main-info">
                                                    <h5>{{__('Shipping Details')}}</h5>
                                                    <ul class="list">
                                                        <li>
                                                            <p><span>{{__('Email
                                                                    Address')}}:</span>{{convertUtf8($data->shpping_email)}}
                                                            </p>
                                                        </li>
                                                        <li>
                                                            <p><span>{{__('Phone')}}:</span>{{$data->shpping_country_code}}{{$data->shpping_number}}
                                                            </p>
                                                        </li>
                                                        <li>
                                                            <p><span>{{__('City')}}:</span>{{convertUtf8($data->shpping_city)}}
                                                            </p>
                                                        </li>
                                                        <li>
                                                            <p><span>{{__('Barangay')}}:</span>{{convertUtf8($data->shpping_country)}}
                                                            </p>
                                                        </li>
                                                        <li>
                                                            <p><span>{{__('Landmark')}}:</span>{{convertUtf8($data->shpping_address)}}
                                                            </p>
                                                        </li>
                                                        @if ($data->serving_method == 'home_delivery')
                                                        @if (!empty($data->delivery_date))
                                                        <li>
                                                            <p><span>{{__('Delivery
                                                                    Date')}}:</span>{{convertUtf8($data->delivery_date)}}
                                                            </p>
                                                        </li>
                                                        @endif
                                                        @if (!empty($data->delivery_time_start) &&
                                                        !empty($data->delivery_time_end))
                                                        <li>
                                                            <p><span>{{ __('Delivery Time') }}:</span>{{
                                                                convertUtf8($data->delivery_time_start) }} - {{
                                                                convertUtf8($data->delivery_time_end) }}</p>
                                                        </li>
                                                        @endif
                                                        @endif

                                                    </ul>
                                                </div>
                                            </div>
                                            @endif
                                            <div class="col-md-4">
                                                <div class="main-info">
                                                    <h5>
                                                        @if ($data->serving_method == 'home_delivery')
                                                        {{__('Billing Details')}}
                                                        @else
                                                        {{__('Information')}}
                                                        @endif
                                                    </h5>
                                                    <ul class="list">
                                                        @if (!empty($data->billing_email))
                                                        <li>
                                                            <p><span>{{__('Email
                                                                    Address')}}:</span>{{convertUtf8($data->billing_email)}}
                                                            </p>
                                                        </li>
                                                        @endif
                                                        @if (!empty($data->billing_number))
                                                        <li>
                                                            <p><span>{{__('Phone')}}:</span>{{$data->billing_country_code}}{{$data->billing_number}}
                                                            </p>
                                                        </li>
                                                        @endif
                                                        @if (!empty($data->billing_city))
                                                        <li>
                                                            <p><span>{{__('City')}}:</span>{{convertUtf8($data->billing_city)}}
                                                            </p>
                                                        </li>
                                                        @endif
                                                        @if (!empty($data->billing_country))
                                                        <li>
                                                            <p><span>{{__('Barangay')}}:</span>{{convertUtf8($data->billing_country)}}
                                                            </p>
                                                        </li>
                                                        @endif
                                                        @if (!empty($data->billing_address))
                                                        <li>
                                                            <p><span>{{__('Landmark')}}:</span>{{convertUtf8($data->billing_address)}}
                                                            </p>
                                                        </li>
                                                        @endif


                                                        @if ($data->serving_method == 'on_table')
                                                        @if (!empty($data->table_number))
                                                        <li>
                                                            <p><span>{{__('Table
                                                                    Number')}}:</span>{{convertUtf8($data->table_number)}}
                                                            </p>
                                                        </li>
                                                        @endif
                                                        @if (!empty($data->waiter_name))
                                                        <li>
                                                            <p><span>{{__('Waiter
                                                                    Name')}}:</span>{{convertUtf8($data->waiter_name)}}
                                                            </p>
                                                        </li>
                                                        @endif
                                                        @endif

                                                        @if ($data->serving_method == 'pick_up')
                                                        @if (!empty($data->pick_up_date))
                                                        <li>
                                                            <p><span>{{__('Pick up
                                                                    Date')}}:</span>{{convertUtf8($data->pick_up_date)}}
                                                            </p>
                                                        </li>
                                                        @endif
                                                        @if (!empty($data->pick_up_time))
                                                        <li>
                                                            <p><span>{{__('Pick up
                                                                    Time')}}:</span>{{convertUtf8($data->pick_up_time)}}
                                                            </p>
                                                        </li>
                                                        @endif
                                                        @endif
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="table-responsive product-list">
                                        <h5>{{__('Ordered Products')}}</h5>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>{{__('Product')}}</th>
                                                    <th>{{__('Product Title')}}</th>
                                                    <th>{{__('Price')}}</th>
                                                    <th>{{__('Quantity')}}</th>
                                                    <th>{{__('Total')}}</th>
                                                    <th>{{__('Action')}}</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                @foreach ($data->orderitems as $key => $item)
                                                @if ($item->status === 'approved')
                                                @php
                                                $product = App\Models\Product::findOrFail($item->product_id);
                                                @endphp
                                                <tr>
                                                    <td>
                                                        <img src="{{asset('assets/front/img/product/featured/'.$item->image)}}"
                                                            alt="image" width="100">
                                                    </td>
                                                    <td>
                                                        <a
                                                            href="{{route('front.product.details',[$product->slug,$product->id])}}">{{convertUtf8($item->title)}}</a>
                                                        <br>
                                                        @php
                                                        $variations = json_decode($item->variations, true);
                                                        @endphp
                                                        @if (!empty($variations))
                                                        <strong class="mr-1">{{__("Variation")}}:</strong>
                                                        @foreach ($variations as $vKey => $variation)
                                                        <span class="text-capitalize">{{str_replace("_","
                                                            ",$vKey)}}:</span> {{$variation["name"]}}
                                                        @if (!$loop->last)
                                                        ,
                                                        @endif
                                                        @endforeach
                                                        <br>
                                                        @endif
                                                        @php
                                                        $addons = json_decode($item->addons, true);
                                                        @endphp
                                                        @if (!empty($addons))
                                                        <strong class="mr-1">{{__("Add On's")}}:</strong>

                                                        @foreach ($addons as $addon)
                                                        {{$addon["name"]}}
                                                        @if (!$loop->last)
                                                        ,
                                                        @endif
                                                        @endforeach
                                                        @endif
                                                    </td>
                                                    <td>
                                                        <strong class="mr-1">{{__("Product")}}:</strong>
                                                        {{$data->currency_code_position == 'left' ? $data->currency_code
                                                        : ''}}
                                                        <span>{{(float)$item->product_price}}</span>
                                                        {{$data->currency_code_position == 'right' ?
                                                        $data->currency_code : ''}}
                                                        <br>
                                                        @if (is_array($variations))
                                                        <strong class="mr-1">{{__("Variation")}}: </strong>
                                                        {{$data->currency_code_position == 'left' ? $data->currency_code
                                                        : ''}}
                                                        <span>{{(float)$item->variations_price}}</span>
                                                        {{$data->currency_code_position == 'right' ?
                                                        $data->currency_code : ''}}
                                                        <br>
                                                        @endif
                                                        @if (is_array($addons))
                                                        <strong class="mr-1">{{__("Add On's")}}: </strong>
                                                        {{$data->currency_code_position == 'left' ? $data->currency_code
                                                        : ''}}
                                                        <span>{{(float)$item->addons_price}}</span>
                                                        {{$data->currency_code_position == 'right' ?
                                                        $data->currency_code : ''}}
                                                        @endif
                                                    </td>
                                                    <td>{{$item->qty}}</td>
                                                    <td><span>{{$data->currency_code_position == 'left' ?
                                                            $data->currency_code : ''}}</span> {{$item->total}}
                                                        <span>{{$data->currency_code_position == 'right' ?
                                                            $data->currency_code : ''}}</span>
                                                    </td>
                                                        @php
                                                            $now = \Carbon\Carbon::now();
                                                            $date = ($data->serving_method === 'pick_up') ? $data->pick_up_date : $data->delivery_date;
                                                            $serving_date = \Carbon\Carbon::parse($date)->endOfDay();
                                                            $diffInDays = $now->diffInDays($serving_date, false);
                                                        @endphp
<td>
    <form action="{{route('user-order-item-cancel', $item->id)}}" method="post" class="cancelform">
        @csrf
        <button type="submit" class="btn btn-danger cancelbtn" {{($data->order_status === 'cancelled' || $data->completed === 'yes' || $now->gte($serving_date) || $diffInDays <= 1) ? 'disabled' : ''}}>{{__('Cancel')}}</button>
    </form>
</td>

                                                </tr>
                                                @endif
                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="edit-account-info">
                                    <a href="{{ route('user-orders', $data->id) }}"
                                        class="btn btn-primary">{{__('Back')}}</a>

                                    @php
                                    use Carbon\Carbon;
                                    $now = Carbon::now();
                                    $date = ($data->serving_method === 'pick_up') ? $data->pick_up_date :
                                    $data->delivery_date;
                                    $serving_date = Carbon::parse($date)->endOfDay();
                                    $diffInDays = $now->diffInDays($serving_date, false);
                                    //echo $diffInDays;
                                    @endphp

                                    <!-- Check if the order has already been cancelled -->
                                    @if ($data->order_status === 'cancelled')
                                    <button type="button" class="btn btn-danger" disabled>
                                        {{__('Cancel Order')}}
                                    </button>
                                    <small class="text-info">{{__('This order has already been cancelled.')}}</small>

                                    <!-- Check if the order has already been completed -->
                                    @elseif ($data->completed === 'yes')
                                    <button type="button" class="btn btn-danger" disabled>
                                        {{__('Cancel Order')}}
                                    </button>
                                    <small class="text-info">{{__('This order has already been completed.')}}</small>

                                    <!-- Check if the delivery or pick-up date is less than two days away -->
                                    @elseif ($now->gte($serving_date))
                                    <button type="button" class="btn btn-danger" disabled>
                                        {{__('Cancel Order')}}
                                    </button>
                                    <small class="text-danger">{{__('Orders with delivery or pickup dates already past
                                        cannot be cancelled.')}}</small>

                                    <!-- Check if the delivery or pick-up date is already past -->
                                    @elseif ($diffInDays <= 1) <button type="button" class="btn btn-danger" disabled>
                                        {{__('Cancel Order')}}
                                        </button>
                                        <small class="text-danger">{{__('Orders with delivery or pickup dates less than
                                            2 days away cannot be cancelled.')}}</small>

                                        <!-- Show the cancellation button -->
                                        @else
                                        <button type="button" class="btn btn-danger" data-toggle="modal"
                                            data-target="#cancelOrderModal">
                                            {{__('Cancel Order')}}
                                        </button>
                                        @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Cancellation Modal -->
<div class="modal fade" id="cancelOrderModal" tabindex="-1" role="dialog" aria-labelledby="cancelOrderModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="cancelOrderModalLabel">{{__('Cancel Order')}}</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="cancelOrderForm" action="{{ route('user-order-cancel', $data->id) }}" method="POST">
                @csrf
                <div class="modal-body">
                    <div class="form-group">
                        <label for="cancellation_reason">{{__('Reason for cancellation')}}</label>
                        <textarea class="form-control" id="cancellation_reason" name="cancellation_reason" rows="3"
                            required></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">{{__('Close')}}</button>
                    <button type="submit" class="btn btn-danger">{{__('Confirm Cancellation')}}</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
$(document).ready(function() {
    $('.cancelbtn').on('click', function(e) {
        e.preventDefault();

        // You can add a loader here if needed
        // $(".request-loader").addClass("show");

        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            buttons: {
                confirm: {
                    text: 'Yes, cancel it!',
                    className: 'btn btn-success'
                },
                cancel: {
                    visible: true,
                    className: 'btn btn-danger'
                }
            }
        }).then((Cancel) => {
            if (Cancel) {
                $(this).closest(".cancelform").trigger('submit');
            } else {
                swal.close();
                // Remove the loader if added earlier
                // $(".request-loader").removeClass("show");
            }
        });
    });
});
</script>

@endsection

