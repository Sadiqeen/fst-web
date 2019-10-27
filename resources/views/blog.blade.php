@extends('layouts.template')

@section('contents')
<img src='{{ Voyager::image($blog->image) }}' class="w-100" height="450px" style="object-fit: cover;" alt='' />
<div class="container my-5">
    <div class="row">
        <div class="col-md-12 text-center">
            <h1>{{ $blog->title }}</h1>
        </div>
        <div class="col-md-12 text-center">
                <hr style="height: 3px; border-top: 1px solid black;border-bottom: 1px solid black;">
            </div>
        <div class="col-md-12">
            {!! $blog->body !!}
        </div>
    </div>
</div>
@endsection
