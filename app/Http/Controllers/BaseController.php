<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SocialLink;
use App\OtherLink;

class BaseController extends Controller
{
    public function __construct()
    {
        $social_links = SocialLink::limit(6)->get();
        $other_links = OtherLink::limit(6)->get();

        // Sharing is caring
        View::share('social_links', $social_links);
    }
}
