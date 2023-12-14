<?php

namespace App\Http\Controllers;

use App\DTO\HttpResponseData;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RoomController extends Controller
{
    public function GetAllRoom(Request $request){
        $data = $request->json()->all();
        $result = DB::select('call usp_Room_GetAll');
        if($result){
            $response = new HttpResponseData(200,"Thanh Cong",$result);
            return response()->json();

        }else{
            $response = new HttpResponseData(400,"That Bai",$result);
            return response()->json($response,400);
        }

    }
    public function GetRoomByID(Request $request){
        $data = $request->json()->all();
        $result = DB::select('call usp_Room_GetRooms_ByEventId (?)',[$data['event_id']]);
        if($result){
            $response = new HttpResponseData(200,"Thanh Cong",$result);
            return response()->json($response);

        }else{
            $response = new HttpResponseData(400,"That Bai",$result);
            return response()->json($response,400);
        }

    }

    public function GetRoomByEventId (Request $request){
        $data = $request->json()->all();
        $result = DB::select('call usp_Room_GetRoomByEventId (?)',[$data['event_id']]);
        if($result){
            $response = new HttpResponseData(200,"Thanh Cong",$result);
            return response()->json($response);

        }else{
            $response = new HttpResponseData(400,"That Bai",$result);
            return response()->json($response,400);
        }

    }
    public function GetcapacityRoomByEventId (Request $request){
        $data = $request->json()->all();
        $result = DB::select('call usp_Room_Getcapacity_ByEventId (?)',[$data['event_id']]);
        if($result){
            $response = new HttpResponseData(200,"Thanh Cong",$result);
            return response()->json($response);

        }else{
            $response = new HttpResponseData(400,"That Bai",$result);
            return response()->json($response,400);
        }

    }






    public function CreateOrUpdateRoom(Request $request){
        $data = $request->json()->all();
        $result = DB::select('call usp_Room_CreateOrUpdate (?,?,?,?)',[$data['id'],$data['channel_id'],$data['name'],$data['capacity']]);
        if($result){
            $response = new HttpResponseData(200,"Thanh Cong",$result);
            return response()->json();

        }else{
            $response = new HttpResponseData(400,"That Bai",$result);
            return response()->json($response,400);
        }

    }
    public function DeleteRoom(Request $request){
        $data = $request->json()->all();
        $result = DB::select('call usp_Room_Delete (?)' , [$data['id']]);
        if($result){
            $response = new HttpResponseData(200,"Thanh Cong",$result);
            return response()->json();

        }else{
            $response = new HttpResponseData(400,"That Bai",$result);
            return response()->json($response,400);
        }

    }

}
