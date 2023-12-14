<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use App\DTO\HttpResponseData;

class TicketsController extends Controller
{
    public function GetAllTicket(Request $request)  {

        $data = $request->json()->all();
        $result = DB::select('call usp_Ticket_GetAll') ;
        if ($result) {
            $response = new HttpResponseData(200,"Thanh Cong", $result);
            return response()->json($response);
        } else {
            $response = new HttpResponseData(400,"That Bai", $result);
            return response()->json($response, 404);
        }
    }
    public function GetAllTicketByEventId(Request $request)  {

        $data = $request->json()->all();
        $result = DB::select('call usp_Ticket_GetTickets_ByEventId (?)',[$data['event_id']]) ;
        if ($result) {
            $response = new HttpResponseData(200,"Thanh Cong", $result);
            return response()->json($response);
        } else {
            $response = new HttpResponseData(400,"That Bai", $result);
            return response()->json($response, 404);
        }
    }
    public function CreateOrUpdateTicket(Request $request){
        $data = $request->json()->all();
        $result = DB::statement('call usp_CreatOrUpdate (?,?,?,?,?)' , [$data['id'],$data['event_id'],$data['name'],$data['cost'],$data['special_validity']]);
    if($result){
        $response = new HttpResponseData(200,"Thanh Cong",$result);
        return response()->json($response);

    }else{
        $response = new HttpResponseData(400,"That Bai",$result);
        return response()->json($response,400);

    }
    }

    public function Delete(Request $request){
       $data = $request->json()->all();
       $result = DB::statement('call usp_Ticket_Delete (?)' [$data['id']]);
       if($result){
          $response = new HttpResponseData(200,"Thanh Cong",$result);
          return response()->json();
       }
       else{
        $response = new HttpResponseData(400,"That Bai",$result);
        return response()->json($response,400);
       }
    }
}
