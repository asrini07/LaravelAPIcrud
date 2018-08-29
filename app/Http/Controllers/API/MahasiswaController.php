<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Mmahasiswa; 
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Validator;


class MahasiswaController extends Controller
{
    //
    public $successStatus = 200;
//di controller mahasiswa ga ngubah apa2 mas cuma yang du controller usercontroller
//api dan appServiceProvider
//controlernya ini kan? iya kalau buat view CRUD data mahasiswa
//kalau buat login register nya di user controller mas, ia mahasiswa dlo aja
//ak pengin cek pasang middleware scopenya udh jalan blm. itu kok index gak masuk dd nya
//auto save gak ini mbak editorynya? ga mas    
//bukain databasenya dong mba
//insomia bwt login mana mba?
public function index()
    {
        $user=Auth::user();
        $data=Mmahasiswa::all();
        $mahasiswa = $user->mmahasiswas;
        return response()->json([
            'success' => true,
            'status' =>200,
            'data' => $data
        ]);
    }
    public function show($id){
        $data=Mmahasiswa::where('nim',$id)->get();
       // dd($data);
        if(!$data){
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'mahasiswa with nim ' . $id . ' not found'
            ], 400);
        }else{
            return response()->json([
                'success' => true,
                'status' => 200,
                'message' => $data
            ], 200);
        }
    }
    public function store(Request $request){
        $validator= Validator::make($request->all(),[
            'nim' => 'required',
            'nama' => 'required',
            'jk' => 'required',
            'alamat' => 'required',
            'email' => 'required|email',
            'nohp'=> 'required',
        ]);

        if($validator->fails()){
            return response()->json([
                'success' => false,
                'status' => 401,
                'error'=>$validator->errors()
            ], 401);
        }

        $data= new Mmahasiswa();
        $data->nim=$request->input('nim');
        $data->nama=$request->input('nama');
        $data->jk=$request->input('jk');
        $data->alamat=$request->input('alamat');
        $data->email=$request->input('email');
        $data->nohp=$request->input('nohp');

        if($data->save()){
            $res["message"]="Sukses";
            $res["status"]=200;
            $res["value"]=$data;
            return response($res);

        } else{
            $res["message"]="Gagal";
            $res["status"]=400;
            return response($res);
        }

    }

    public function update(Request $request, $id){
        $data=Mmahasiswa::where('nim',$id)->first();
         
        if (!$data) {
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'Mahasiswa with nim ' . $id . ' not found'
            ], 400);
        } 
        $data->nim=$request->input('nim');
        $data->nama=$request->input('nama');
        $data->alamat=$request->input('alamat');
        $data->jk=$request->input('jk');
        $data->email=$request->input('email');
        $data->nohp=$request->input('nohp');
        if($data->save()){
            $res["message"]="Sukses";
            $res["status"]=200;
            $res["value"]=$data;
            return response($res);
        } else{
            $res["status"]=400;
            $res["message"]="Gagal";
            return response($res);
        }
    }

    public function destroy($id){
        $data=Mmahasiswa::where('nim',$id)->first();
        if (!$data) {
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'Mahasiswa with nim ' . $id . ' not found'
            ], 400);
        }
 

        if($data->delete()){
            $res["message"]="sukses";
            $res["status"]=200;
            $res["value"]=$data;
            return response($res);
        } else{
            $res["message"]="gagal";
            $res["status"]=400;
            return response($res);
        }

    }


}
