<!doctype html>
<html lang="en">

<head>
    <title>@yield('template_title', "Faculty of science and technolofy") | Fatoni University</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="@yield('meta_desc', 'มหาวิทยาฟาฏอนี เป็น สถาบันอุดมศึกษาเอกชนอิสลามแห่งแรกใน ประเทศไทย โดยสถาปนาขึ้นเมื่อปี พ.ศ.2541 ซึ่งมีเจตนาอันแน่วแน่ในการจัดการเรียนการสอน การวิจัย การบริการวิชาการแก่สังคม และการทำนุบำรุงศิลปวัฒนธรรมที่สอดคล้องกับหลักการอิสลาม โดยทำการผลิตบัณฑิตให้มีความรอบรู้ ศรัทธา และปฏิบัติตามอัล-กุรอานและสุนนะฮฺ มีคุณธรรม จริยธรรมที่สูงส่ง มีวิสัยทัศน์ที่กว้างไกล และเป็นแบบอย่างที่ดีในการพัฒนาคุณภาพชีวิตทั้งของตนเอง ครอบครัว และสังคม โดยผ่านกระบวนการศึกษาค้นคว้าหาความรู้ในสาขาวิชาต่าง ๆ ที่วางอยู่บนหลักสมดุล ครอบคลุม ต่อเนื่อง')">
    <meta name="keywords" content="@yield('meta_keyword', 'คณะวิทยาศาสตร์,มหาวิทยาลัยฟาฏอนีมหมาวิทยาลัยอิสลามยะลา,Fatoni University')">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {{-- CSRF Token --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Thasadith:700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.10.2/css/all.css"
        integrity="sha384-rtJEYb85SiYWgfpCr0jn174XgJTn4rptSOQsMroFBPQSGLdOC5IbubP6lJ35qoM9" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<body>
    <!-- topbar -->
    <nav class="topnav d-lg-block d-md-block d-none navbar navbar-expand navbar-light bg-white">
        <div class="container">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <i class="fas fa-phone-alt"></i>
                    {{ setting('site.phone') ? setting('site.phone') : "xxx-xxxxxxx" }}
                </li>
                <li class="nav-item ml-auto">
                    <i class="fas fa-envelope"></i>
                    {{ setting('site.email') ? setting('site.email') : "xxxxx@ftu.ac.th" }}
                </li>
            </ul>
            <ul class="nav ml-auto navbar-nav">
                <li class="nav-item mr-3">
                    <i class="fas fa-info-circle"></i>
                    Faculty of science and technology
                </li>
            </ul>
        </div>
    </nav>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-md navbar-dark bg-custom">
        <div class="container">

            <a class="navbar-brand" href="{{ route('index') }}">
                <img src="{{ Voyager::image(setting('site.logo'))}}" class="logo" alt="">
                <div class="d-none d-sm-block">
                    FST
                </div>
            </a>
            <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse"
                data-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavId">
                <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('index') }}">หน้าแรก</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('std.blog') }}">กิจกรรมนักศึกษา</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('fst.blog') }}">ข่าวสาร</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('history') }}">ประวัติ</a>
                    </li>
                    @if ($courses)
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">หลักสูตร</a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownId">
                            @foreach ($courses as $course)
                                <a class="dropdown-item" href="{{ route('courses', $course->slug) }}">{{ $course->title }}</a>
                            @endforeach
                        </div>
                    </li>
                    @endif
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('contact.show') }}">ติดต่อ</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>


    {{-- ===================================index================================== --}}
    <!-- carousel -->
    @yield('template_carousel')

    <!-- student activities -->
    @yield('template_std_activities')

    <!-- philosophy -->
    @yield('philosophy')

    <!-- Faculty's news -->
    @yield('template_fst_news')

    {{-- ===================================another================================== --}}
    @yield('contents')

    <!-- Footer -->
    <footer class="footer text-white pt-5 pb-3 px-5">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h5>คณะวิทยาศาสตร์และเทคโนโลยี มหาวิทยาลัยฟาฏอนี</h5>
                    <ul class="footer-link">
                        <li>
                            <i class="fas fa-map-marker-alt"></i>
                            Address: {{ setting('site.address') ? setting('site.address') : "xxx xxx xxx xxx xxx" }}
                        </li>
                        <li>
                            <i class="fas fa-phone-alt"></i>
                            Phone: {{ setting('site.phone') ? setting('site.phone') : "xxx-xxxxxxx" }}
                        </li>
                        <li>
                            <i class="fas fa-envelope"></i>
                            Email: {{ setting('site.email') ? setting('site.email') : "xxxxx@ftu.ac.th" }}
                        </li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5>{{ setting('site.social_links_title') ?  setting('site.social_links_title') : "Social Links" }}</h5>
                    <ul class="footer-link">
                        @foreach ($social_links as $social_link)
                            <li><a href="{{ $social_link->url }}" target="_blank">
                                    <i class="fa fa-caret-right"></i>
                                    {{ $social_link->label }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5>{{ setting('site.other_links_title') ?  setting('site.other_links_title') : "Other Links" }}</h5>
                    <ul class="footer-link">
                        @foreach ($other_links as $other_link)
                            <li><a href="{{ $other_link->url }}" target="_blank">
                                    <i class="fa fa-caret-right"></i>
                                    {{ $other_link->label }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-md-3">
                    <h5>Newsletter</h5>
                    <p>consectetur adipiscing elit. Vestibulum vel sapien et lacus tempus varius. In finibus lorem vel.
                    </p>
                    <form action="" method="post">
                        <div class="form-group">
                            <input type="text" class="form-control" name="" id="" placeholder="Your name">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="" id="" placeholder="Your E-mail">
                        </div>
                        <button type="button" class="btn btn-fst">Subscribe Now!</button>
                    </form>
                </div>
                <div class="col-12 text-center coppyright">
                    <hr>
                    © 2018 All Right Reserved.
                </div>
            </div>
        </div>
    </footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>
