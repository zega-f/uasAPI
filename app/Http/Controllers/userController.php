<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Validator;
use DB;

class userController extends Controller
{
    public $successStatus = 200;

    public function login(Request $request){
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            $user = Auth::user();
            $success['token'] =  $user->createToken('nApp')->accessToken;
            return response()->json($success, $this->successStatus);
        }
        else{
            return response()->json(['error'=>'Unauthorised'],401);
        }
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] =  $user->createToken('nApp')->accessToken;
        $success['name'] =  $user->name;

        return response()->json(['success'=>$success], $this->successStatus);
    }
    
    public function details(Request $request)
    {
        $classDetail = DB::table('tblclass')
        ->where('classID',$request->classID)
        ->get();

        // $classUser = DB::table('tblclassuser')
        // ->join('tbluser','tblclassuser.userID','=','tbluser.userID')
        // ->select('tblclassuser.classID','tbluser.userID','tbluser.userName','tbluser.userEmail')
        // ->where('tblclassuser.classID',$request->classID)->get();
        return response()->json($classDetail, $this->successStatus);
    }

    public function allClass()
    {
    	$allClass = DB::table('tblclass')->get();
    	// return response()->json(['success' => $allClass], $this->successStatus);
        return response()->json($allClass, $this->successStatus);
    }

    public function classByID(Request $request)
    {
    	$thisClass = DB::table('tblclass')->where('id',$request->id)->first();
    	return response()->json(['success' => $thisClass], $this->successStatus);
    }

    public function classByName(Request $request)
    {
    	$thisClass = DB::table('tblclass')->where('className','like','%'.$request->name.'%')->get();
    	return response()->json(['success' => $thisClass], $this->successStatus);
    }
}
