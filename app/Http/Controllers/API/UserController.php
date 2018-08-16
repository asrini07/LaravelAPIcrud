<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class UserController extends Controller
{
    //
    public $successStatus=200;

    //public function login(){

        //if(Auth::attempt(['email' => request('email'), 'password' => request('password')] )){
            //$user=Auth::user();
            //$success["token"]=$user->createtoken('nApp')->accessToken;
          //  return response()->json(['success'=>$success], $this->successStatus);
        //}else{
          //  return response()->json(['error'=>'Unauthorised'],401);
        //}
    //}
    
    public function login(Request $request, $user){
        // implement your user role retrieval logic, for example retrieve from `roles` database table
        $role = $user->checkRole();
        dd($role);
        // grant scopes based on the role that we get previously
        if ($role == 'admin') {
            $request->request->add([
                'scope' => 'admin' // grant manage order scope for user with admin role
            ]);
        }elseif($role=='user'){
            $request->request->add([
                'scope' => 'user' // read-only order scope for other user role
            ]);
        }else {
            $request->request->add([
                'scope' => 'mahasiswa' // read-only order scope for other user role
            ]);
        }

        // forward the request to the oauth token request endpoint
        $tokenRequest = Request::create(
            '/oauth/token',
            'post'
        );
        return Route::dispatch($tokenRequest);
    }
    public function register(Request $request){
        $validator= Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required|email',
            'password'=> 'required',
            'c_password'=>'required|same:password',
        ]);

        if($validator->fails()){
            return response()->json(['error'=>$validator->errors()], 401);
        }

        $input=$request->all();
        $input['password']=bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] = $user->createToken('nApp')->accessToken;
        $success['name'] = $user->name;

        return response()->json(['success'=>$success], $this->successStatus);

    }
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        return response()->json([
            'message' => 'Successfully logged out',
            'success'=>$user
        ] ,$this->successStatus);
    }
  
    public function details(){
        $user=Auth::user();
        return response()->json(['success'=>$user], $this->successStatus);
    }
}
