<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::resource('/', 'HomeController')->only([
    'index', 'show'
]);
// activities blog
Route::get('student-activities', 'BlogController@std_home')->name('std.blog');
Route::get('student-activities/{slug?}', 'BlogController@show')->name('std.blog.show');
// news blog
Route::get('fst-news', 'BlogController@fst_home')->name('fst.blog');
Route::get('fst-news/{slug?}', 'BlogController@show')->name('fst.blog.show');
// history
Route::get('history-of-fst', 'PageController@history')->name('history');
// couse
Route::get('courses/{slug}', 'PageController@courses')->name('courses');
// contact
Route::get('contact','PageController@contact_show')->name('contact.show');
Route::post('contact','PageController@contact_store')->name('contact.store');
// admin
Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
