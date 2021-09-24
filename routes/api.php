<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});



Route::get('applications', 'ApiController@getAll');
Route::get('applications/{id}', 'ApiController@get');
Route::post('applications/create', 'ApiController@create')->name('application_create');;
Route::put('applications/move/{id}', 'ApiController@move');
Route::put('applications/{id}', 'ApiController@update');
Route::delete('applications/{id}','ApiController@delete');