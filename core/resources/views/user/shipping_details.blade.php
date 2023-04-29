@extends('front.layout')

@section('content')

<!--   hero area start   -->
<section class="page-title-area d-flex align-items-center" style="background-image: url('{{asset('assets/front/img/' . $bs->breadcrumb)}}');background-size:cover;">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="page-title-item text-center">
                    <h2 class="title">{{__('Shipping Details')}}</h2>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active" aria-current="page">{{('Shipping Details')}}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</section>
<!--   hero area end    -->
    <!--====== CHECKOUT PART START ======-->
    <section class="user-dashbord">
        <div class="container">
            <div class="row">
                @include('user.inc.site_bar')
                <div class="col-lg-9">
                    <div class="row mb-5">
                        <div class="col-lg-12">
                            <div class="user-profile-details">
                                <div class="account-info">
                                    <div class="title">
                                        <h4>{{__('Edit Shipping Details')}}</h4>
                                    </div>
                                    <div class="edit-info-area">
                                        <form action="{{route('user-shipping-update')}}" method="POST" enctype="multipart/form-data" >
                                            @csrf

                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <input type="text" class="form_control" placeholder="{{__('First Name')}}" name="shpping_fname" value="{{$user->shpping_fname}}" value="{{Request::old('fname')}}">
                                                    @error('shpping_fname')
                                                        <p class="text-danger mb-2">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="col-lg-6">
                                                    <input type="text" class="form_control" placeholder="{{__('Last Name')}}" name="shpping_lname" value="{{$user->shpping_lname}}" value="{{Request::old('fname')}}">
                                                    @error('shpping_lname')
                                                        <p class="text-danger mb-2">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="col-lg-12">
                                                    <input type="email" class="form_control" placeholder="{{__('Email')}}" name="shpping_email"  value="{{$user->shpping_email}}">
                                                    @error('shpping_email')
                                                    <p class="text-danger mb-2">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="col-lg-6">

                                                    <div class="input-group mb-3">
                                                        <input type="hidden" name="shpping_country_code" value="{{$user->shipping_country_code}}">
                                                        <div class="input-group-prepend">
                                                            <button class="btn btn-outline-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{!empty($user->shipping_country_code) ? $user->shipping_country_code : 'Select'}}</button>
                                                            <div class="dropdown-menu country-codes">
                                                            @foreach ($ccodes as $ccode)
                                                                <a class="dropdown-item" data-shpping_country_code="{{$ccode['code']}}" href="#">{{$ccode['name']}} ({{$ccode['code']}})</a>
                                                            @endforeach
                                                            </div>
                                                        </div>
                                                        <input type="text" name="shpping_number" class="form-control" placeholder="{{__('Phone')}}" value="{{$user->shpping_number}}">
                                                    </div>
                                                    @error('shpping_country_code')
                                                    <p class="text-danger mb-2">{{ $message }}</p>
                                                    @enderror
                                                    @error('shpping_number')
                                                    <p class="text-danger mb-2">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                
                                                <div class="col-lg-6">
                                                    <select class="form-control" name="shpping_city">
                                                        <option value="">{{ __('Select a city') }}</option>
                                                        @foreach (json_decode(file_get_contents(base_path('/json/city.json')), true)['cities'] as $city)
                                                            <option value="{{ $city['value'] }}" {{ $user->shpping_city === $city['value'] ? 'selected' : '' }}>{{ $city['name'] }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('shipping_city')
                                                        <p class="text-danger mb-2">{{ $message }}</p>
                                                    @enderror
                                                </div>

                                                <div class="col-lg-6">
                                                    <select class="form-control" name="shpping_state">
                                                        <option value="">{{ __('Select a Province') }}</option>
                                                        @foreach (json_decode(file_get_contents(base_path('/json/province.json')), true)['provinces'] as $province)
                                                            <option value="{{ $province['value'] }}" {{ $user->shpping_state === $province['value'] ? 'selected' : '' }}>{{ $province['name'] }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('shpping_state')
                                                        <p class="text-danger mb-2">{{ $message }}</p>
                                                    @enderror
                                                </div>

                                                <div class="col-lg-6">
                                                    <select class="form-control" name="shpping_country">
                                                        <option value="">{{ __('Select a Barangay') }}</option>
                                                        @foreach (json_decode(file_get_contents(base_path('/json/barangay.json')), true)['barangays'] as $barangay)
                                                            <option value="{{ $barangay['value'] }}" {{ $user->shpping_country === $barangay['value'] ? 'selected' : '' }}>{{ $barangay['name'] }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('shpping_country')
                                                        <p class="text-danger mb-2">{{ $message }}</p>
                                                    @enderror
                                                </div>

                                                <div class="col-lg-12 mt-4">
                                                    <textarea name="shpping_address" class="form_control" placeholder="{{__('Landmark Address')}}">{{$user->shpping_address}}</textarea>
                                                    @error('shpping_address')
                                                    <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="form-button">
                                                        <button type="submit" class="btn form-btn">{{__('Submit')}}</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

@endsection

