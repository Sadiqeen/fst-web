<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;

class BlogController extends Controller
{
    public function std_home()
    {
        $std_activities = Post::where('category_id', 3)->paginate(12);
        return view('std_activities', [
            'std_activities'=> $std_activities,
            ]);
    }

    public function fst_home()
    {
        $fst_news = Post::where('category_id', 4)->paginate(12);
        return view('fst_news', [
            'fst_news'=> $fst_news,
            ]);
    }

    public function show(Request $request)
    {
        $blog = Post::where('slug', $request->slug)->first();
        return view('blog', ['blog' => $blog]);
    }
}
