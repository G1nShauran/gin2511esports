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


Route::get('/login', 'UserController@getLogin');
Route::post('/login', 'UserController@postLogin');
Route::get('/logout', 'UserController@getLogout');



Route::get('/', 'FrontController@home');

Route::get('/lien-he', 'FrontController@contact');
Route::get('/ve-chung-toi', 'FrontController@about');


Route::get('/tim-kiem', 'FrontController@search');


Route::post('/gui-email-lien-he', 'FrontController@contactSendEmail');

Route::get('{slug}.html', 'FrontController@slugHtml');
Route::get('{slug}', 'FrontController@slug');



//admin
Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function(){
	//Wellcome to admin
	Route::get('/home', 'BackController@home');
	// Staff
	Route::group(['prefix' => 'staff'], function(){
		Route::get('profile', 'BackController@staff_profile');
		Route::post('profile', 'BackController@staff_profile_post');
		Route::get('list', 'BackController@staff_list');
		Route::get('add', 'BackController@staff_add');
		Route::post('add', 'BackController@staff_add_post');
		Route::get('edit/{id}', 'BackController@staff_edit');
		Route::post('edit/{id}', 'BackController@staff_edt_post');
		Route::get('delete/{id}', 'BackController@staff_delete');

		Route::post('filter', 'BackController@staff_filter');
	});

	//system management
	Route::get('/system', 'BackController@system');
	Route::post('/system', 'BackController@system_post');


	//page management
	Route::group(['prefix' => 'page'], function(){
		Route::get('list', 'BackController@page_list');
		Route::get('edit/{id}', 'BackController@page_edit');
		Route::post('edit/{id}', 'BackController@page_edt_post');

		Route::post('filter', 'BackController@page_filter');
	});

	//social management
	Route::group(['prefix' => 'social'], function(){
		Route::get('list', 'BackController@social_list');
		Route::get('edit/{id}', 'BackController@social_edit');
		Route::post('edit/{id}', 'BackController@social_edt_post');

		Route::post('filter', 'BackController@social_filter');
	});


	//newsletter management
	Route::group(['prefix' => 'newsletter'], function(){
		Route::get('list', 'BackController@newsletter_list');
		Route::get('edit/{id}', 'BackController@newsletter_edit');
		Route::post('edit/{id}', 'BackController@newsletter_edt_post');
		Route::get('delete/{id}', 'BackController@newsletter_delete');

		Route::post('filter', 'BackController@newsletter_filter');
	});

	//contact management
	Route::group(['prefix' => 'contact'], function(){
		Route::get('list', 'BackController@contact_list');
		Route::get('edit/{id}', 'BackController@contact_edit');
		Route::post('edit/{id}', 'BackController@contact_edt_post');
		Route::get('delete/{id}', 'BackController@contact_delete');

		Route::post('filter', 'BackController@contact_filter');
	});

	//news category
	Route::group(['prefix' => 'news_cat'], function(){
		Route::get('list', 'BackController@news_cat_list');
		Route::get('edit/{RowID}', 'BackController@news_cat_getedit');
		Route::post('edit/{RowID}', 'BackController@news_cat_edit');

		Route::post('edit/{id}', 'BackController@contact_edt_post');
		Route::get('delete/{id}', 'BackController@contact_delete');
		Route::post('filter', 'BackController@contact_filter');
	});

	//news 
	Route::group(['prefix' => 'news'], function(){
		Route::get('list', 'BackController@news_list');
		Route::get('add', 'BackController@news_getadd');
		Route::post('add', 'BackController@news_add');
		Route::get('edit/{RowID}', 'BackController@news_getedit');
		Route::post('edit/{RowID}', 'BackController@news_edit');
		Route::get('delete/{RowID}', 'BackController@news_delete');

		Route::post('edit/{id}', 'BackController@contact_edt_post');
		Route::post('filter', 'BackController@contact_filter');
	});

	//slider 
	Route::group(['prefix' => 'slider'], function(){
		Route::get('list', 'BackController@slider_list');
		Route::get('add', 'BackController@slider_getadd');
		Route::post('add', 'BackController@slider_add');
		Route::get('edit/{RowID}', 'BackController@slider_getedit');
		Route::post('edit/{RowID}', 'BackController@slider_edit');
		Route::get('delete/{RowID}', 'BackController@slider_delete');


	});

});