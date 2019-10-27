@extends('layouts.template')

@section('contents')
<div class="container my-5">
    <div class="row">
        <div class="col-12 my-3 text-center">
            <h2 class="news-title">ข่าวสารจากคณะ</h2>
            <span class="news-sub-title d-none  d-md-block d-lg-block">Faculty's news</span>
        </div>
        @foreach ($fst_news as $news)
            <div class="col-md-4 mb-3">
                <a class="card text-decoration-none student-activities-text card-hover" href="{{ route('fst.blog.show', $news->slug ) }}">
                    <img class="card-img-top" height="300px" style="object-fit: cover;" src="{{ Voyager::image($news->image) }}" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">{{ str_limit($news->title, $limit = 40, $end = '...') }}</h4>
                        <p class="card-text">{{ str_limit($news->excerpt, $limit = 80, $end = '...') }}</p>
                    </div>
                </a>
            </div>
        @endforeach
        @if (count($fst_news) < 12)
            @for ($i = count($fst_news); $i < 12; $i++)
            <div class="col-md-4 mb-3">
                <a class="card text-decoration-none student-activities-text card-hover" href="{{ route('fst.blog.show', $news->slug ) }}">
                    <img class="card-img-top" height="300px" style="object-fit: cover;"  src="https://placehold.it/500x500" alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title">Upcoming...</h4>
                        <p class="card-text">Content will be added soon…</p>
                    </div>
                </a>
            </div>
            @endfor
        @endif
    </div>
    <div class="row">
        <div class="mx-auto">
            {{ $fst_news->links() }}
        </div>
    </div>
</div>
@endsection
