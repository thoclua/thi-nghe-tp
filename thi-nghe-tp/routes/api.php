<?php

use App\Http\Controllers\ChannalController;
use App\Http\Controllers\LoginController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EventController;
use App\Http\Controllers\RoomController;
use App\Http\Controllers\SessionController;
use App\Http\Controllers\TicketsController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/manager/admin', [LoginController::class, 'doLogin']);
Route::post('/manager/admin/update', [LoginController::class, 'updateUser']);
Route::post('/admin/getall/event', [EventController::class, 'GetAll']);

Route::post('/admin/delete/event', [EventController::class, 'Deleteevent']);
Route::post('/admin/ticket/GetAll',[TicketsController::class,'GetAllTicket']);
Route::post('/admin/ticket/CreateOrUpate', [TicketsController::class,'CreateOrUpdateTicket']);
Route::post('/admin/ticket/Delete',[TicketsController::class,'Delete']);
Route::post('admin/session/GetAll',[SessionController::class.'GetAllsesion']);
Route::post('admin/session/CreateOrUpdate' , [SessionController::class,'CreateOrUpdateSessions']);
Route::post('admin/session/Delete',[SessionController::class.'DeleteSessions']);
Route::post('admin/room/GetAll',[RoomController::class,'GetAllRoom']);
Route::post('admin/room/CreateOrUpdate',[RoomController::class,'CreateOrUpdateRoom']);
Route::post('admin/room/Delete',[RoomController::class,'DeleteRoom']);





//Route nghiep vu

Route::post('/manager/event/get-by-organizer-id', [EventController::class, 'GetEventByOrganizer']);
Route::post('/manager/event/get-detail-by-event-id', [EventController::class, 'GetEventDetailByEventId']);
Route::post('/manager/ticket/get-by-event-id',[TicketsController::class,'GetAllTicketByEventId']);
Route::post('/manager/sesions/get-by-event-id',[SessionController::class,'GetSessionByEventId']);
Route::post('/manager/rooms/get-by-event-id',[RoomController::class,'GetRoomByID']);
Route::post('/manager/rooms/get-room-by-event-id',[RoomController::class,'GetRoomByEventId']);
Route::post('/manager/event/create-or-update', [EventController::class, 'CreateOrUpdateEvent']);
Route::post('/manager/room/get-romcapacity-by-eventid', [RoomController::class, 'GetcapacityRoomByEventId']);
Route::post('/manager/channal/getall', [ChannalController::class, 'GetAllChannal']);





