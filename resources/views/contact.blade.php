@extends('layouts.template')

{{-- @section('template_title') {{$page_data->title}} @endsection
@section('meta_desc') {{$page_data->meta_description}} @endsection
@section('meta_keyword') {{$page_data->meta_keywords}} @endsection --}}

@section('contents')
<div class="container my-5">
    <div class="row">
        <div class="col-md-12 text-center">
            <h1>Contact</h1>
            @if ($success = Session::get('success'))
                <div class="alert alert-success" role="alert">
                    <strong>{{$success}}</strong>
                </div>
            @endif
        </div>
        <div class="col-md-12">
            <hr style="height: 3px; border-top: 1px solid black;border-bottom: 1px solid black;">
            <div class="mapouter">
                <div class="gmap_canvas">
                    <iframe width="100%" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=fatoni%20university&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                    <style>
                        .mapouter{position:relative;text-align:right;height:500px;width:100%;}
                        .gmap_canvas {overflow:hidden;background:none!important;height:500px;width:100%;}
                    </style>
                </div>
            </div>
            <hr style="height: 3px; border-top: 1px solid black;border-bottom: 1px solid black;">
        </div>
        <div class="col-md-12">
            <form action="{{ route('contact.store') }}" method="post" class="row">
                @csrf
                <div class="col-md-12">
                    <div class="form-group">
                      <label for="">เรื่องที่ต้องการติดต่อ</label>
                      <input type="text" name="title" id="" class="form-control" placeholder="Title" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                      <label for="">อีเมลล์</label>
                      <input type="email" name="email" id="" class="form-control" placeholder="E-mail" required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                      <label for="">เบอร์โทรศัพท์</label>
                      <input type="text" name="tel" id="" class="form-control" placeholder="Tel" required>
                    </div>
                </div>
                <div class="col-md-12">
                   <div class="form-group">
                     <label for="">รายละเอียด</label>
                     <textarea class="form-control" name="content" id="" rows="5" placeholder="Detail" required></textarea>
                   </div>
                </div>
                <div class="col-md-12 text-center">
                    <button type="submit" class="btn btn-success">ส่งข้อมูล</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection
