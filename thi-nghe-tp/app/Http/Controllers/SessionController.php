<?php

namespace App\Http\Controllers;

use App\DTO\HttpResponseData;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SessionController extends Controller
{
    public function GetAllsesion (Request $request){
        $data = $request->json()->all();
        $result = DB::select('call usp_Sessions_GetAll');
        if($result){
            $respose = new HttpResponseData(200,"Thanh Cong",$result);
            return response()->json();

        }else{
            $respose = new HttpResponseData(400,"That Bai",$result);
            return response()->json($respose , 400);
        }
    }
    public function GetSessionByEventId (Request $request){
        $data = $request->json()->all();
        $result = DB::select('call usp_Session_GetSessions_ByEventId(?)',[$data['event_id']]);

        if($result){
            // var_dump($result);
            $respose = new HttpResponseData(200,"Thanh Cong",$result);
            return response()->json($respose);

        }else{
            $respose = new HttpResponseData(400,"That Bai",$result);
            return response()->json($respose , 400);
        }
    }

    public function CreateOrUpdateSessions (Request $request){
        $data = $request->json()->all();
        $result = DB::statement('call usp_Sessions_CreateOrUpdate (?,?,?,?,?,?,?,?,?)' , [$data['id'],$data['room_id'],$data['title'],$data['description'],$data['speaker'],$data['start'],$data['end'],$data['type'],$data['cost']]);
      if($result){
         $respose = new HttpResponseData(200,"Thanh Cong",$result);
         return response()->json();
      }else{
        $respose = new HttpResponseData(400,"That Bai",$result);
        return response()->json($respose,400);
      }
    }
    public function DeleteSessions(Request $request){
        $data = $request->json()->all();
        $result = DB::statement('call usp_Sessions_Delete (?)', [$data['id']]);
     if($result){
        $response = new HttpResponseData(200,"Thanh Cong",$result);
        return response()->json();

     }else{
        $response = new HttpResponseData(400,"That Bai",$result);
        return response()->json($response,400);
     }
    }
}
