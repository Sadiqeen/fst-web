@extends('layouts.template')

@section('contents')
<div class="container my-5">
    <div class="row">
        <div class="col-12 my-3 text-center">
            <h2 class="news-title">กิจกรรมนักศึกษา</h2>
            <span class="news-sub-title d-none  d-md-block d-lg-block">Student Activities</span>
        </div>
        @foreach ($std_activities as $std_activity)
            <div class="col-md-4 mb-3">
                <a href="{{ route('std.blog.show', $std_activity->slug ) }}" class="text-decoration-none student-activities-text">
                    <div class="text-center">
                        <img src='{{ Voyager::image($std_activity->image) }}' class="home-thumnail-image card-hover" alt='' />
                        <div class="mt-3 d-block">
                            <a href="{{ route('std.blog.show', $std_activity->slug ) }}" class="h4 text-decoration-none student-activities-text">
                                {{ str_limit($std_activity->title, $limit = 40, $end = '...') }}</a><br>
                        </div>
                        <p>{{ str_limit($std_activity->excerpt, $limit = 40, $end = '...') }}</p>
                        <span class="mt-1 d-inline-block  student-activities-date">{{ $std_activity->created_at }}</span>
                        <hr class="student-activities-bt-line">
                    </div>
                </a>
            </div>
        @endforeach
        @if (count($std_activities) < 12)
            @for ($i = count($std_activities); $i < 12; $i++)
            <div class="col-md-4 mb-3">
                <a href="#" class="text-decoration-none student-activities-text">
                    <div class="text-center">
                        <img src='https://placehold.it/500x500' class="home-thumnail-image card-hover" alt='' />
                        <div class="mt-3 d-block">
                            <a href="#" class="h4 text-decoration-none student-activities-text">
                                Upcoming...</a><br>
                        </div>
                        <span class="mt-1 d-inline-block  student-activities-date">xxxx-xx-xx xx:xx:xx</span>
                        <hr class="student-activities-bt-line">
                    </div>
                </a>
            </div>
            @endfor
        @endif
    </div>
    <div class="row">
        <div class="mx-auto">
            {{ $std_activities->links() }}
        </div>
    </div>
</div>
@endsection
