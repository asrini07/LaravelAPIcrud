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

Route::post('validasi', 'API\UserController@validasi');

Route::group(['middleware' => 'auth:api'], function(){
    Route::post('details', 'API\UserController@details');
    
    //Route::resource('apimahasiswa', 'API\MahasiswaController');
});
Route::get('/register/activate/{code}', [
    'as' => 'activate', 'uses' => 'API\UserController@activate'
    ]);
//intinya itu klo tokenya gak sesuai dia gak akan di kasih akses untuk halaman tersebut,
//cuma ini message errornya blm bener klo token gak sesuai scopenya
// bntr ak cek documentasi lg, kyaknya ada yg kelewat
//yg kita aja sih scope token,
/// d coba2 aja antara scope dan scopes
// klo ga salah itu scope = sifatnya OR
// scopes == AND
Route::get('apimahasiswa/view', 'API\MahasiswaController@index')
    ->middleware(['auth:api', 'scope:user,admin']);
Route::get('apimahasiswa/view/{id}', 'API\MahasiswaController@show')
    ->middleware(['auth:api', 'scope:user,admin']);
Route::post('apimahasiswa','API\MahasiswaController@store')
   ->middleware(['auth:api', 'scope:admin']);
Route::post('apimahasiswa/{id}','API\MahasiswaController@update')
    ->middleware(['auth:api', 'scope:admin']);
Route::delete('apimahasiswa/{id}','API\MahasiswaController@destroy')
    ->middleware(['auth:api', 'scope:admin']);

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('apiartikel/view', 'API\ArtikelController@index')
    ->middleware(['auth:api', 'scope:user,admin']);
Route::get('apiartikel/view/{id}', 'API\ArtikelController@show')
    ->middleware(['auth:api', 'scope:user,admin']);
Route::post('apiartikel','API\ArtikelController@store')
   ->middleware(['auth:api', 'scope:admin']);
Route::post('apiartikel/{id}','API\ArtikelController@update')
    ->middleware(['auth:api', 'scope:admin']);
Route::delete('apiartikel/{id}','API\ArtikelController@destroy')
    ->middleware(['auth:api', 'scope:admin']);

Route::get('apikategori/view', 'API\KategoriController@index')
    ->middleware(['auth:api', 'scope:user,admin']);
Route::get('apikategori/view/{id}', 'API\KategoriController@show')
    ->middleware(['auth:api', 'scope:user,admin']);
Route::post('apikategori','API\KategoriController@store')
   ->middleware(['auth:api', 'scope:admin']);
Route::post('apikategori/{id}','API\KategoriController@update')
    ->middleware(['auth:api', 'scope:admin']);
Route::delete('apikategori/{id}','API\KategoriController@destroy')
    ->middleware(['auth:api', 'scope:admin']);

Route::get('apiread_artikel/view', 'API\KategoriPostController@read_artikel')
    ->middleware(['auth:api', 'scope:user,admin']);
Route::get('apiread_artikel/view/{id}', 'API\KategoriPostController@read_artikel_detail')
    ->middleware(['auth:api', 'scope:user,admin']);
Route::post('apicreate_artikel','API\KategoriPostController@create_artikel')
    ->middleware(['auth:api', 'scope:admin']);
Route::post('apiupdate_artikel/{id}','API\KategoriPostController@update_artikel')
    ->middleware(['auth:api', 'scope:admin']);

Route::get('apiread_kategoripost/view/{id}', 'API\KategoriPostController@read_kategoripost')
    ->middleware(['auth:api', 'scope:user,admin']);
Route::post('apicreate_kategori_post','API\KategoriPostController@create_kategori_post')
    ->middleware(['auth:api', 'scope:admin']);
Route::delete('apidelete_kategori_post/{id}/{id_kategori}','API\KategoriPostController@delete_kategori_post')
    ->middleware(['auth:api', 'scope:admin']);

//Route::post('apimahasiswa/{id}','API\MahasiswaController@update');
