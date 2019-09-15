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

/*Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');*/

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/

Route::group(['middleware' => ['web']], function () {
	// Authentication Routes

	// Route::get('auth/login', ['as' => 'login', 'uses' => 'Auth\AuthController@getLogin']);
	Route::get('auth/login', 'Auth\AuthController@getLogin')->name('login');

	Route::post('auth/login', 'Auth\AuthController@postLogin');
	// Route::get('auth/logout', ['as' => 'logout', 'uses' => 'Auth\AuthController@getLogout']);
	Route::get('auth/logout', 'Auth\AuthController@getLogout')->name('logout');

	// Registration Routes
	Route::get('auth/register', 'Auth\AuthController@getRegister');
	Route::post('auth/register', 'Auth\AuthController@postRegister');

	// Password Reset Routes
	Route::get('password/reset/{token?}', 'Auth\PasswordController@showResetForm');
	Route::post('password/email', 'Auth\PasswordController@sendResetLinkEmail');
	Route::post('password/reset', 'Auth\PasswordController@reset');

	// Categories
	Route::resource('categories', 'CategoryController');
	Route::resource('tags', 'TagController', ['except' => ['create']]);
	
	// Comments
	// Route::post('comments/{post_id}', ['uses' => 'CommentsController@store', 'as' => 'comments.store']);
	Route::post('comments/{post_id}', 'CommentsController@store')->name('comments.store');
	Route::get('comments/{id}/edit', 'CommentsController@edit')->name('comments.edit');
	Route::put('comments/{id}', 'CommentsController@update')->name('comments.update');
	Route::delete('comments/{id}', 'CommentsController@destroy')->name('comments.destroy');
	Route::get('comments/{id}/delete', 'CommentsController@delete')->name('comments.delete');


	// Route::get('blog/{slug}', ['as' => 'blog.single', 'uses' => 'BlogController@getSingle'])->where('slug', '[\w\d\-\_]+');
	Route::get('blog/{slug}', 'BlogController@getSingle')->where('slug', '[\w\d\-\_]+')->name('blog.single');
	Route::get('blog', 'BlogController@getIndex')->name('blog.index');
    Route::get('contact', 'PagesController@getContact');
    Route::post('contact', 'PagesController@postContact');
	Route::get('about', 'PagesController@getAbout');
	Route::get('/', 'PagesController@getIndex');
	Route::resource('posts', 'PostController');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
