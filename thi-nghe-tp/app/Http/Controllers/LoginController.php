<?php

namespace App\Http\Controllers;

use App\DTO\HttpResponseData;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use stdClass;


class LoginController extends Controller
{
    //
    public function doLogin(Request $request)
    {
        $data = $request->json()->all();
        $results = DB::select('call usp_User_doLogin(?,?)', [$data['email'], sha1($data['password'])]);
        if ($results) {
            $response = new HttpResponseData(200,"Thanh Cong", $results);
            return response()->json($response);
        } else {
            $response = new HttpResponseData(400,"That Bai", $results);
            return response()->json($response, 404);
        }
    }

    public function updateUser(Request $request)
    {
        $data = $request->json()->all();
        $query = DB::select('call updateUserpassword(?)', [sha1("123456")]);
        $response = new stdClass;
        $response->statusCode = 200;
        $response->message = "Thanh cong!";
        return response()->json($response);
    }
}
