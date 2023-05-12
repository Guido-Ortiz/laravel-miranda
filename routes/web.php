<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/rooms', [RoomsController::class, 'index']);

Route::get('/roomdetails/{id}', [RoomsController::class, 'show']);

Route::get('/offers', [RoomsController::class, 'showOffers']);

Route::get("contact", [ContactController::class, "showContact"]);
Route::post("contact",[ContactController::class, "insertContact"]);

Route::post("/room-list", [RoomController::class, "getRoomsAvailable"]);