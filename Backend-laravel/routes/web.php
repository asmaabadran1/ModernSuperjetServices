<?php

use Illuminate\Support\Facades\Route;
use App\Http\controllers\LaravelCrud;
use App\Http\controllers\LaravelForm;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('crud',[LaravelCrud::class,'index']);
Route::post('add',[LaravelCrud::class,'add']);
Route::get('form',[LaravelForm::class,'form']);
Route::post('add',[LaravelForm::class,'add']);






