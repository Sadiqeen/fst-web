<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use TCG\Voyager\Models\Page;
use App\Course;
use App\Contact;

class PageController extends Controller
{
    public function history()
    {
        $page_data = Page::where('slug', 'history')->first();
        return view('page', ['page_data' => $page_data]);
    }

    public function courses(Request $request)
    {
        $page_data = Course::where('slug', $request->slug)->first();
        return view('page', ['page_data' => $page_data]);
    }

    public function contact_show()
    {
        return view('contact');
    }

    public function contact_store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:250',
            'email' => 'required|max:250',
            'tel' => 'required|max:250',
            'content' => 'required',
        ]);

        $contact = new Contact;
        $contact->title = $request->title;
        $contact->email = $request->email;
        $contact->tel = $request->tel;
        $contact->content = $request->content;
        $contact->save();

        return redirect()->route('contact.show')->with('success','ส่งข้อมูลสำเร็จ กรุณารอการตอบกลับในไม่ช้านี้');
    }
}
