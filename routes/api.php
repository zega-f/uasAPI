<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// directory controller
use App\Http\Controllers\userController;

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

Route::group(['middleware'=>'auth:api'],function(){
	Route::get('coba2',[userController::class,'index']);
});

// Login Route
Route::post('login', [userController::class,'login']);

// Register Route
Route::post('register',[userController::class,'register']);

/*
1. Route digroup dengan middleware auth agar route dibawah ini tidak dapat diakses apabila tidak memiliki token
2. token didapat apabila user telah melakukan login
3. apabila belum memiliki akun, user dapat register terlebih dahulu */
Route::group(['middleware' => 'auth:api'], function(){
    Route::get('detail', [userController::class,'details']);
    Route::get('class', [userController::class,'allClass']);
    Route::get('class/i', [userController::class,'classByID']);
    Route::get('class/n', [userController::class,'classByName']);
});