@extends('front.layout')

@section('content')
    <!--====== PAGE TITLE PART START ======-->

    <section class="page-title-area d-flex align-items-center lazy" data-bg="{{asset('assets/front/img/'.$bs->breadcrumb)}}">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-item text-center">
                    <h2 class="title">{{convertUtf8($bs->menu_title)}}</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="{{route('front.index')}}"><i class="flaticon-home"></i>{{__('Home')}}</a></li>
                                <li class="breadcrumb-item active" aria-current="page">{{convertUtf8($bs->menu_title)}}</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--====== PAGE TITLE PART ENDS ======-->

    <!--====== FOOD MENU PART START ======-->

    @if ($be->menu_version == 1)
        <section class="food-menu-area food-menu-2-area food-menu-3-area pt-90">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="section-title text-center">
                            <span>{{convertUtf8($be->menu_section_title)}}
                                <img class="lazy" data-src="{{asset('assets/front/img/title-icon.png')}}" alt=""></span>
                            <h3 class="title">{{convertUtf8($be->menu_section_subtitle)}}</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="tabs-btn pb-20">
                            <ul class="nav nav-pills d-flex justify-content-center" id="pills-tab" role="tablist">
                                @foreach ($categories as $keys => $category)
                                <li class="nav-item">
                                    <a class="nav-link {{$keys == 0 ? 'active' : ''}}" id="{{convertUtf8($category->slug)}}-tab" data-toggle="pill" href="#{{convertUtf8($category->slug)}}" role="tab" aria-controls="{{convertUtf8($category->slug)}}" aria-selected="true">
                                        @if (!empty($category->image))
                                            <img class="lazy wow fadeIn" data-src="{{asset('assets/front/img/category/'.$category->image)}}" alt="menu" data-wow-delay=".5s">
                                        @endif
                                        <p @if(empty($category->image)) style="padding-top: 0px;" @endif>{{convertUtf8($category->name)}} ({{$category->products->count()}})</p>
                                    </a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="tab-content" id="pills-tabContent">
                            @foreach ($categories as $key => $category)
                            <div class="tab-pane fade {{$key == 0 ? 'show active' : ''}}"  id="{{convertUtf8($category->slug)}}" role="tabpanel" aria-labelledby="{{convertUtf8($category->slug)}}-tab">
                                <div class="button-group filters-button-group">
                                    <button class="button is-checked" data-filter="*" @if ($category->subcategories()->count() == 0) style="display: none;" @endif>{{__('All')}}</button>
                                    @foreach ($category->subcategories as $subcat)
                                        <button class="button" data-filter=".sub{{$subcat->id}}">{{$subcat->name}}</button>
                                    @endforeach
                                </div>

                                <div class="row justify-content-center">

                                    {{-- Loader --}}
                                    <div class="food-items-loader">
                                        <img src="{{ asset('assets/admin/img/loader.gif') }}" alt="">
                                    </div>
                                    {{-- Loader --}}

                                    @if($category->products()->where('status', 1)->count() > 0)
                                    @foreach ($category->products()->where('status', 1)->get() as $product)
                                    <div class="col-lg-6">
                                        <div class="food-menu-items">

                                            <div class="single-menu-item mt-30 sub{{$product->subcategory_id}}">
                                                <div class="item-details">
                                                    <div class="menu-thumb">
                                                        <img class="lazy wow fadeIn" data-src="{{asset('assets/front/img/product/featured/'.$product->feature_image)}}" alt="menu" data-wow-delay=".5s">
                                                        <div class="thumb-overlay">
                                                            <a href="{{route('front.product.details',[$product->slug,$product->id])}}"><i class="flaticon-add"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="menu-content ml-30">
                                                        <a class="title" href="{{route('front.product.details',[$product->slug,$product->id])}}">{{convertUtf8($product->title)}}</a>
                                                        <p>{{convertUtf8(strlen($product->summary)) > 70 ? substr(convertUtf8($product->summary), 0, 70) . '...' : convertUtf8($product->summary)}} </p>
                                                    </div>
                                                </div>
                                                <div class="menu-price-btn">
                                                    <a class="cart-link d-md-none d-block btn mobile"
                                                        data-product="{{ $product }}"
                                                        data-href="{{ route('add.cart', $product->id) }}">+</a>
                                                    <a class="cart-link d-none d-md-block"
                                                        data-product="{{ $product }}"
                                                        data-href="{{ route('add.cart', $product->id) }}">{{ __('+') }}</a>
                                                    <span>{{$be->base_currency_symbol_position == 'left' ? $be->base_currency_symbol : ''}}{{number_format(convertUtf8($product->current_price), 0, '.', ',')}}{{$be->base_currency_symbol_position == 'right' ? $be->base_currency_symbol : ''}}
                                                    </span>
                                                    @if(convertUtf8($product->previous_price))
                                                    <del>{{$be->base_currency_symbol_position == 'left' ? $be->base_currency_symbol : ''}}{{number_format(convertUtf8($product->previous_price), 0, '.', ',')}}{{$be->base_currency_symbol_position == 'right' ? $be->base_currency_symbol : ''}}</del>
                                                    @endif
                                                </div>
                                                @if ($product->is_special == 1)
                                                    <div class="flag flag-2"><span>{{__('Special')}}</span></div>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                    @else
                                    <div class="col-lg-12 bg-light py-5 mt-4">
                                        <h4 class="text-center">{{__('Product Not Found')}}</h4>
                                    </div>
                                    @endif
                                </div>
                            </div>
                            @endforeach



                        </div>
                    </div>
                </div>
            </div>
        </section>
    @else
        @if (!empty($be->menu_section_img))
            <style>
                .food-menu-area .food-menu-items.menu-2::before {
                    background-image: url("{{asset('assets/front/img/' . $be->menu_section_img)}}");
                }
            </style>
        @endif
        <section class="food-menu-area pt-130">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <div class="section-title text-center">
                            <span>{{convertUtf8($be->menu_section_title)}} <img class="lazy" data-src="{{asset('assets/front/imt/title-icon.png')}}" alt=""></span>
                            <h3 class="title">{{convertUtf8($be->menu_section_subtitle)}}</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="tabs-btn pb-20">
                            <ul class="nav nav-pills d-flex justify-content-center" id="pills-tab" role="tablist">
                                @foreach ($categories as $keys => $category)
                                <li class="nav-item">
                                    <a class="nav-link {{$keys == 0 ? 'active' : ''}}" id="{{convertUtf8($category->slug)}}-tab" data-toggle="pill" href="#{{convertUtf8($category->slug)}}" role="tab" aria-controls="{{convertUtf8($category->slug)}}" aria-selected="true">
                                        @if (!empty($category->image))
                                            <img class="lazy wow fadeIn" data-src="{{asset('assets/front/img/category/'.$category->image)}}" alt="menu" data-wow-delay=".5s">
                                        @endif
                                        <p @if(empty($category->image)) style="padding-top: 0px;" @endif>{{convertUtf8($category->name)}} ({{$category->products->count()}})</p>
                                    </a>
                                </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="tab-content" id="pills-tabContent">
                            @foreach ($categories as $key => $category)
                            <div class="tab-pane fade {{$key == 0 ? 'show active' : ''}}" id="{{convertUtf8($category->slug)}}"  role="tabpanel" aria-labelledby="{{convertUtf8($category->slug)}}-tab">

                                <div class="button-group filters-button-group">
                                    <button class="button is-checked" data-filter="*" @if ($category->subcategories()->count() == 0) style="display:none;" @endif>{{__('All')}}</button>
                                    @foreach ($category->subcategories()->get() as $subcat)
                                        <button class="button" data-filter=".sub{{$subcat->id}}">{{$subcat->name}}</button>
                                    @endforeach
                                </div>
                                <div class="food-menu-items menu-2">

                                    {{-- Loader --}}
                                    <div class="food-items-loader">
                                        <img src="{{ asset('assets/admin/img/loader.gif') }}" alt="">
                                    </div>
                                    {{-- Loader --}}

                                    @if($category->products()->where('status', 1)->count() > 0)
                                    @foreach ($category->products()->where('status', 1)->get() as $product)
                                    <div class="single-menu-item mt-30 sub{{$product->subcategory_id}}">
                                        <div class="menu-thumb">
                                            <img class="lazy wow fadeIn" data-src="{{asset('assets/front/img/product/featured/'.$product->feature_image)}}" alt="menu" data-wow-delay=".5s">
                                            <div class="thumb-overlay">
                                                <a href="{{route('front.product.details',[$product->slug,$product->id])}}"><i class="flaticon-add"></i></a>
                                            </div>
                                        </div>
                                        <div class="menu-content ml-30">
                                            <a class="title" href="{{route('front.product.details',[$product->slug,$product->id])}}">{{convertUtf8($product->title)}}</a>
                                            <p>{{convertUtf8(strlen($product->summary)) > 180 ? convertUtf8(substr($product->summary, 0, 180)) . '...' : convertUtf8($product->summary)}} </p>
                                        </div>
                                        <div class="menu-price-btn menu-2">
                                            <span>{{$be->base_currency_symbol_position == 'left' ? $be->base_currency_symbol : ''}}{{convertUtf8($product->current_price)}}{{$be->base_currency_symbol_position == 'right' ? $be->base_currency_symbol : ''}}
                                            </span>
                                            @if(convertUtf8($product->previous_price))
                                                <del>  {{$be->base_currency_symbol_position == 'left' ? $be->base_currency_symbol : ''}}{{convertUtf8($product->previous_price)}}{{$be->base_currency_symbol_position == 'right' ? $be->base_currency_symbol : ''}}</del>
                                            @endif
                                            <a class="cart-link d-md-none d-block btn mobile"
                                            data-product="{{ $product }}"
                                            data-href="{{ route('add.cart', $product->id) }}">+</a>
                                            <a class="cart-link d-none d-md-block"
                                                data-product="{{ $product }}"
                                                data-href="{{ route('add.cart', $product->id) }}">{{ __('Add to Cart') }}</a>
                                        </div>
                                        @if ($product->is_special == 1)
                                            <div class="flag flag-2"><span>{{__('Special')}}</span></div>
                                        @endif
                                    </div>
                                    @endforeach
                                    @else
                                        <div class="col-lg-12 bg-light py-5 mt-4">
                                            <h4 class="text-center">{{__('Product Not Found')}}</h4>
                                        </div>
                                    @endif
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>

            </div>
        </section>
    @endif

    <!--====== FOOD MENU PART ENDS ======-->


    {{-- Variation Modal Starts --}}
    @includeIf('front.partials.variation-modal')
    {{-- Variation Modal Ends --}}
@endsection
