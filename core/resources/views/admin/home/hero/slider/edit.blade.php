@extends('admin.layout')

@if(!empty($slider->language) && $slider->language->rtl == 1)
@section('styles')
<style>
    form input,
    form textarea,
    form select {
        direction: rtl;
    }
    .nicEdit-main {
        direction: rtl;
        text-align: right;
    }
</style>
@endsection
@endif

@section('content')
  <div class="page-header">
    <h4 class="page-title">Edit Slider</h4>
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
        <a href="#">Website Pages</a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#">Home Page</a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#">Hero Section</a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#">Edit Slider</a>
      </li>
    </ul>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <div class="card-title d-inline-block">Edit Slider</div>
          <a class="btn btn-info btn-sm float-right d-inline-block" href="{{route('admin.slider.index') . '?language=' . request()->input('language')}}">
            <span class="btn-label">
              <i class="fas fa-backward"></i>
            </span>
            Back
          </a>
        </div>
        <div class="card-body pt-5 pb-5">
          <div class="row">
            <div class="col-lg-6 offset-lg-3">

              <form id="ajaxForm" class="" action="{{route('admin.slider.update')}}" method="post">
                @csrf
                <input type="hidden" name="slider_id" value="{{$slider->id}}">
                <div class="row">
                  <div class="col-lg-12">
                    <div class="form-group">
                      <div class="col-12 mb-2">
                        <label for="image"><strong>Slider Image</strong></label>
                      </div>
                      <div class="col-md-12 showImage mb-3">
                        <img src="{{ $slider->image ? asset('assets/front/img/sliders/'.$slider->image) : asset('assets/admin/img/noimage.jpg')}}" alt="..." class="img-thumbnail">
                      </div>
                      <input type="file" name="main_image" id="image" class="form-control image">
                      <p id="errmain_image" class="mb-0 text-danger em"></p>
                    </div>
                  </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                          <label for="">Title *</label>
                          <input type="text" class="form-control" name="title" value="{{$slider->title}}" placeholder="Enter Title">
                          <p id="errtitle" class="text-danger mb-0 em"></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                          <label>Title Font Size *</label>
                          <input class="form-control ltr" name="title_font_size" value="{{$slider->title_font_size}}">
                          <p id="errtitle_font_size" class="mb-0 text-danger em"></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                          <label>Title Color Code *</label>
                          <input class="jscolor form-control ltr" name="title_color" value="{{$slider->title_color}}">
                          <p id="errtitle_color" class="mb-0 text-danger em"></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                          <label for="">Description *</label>
                          <input type="text" class="form-control" name="text" value="{{$slider->text}}" placeholder="Enter Text">
                          <p id="errtext" class="text-danger mb-0 em"></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label for="">Description Font Size *</label>
                            <input type="text" class="form-control ltr" name="text_font_size" value="{{$slider->text_font_size}}" placeholder="Enter Text">
                            <p id="errtext_font_size" class="text-danger mb-0 em"></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                          <label>Text Color *</label>
                          <input class="jscolor form-control ltr" name="text_color" value="{{$slider->text_color}}">
                          <p id="errtext_color" class="mb-0 text-danger em"></p>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                  <label for="">Serial Number *</label>
                  <input type="number" class="form-control ltr" name="serial_number" value="{{$slider->serial_number}}" placeholder="Enter Serial Number">
                  <p id="errserial_number" class="mb-0 text-danger em"></p>
                  <p class="text-warning"><small>The higher the serial number is, the later the slider will be shown.</small></p>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="card-footer">
          <div class="form">
            <div class="form-group from-show-notify row">
              <div class="col-12 text-center">
                <button type="submit" id="submitBtn" class="btn btn-success">Update</button>
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>

@endsection


