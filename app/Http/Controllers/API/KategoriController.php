<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Kategori; 
use Illuminate\Database\Eloquent\Model;
use Validator;

class KategoriController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data=Kategori::all();
        return response()->json([
            'success' => true,
            'status' =>200,
            'data' => $data
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
            'slug' => 'required',
            'nama_kategori' => 'required',
        ]);

        if($validator->fails()){
            return response()->json([
                'success' => false,
                'status' => 401,
                'error'=>$validator->errors()
            ], 401);
        }

        $data= new Kategori();
        $data->slug=$request->input('slug');
        $data->nama_kategori=$request->input('nama_kategori');

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
        $data=Kategori::where('id',$id)->get();
       // dd($data);
        if(!$data){
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'Kategori with id ' . $id . ' not found'
            ], 400);
        }else{
            return response()->json([
                'success' => true,
                'status' => 200,
                'message' => $data
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
        $data=Kategori::where('id',$id)->first();
         
        if (!$data) {
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'Kategori with id ' . $id . ' not found'
            ], 400);
        } 
        $data->slug=$request->input('slug');
        $data->nama_kategori=$request->input('nama_kategori');
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
        $data=Kategori::where('id',$id)->first();
        if (!$data) {
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'Kategori with id ' . $id . ' not found'
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
