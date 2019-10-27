@extends('layouts.template')

@section('template_title') {{$page_data->title}} @endsection
@section('meta_desc') {{$page_data->meta_description}} @endsection
@section('meta_keyword') {{$page_data->meta_keywords}} @endsection

@section('contents')
@if ($page_data->image)
    <img src='{{ Voyager::image($page_data->image) }}' class="w-100" height="450px" style="object-fit: cover;" alt='' />
@endif
<div class="container my-5">
    <div class="row">
        <div class="col-md-12 text-center">
            <h1>{{ $page_data->title }}</h1>
        </div>
        <div class="col-md-12 text-center">
                <hr style="height: 3px; border-top: 1px solid black;border-bottom: 1px solid black;">
            </div>
        <div class="col-md-12">
            {!! $page_data->body !!}
        </div>
    </div>
</div>
@endsection
