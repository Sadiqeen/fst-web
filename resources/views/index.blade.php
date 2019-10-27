@extends('layouts.template')

@if ($carousels)
@section('template_carousel')
<div id="topCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        @for ($i = 0; $i < count($carousels); $i++)
            <li data-target="#topCarousel" data-slide-to="{{ $i }}" class="@if($i == 0) active @endif"></li>
        @endfor
    </ol>
    <div class="carousel-inner" role="listbox">
        @foreach ($carousels as $carousel)
            <div class="carousel-item @if($loop->first) active @endif">
                <img src="{{ Voyager::image($carousel->bg_image) }}" class="bg-carousel" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <div class="row">
                            <div class="col-lg-8 col-md-12">
                                <h2 class="carousel-title">{{ $carousel->title }}</h2>
                                <p class="carousel-desp d-lg-block d-sm-block d-none">
                                   {{ $carousel->description }}</p>
                                <a href="{{ $carousel->link ? $carousel->link : '#' }}" class="btn btn-fst text-uppercase">readmore</a>
                            </div>
                            <div class="col-md-4 d-lg-block d-none">
                                <img class="corousel-top" src="{{ Voyager::image($carousel->back_image) }}" alt="">
                                <img class="corousel-buttom" src="{{ Voyager::image($carousel->front_image) }}" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
    <a class="carousel-control-prev" href="#topCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#topCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
@endsection
@endif

@section('template_std_activities')
<div class="container my-3">
    <div class="row">
        <div class="col-12">
            <h2 class="student-activities-title">กิจกรรมนักศึกษา</h2>
            <a href="{{ route('std.blog') }}" class="btn btn-view-all student-activities-view-all d-none d-md-block">ดูทั้งหมด</a>
            <span class="student-activities-sub-title d-none  d-md-block d-lg-block">Student Activities</span>
        </div>
    </div>
    <div class="row mt-4">
        @foreach ($std_activities as $std_activity)
            <div class="col-md-4 mb-3">
                <a href="{{ route('std.blog.show', $std_activity->slug ) }}" class="text-decoration-none student-activities-text">
                    <div class="text-center">
                        <img src='{{ Voyager::image($std_activity->image) }}' class="home-thumnail-image card-hover" alt='' />
                        <div class="mt-3 d-block">
                            <a href="{{ route('std.blog.show', $std_activity->slug ) }}" class="h4 text-decoration-none student-activities-text">
                                {{ str_limit($std_activity->title, $limit = 40, $end = '...') }}</a><br>
                        </div>
                        <span class="mt-1 d-inline-block  student-activities-date">{{ $std_activity->created_at }}</span>
                        <hr class="student-activities-bt-line">
                    </div>
                </a>
            </div>
        @endforeach
        @if (count($std_activities) < 4)
            @for ($i = count($std_activities); $i < 3; $i++)
            <div class="col-md-4 mb-3">
                <div class="text-center">
                    <img src='https://placehold.it/500x500' class="home-thumnail-image card-hover" alt='' />
                    <div class="mt-3 d-block">
                        <a href="#" class="h4 text-decoration-none student-activities-text">
                            Upcoming...</a><br>
                    </div>
                    <span class="mt-1 d-inline-block  student-activities-date">xxxx-xx-xx xx:xx:xx</span>
                    <hr class="student-activities-bt-line">
                </div>
            </div>
            @endfor
        @endif
    </div>
@endsection

@section('template_fst_news')

<div class="row">
    <div class="col-12 my-3 text-center">
        <h2 class="news-title">ข่าวสารจากคณะ</h2>
        <span class="news-sub-title d-none  d-md-block d-lg-block">Faculty's news</span>
    </div>
    @foreach ($fst_news as $fst_new)
        <div class="col-md-3 mb-3">
            <a href="{{ route('fst.blog.show', $fst_new->slug ) }}" class="card card-hover text-decoration-none student-activities-text">
                <img class="card-img-top" height="250px" style="object-fit: cover;" src="{{ Voyager::image($fst_new->image) }}" alt="">
                <div class="card-body">
                    <h4 class="card-title">{{ str_limit($fst_new->title, $limit = 40, $end = '...') }}</h4>
                    <p class="card-text">{{ str_limit($fst_new->excerpt, $limit = 100, $end = '...') }}</p>
                </div>
            </a>
        </div>
    @endforeach
    @if (count($fst_news) < 4)
        @for ($i = count($fst_news); $i < 4; $i++)
            <div class="col-md-3 mb-3">
                <div class="card card-hover">
                    <img class="card-img-top" height="250px" style="object-fit: cover;" src="https://placehold.it/500x500" alt="">
                    <div class="card-body">
                        <h4 class="card-title">Upcoming...</h4>
                        <p class="card-text">Content will be added soon…</p>
                    </div>
                </div>
            </div>
        @endfor
    @endif
    <div class="col-12 text-center  mb-3">
        <a href="{{ route('fst.blog') }}" class="btn btn-view-all">ดูทั้งหมด</a>
    </div>
</div>
</div>
@endsection

@section('philosophy')
<div class="row">
        <div class="col-md-6 mb-3">
            <div class="card text-white card-quote-dark">
                <div class="card-body text-center d-flex card-quote">
                    <div class="my-auto w-100">
                        <h2>
                            วิชาการคู่คุณธรรม<br>
                            บูรณาการอิสลาม<br>
                            มาตรฐานสู่ความเป็นเลิศ
                        </h2>
                        <hr class="card-quote-line">
                        <span class="card-quote-philosophy">ปรัชญาคณะ</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card text-white card-quote-green">
                <div class="card-body text-center d-flex card-quote">
                    <div class="my-auto w-100">
                        <h2>
                            "และเราไม่ได้ส่งเจ้ามาเพื่ออื่นใด<br>
                            นอกจากเป็นความเมตตาเพื่อ<br>
                            ประชาชาติทั้งมวล"
                        </h2>
                        <span class="card-quote-sub">อัลอัมบิยาอฺ 107</span>
                        <hr class="card-quote-line">
                        <span class="card-quote-philosophy">ปรัชญามหาวิทยาลัย</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
