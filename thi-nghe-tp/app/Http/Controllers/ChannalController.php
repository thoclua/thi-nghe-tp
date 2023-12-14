<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\DTO\HttpResponseData;

use Illuminate\Support\Facades\DB;

class ChannalController extends Controller
{
    public function GetAllChannal(Request $request){
        $data = $request->json()->all();
        $result = DB::select('call usp_Channal_GetAll');
        if($result){
            $response = new HttpResponseData(200,"Thanh Cong",$result);
            return response()->json();

        }else{
            $response = new HttpResponseData(400,"That Bai",$result);
            return response()->json($response,400);
        }

    }
}
