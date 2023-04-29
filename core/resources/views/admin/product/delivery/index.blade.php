@extends('admin.layout')

@section('content')
<div class="page-header">
    <h4 class="page-title">Delivery Management</h4>
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
            <a href="#">Order Management</a>
        </li>
        <li class="separator">
            <i class="flaticon-right-arrow"></i>
        </li>
        <li class="nav-item">
            <a href="#">Delivery Management</a>
        </li>
    </ul>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card-title d-inline-block">Delivery Riders</div>
                    </div>
                    <div class="col-lg-6 mt-2 mt-lg-0">
                        <a href="#" class="btn btn-primary float-lg-right float-left btn-sm" data-toggle="modal"
                            data-target="#createModal"><i class="fas fa-plus"></i> Add Rider</a>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-striped mt-3" id="basic-datatables">
                                <thead>
                                    <tr>
                                        <th scope="col">Name</th>
                                        <th scope="col">Phone Number</th>
                                        <th scope="col">Order Number</th>
                                        <th scope="col">Delivery Service</th>
                                        <th scope="col">Status</th>
                                        <th scope="col">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($deliveryRiders as $rider)
                                    <tr>
                                        <td>{{ $rider->name }}</td>
                                        <td>{{ $rider->phone_number }}</td>
                                        <td>
                                            @if ($rider->product_order_id)
                                            {{ $rider->productOrder->order_number ?? '' }}
                                            @endif
                                        </td>
                                        <td>{{ $rider->delivery_service }}</td>
                                        <td>
                                            <form id="statusForm{{$rider->id}}" class="d-inline-block"
                                                action="{{ route('admin.product.deliveryStatus') }}" method="post">
                                                @csrf
                                                <input type="hidden" name="rider_id" value="{{$rider->id}}">
                                                <select class="form-control form-control-sm
                                                @if ($rider->status == 'Pending' || $rider->status == 'pending')
                                                    bg-warning
                                                @else
                                                    bg-success
                                                @endif
                                            " name="status"
                                                    onchange="document.getElementById('statusForm{{$rider->id}}').submit();">
                                                    <option value="Pending" {{$rider->status == 'Pending' ||
                                                        $rider->status == 'pending' ? 'selected' : ''}}>Pending</option>
                                                    <option value="Completed" {{$rider->status != 'Pending' &&
                                                        $rider->status != 'pending' ? 'selected' : ''}}>Completed
                                                    </option>
                                                </select>
                                                <input type="hidden" name="rider_id" value="{{$rider->id}}">
                                            </form>
                                        </td>
                                        <td>
                                            <a class="btn btn-secondary btn-sm editbtn" href="#editModal" data-toggle="modal" data-id="{{ $rider->id }}" data-name="{{ $rider->name }}" data-phone_number="{{ $rider->phone_number }}" data-delivery_service="{{ $rider->delivery_service }}">
                                                <span class="btn-label">
                                                    <i class="fas fa-edit"></i>
                                                </span>
                                                Edit
                                            </a>
                                            <form class="deleteform d-inline-block"
                                                action="{{ route('admin.delivery_rider.delete') }}" method="post">
                                                @csrf
                                                <input type="hidden" name="rider_id" value="{{ $rider->id }}">
                                                <button type="submit" class="btn btn-danger btn-sm deletebtn">
                                                    <span class="btn-label">
                                                        <i class="fas fa-trash"></i>
                                                    </span>
                                                    Delete
                                                </button>
                                            </form>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

@includeIf('admin.product.delivery.create')

@includeIf('admin.product.delivery.edit')
@section('scripts')
<script>
    $(document).ready(function() {
        $('.editbtn').on('click', function() {
            var id = $(this).data('id');
            var name = $(this).data('name');
            var phone_number = $(this).data('phone_number');
            var delivery_service = $(this).data('delivery_service');

            $('#editForm #rider_id').val(id);
            $('#editForm #edit_name').val(name);
            $('#editForm #edit_phone_number').val(phone_number);
            $('#editForm #edit_delivery_service').val(delivery_service);
        });
    });
</script>
@endsection

@endsection