<?php

use Illuminate\Http\Request;

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

//Route::post('login', 'API\UserController@login');
Route::group(['namespace' => 'Auth'], function () {
    Route::post('login', 'API\UserController@login');
});
Route::post('register', 'API\UserController@register');

Route::group(['middleware' => 'auth:api'], function(){
    Route::post('details', 'API\UserController@details');
    
    //Route::resource('apimahasiswa', 'API\MahasiswaController');
});
//intinya itu klo tokenya gak sesuai dia gak akan di kasih akses untuk halaman tersebut,
//cuma ini message errornya blm bener klo token gak sesuai scopenya
// bntr ak cek documentasi lg, kyaknya ada yg kelewat
//yg kita aja sih scope token,
/// d coba2 aja antara scope dan scopes
// klo ga salah itu scope = sifatnya OR
// scopes == AND
Route::get('apimahasiswa/view', 'API\MahasiswaController@index')
    ->middleware(['auth:api', 'scope:user,admin,mahasiswa']);
Route::get('apimahasiswa/view/{id}', 'API\MahasiswaController@show')
    ->middleware(['auth:api', 'role:user,admin']);
Route::post('apimahasiswa','API\MahasiswaController@store')
   ->middleware(['auth:api', 'role:admin']);
Route::post('apimahasiswa/{id}','API\MahasiswaController@update')
    ->middleware(['auth:api', 'role:admin']);
Route::delete('apimahasiswa/{id}','API\MahasiswaController@destroy')
    ->middleware(['auth:api', 'scopes:admin']);

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//Route::post('apimahasiswa/{id}','API\MahasiswaController@update');
