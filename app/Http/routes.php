<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
/*
Route::get('/', function () {
    return view('welcome');
});
*/


Route::get('/', 'WelcomeController@index');

Route::get('/contact', 'WelcomeController@contact_us');
Route::get('/adda', 'adminController@index');
Route::post('/admin-login-check', 'adminController@admin_login_check');
Route::get('/category-news/{id}', 'WelcomeController@category_news');


//Route::get('/test', 'PhotoController@test');

//Route::get('user/{id}', 'UserController@showProfile');


/*
*Super admin Rute
*/

Route::get('/dashboard', 'SuperAdminController@index');
Route::get('/logout', 'SuperAdminController@logout');
Route::get('/add-category', 'SuperAdminController@add_category');
Route::post('/save_category', 'SuperAdminController@save_category');
Route::get('/manage-category', 'SuperAdminController@manage_category');
Route::get('/publish-category/{id}', 'SuperAdminController@publish_category');
Route::get('/unpublish-category/{id}', 'SuperAdminController@unpublish_category');
Route::get('/delete-category/{id}', 'SuperAdminController@delete_category');
Route::get('/edit-category/{id}', 'SuperAdminController@edit_category');
Route::post('/update-category/', 'SuperAdminController@update_category');
Route::get('/add-news/', 'SuperAdminController@add_news');
Route::post('/save_news/', 'SuperAdminController@save_news');
Route::get('/manage-news', 'SuperAdminController@manage_news');
Route::get('/publish-news/{id}', 'SuperAdminController@publish_news');
Route::get('/unpublish-news/{id}', 'SuperAdminController@unpublish_news');
Route::get('/delete-news/{id}', 'SuperAdminController@delete_news');
Route::get('/edit-news/{id}', 'SuperAdminController@edit_news');




