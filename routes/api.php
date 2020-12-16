<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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

Route::get('coba',[userController::class,'index']);

Route::post('login', [userController::class,'login']);
Route::post('register',[userController::class,'register']);

Route::group(['middleware' => 'auth:api'], function(){
    Route::get('detail', [userController::class,'details']);
    Route::get('class', [userController::class,'allClass']);
    Route::get('class/i', [userController::class,'classByID']);
    Route::get('class/n', [userController::class,'classByName']);
});