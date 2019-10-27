<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use App\SocialLink;
use App\OtherLink;
use Illuminate\Support\Facades\View;
use App\Course;
use TCG\Voyager\Models\Page;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);

        $social_links = SocialLink::limit(6)->get();
        $other_links = OtherLink::limit(6)->get();
        $courses = Course::select('title','slug')->where('status', 'ACTIVE')->get();
        View::share('social_links', $social_links);
        View::share('other_links', $other_links);
        View::share('courses', $courses);
    }
}
