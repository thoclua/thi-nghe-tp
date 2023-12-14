<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\DTO\HttpResponseData;

class EventController extends Controller
{
    public function GetAll(Request $request){

        $data = $request->json()->all();
        $results = DB::select('call usp_Event_GetAll');
        if ($results) {
            $response = new HttpResponseData(200,"Thanh Cong", $results);
            return response()->json($response);
        } else {
            $response = new HttpResponseData(400,"That Bai", $results);
            return response()->json($response, 404);
        }
    }
    public function GetEventByOrganizer(Request $request){

        $data = $request->json()->all();
        $results = DB::select('call usp_Event_GetEventByOrganizer(?)', [$data['organizer_id']]);
        if ($results) {
            $response = new HttpResponseData(200,"Thanh Cong", $results);
            return response()->json($response);
        } else {
            $response = new HttpResponseData(400,"That Bai", $results);
            return response()->json($response, 404);
        }
    }
    public function GetEventDetailByEventId(Request $request){

        $data = $request->json()->all();
        $results = DB::select('call usp_Event_GetEventByEventId(?)', [$data['id']]);
        if ($results) {
            $response = new HttpResponseData(200,"Thanh Cong", $results);
            return response()->json($response);
        } else {
            $response = new HttpResponseData(400,"That Bai", $results);
            return response()->json($response, 404);
        }
    }
    public function CreateOrUpdateEvent(Request $request){
        $data = $request->json()->all();
        $results = DB::statement('call usp_Event_CreateOrUpdate(?,?,?,?,?)' , [$data['id'],$data['organizer_id'],$data['name'],$data['slug'],$data['date']]);
        if ($results) {
            $response = new HttpResponseData(200,"Thanh Cong", $results);
            return response()->json($response);
        } else {
            $response = new HttpResponseData(400,"That Bai", $results);
            return response()->json($response, 404);
        }
    }
    public function Deleteticket(Request $request)  {
        $data = $request->json()->all();
        $results = DB::statement('call usp_Event_Delete(?)' , [$data['id']]);
        if ($results) {
            $response = new HttpResponseData(200,"Thanh Cong", $results);
            return response()->json($response);
        } else {
            $response = new HttpResponseData(400,"That Bai", $results);
            return response()->json($response, 404);
        }
    }
}
