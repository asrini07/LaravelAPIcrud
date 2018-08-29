<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Artikel;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Validator;


class ArtikelController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $user=Auth::user();
        $data=Artikel::all();
        $artikel = $user->posts;
        return response()->json([
            'success' => true,
            'status' =>200,
            'data' => $artikel
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $validator= Validator::make($request->all(),[
            'user_id' => 'required',
            'judul' => 'required',
            'kontent' => 'required',
        ]);

        if($validator->fails()){
            return response()->json([
                'success' => false,
                'status' => 401,
                'error'=>$validator->errors()
            ], 401);
        }
        //$user=Auth::user();

        $data= new Artikel();
        $data->user_id=$request->input('user_id');
        $data->judul=$request->input('judul');
        $data->kontent=$request->input('kontent');

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

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $user=Auth::user();
        $artikel=$user->posts()->where('id',$id)->get();
       // $data=Mmahasiswa::where('nim',$id)->get();
       // dd($data);
        if(!$artikel){
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'artikel with id ' . $id . ' not found'
            ], 400);
        }else{
            return response()->json([
                'success' => true,
                'status' => 200,
                'message' => $artikel
            ], 200);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $user=Auth::user();
        $data=$user->posts()->where('id',$id)->first();

        if (!$data) {
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'Artikel with id ' . $id . ' not found'
            ], 400);
        } 

        $data->user_id=$request->input('user_id');
        $data->judul=$request->input('judul');
        $data->kontent=$request->input('kontent');
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

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $user=Auth::user();
        $data=$user->posts()->where('id',$id)->first();
        //dd($user);
        if (!$data) {
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'Artikel with id ' . $id . ' not found'
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
