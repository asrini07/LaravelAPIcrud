<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Validator;
use App\Kategori;
use App\Artikel;
use App\User;

class KategoriPostController extends Controller
{
    //
    public function read_artikel(){
        $user=Auth::user();
        $artikels = $user->posts()->get();
        foreach($artikels as $artikel){
            $data[]= [
                'name'=>$artikel->user->name,
                'email'=>$artikel->user->email,
                'post_id'=>$artikel->id,
                'title'=>$artikel->judul,
                'body'=>$artikel->kontent
            ];
        }

        return response()->json([
            'success' => true,
            'status' =>200,
            'data' => $data
        ]);
    }
    public function read_artikel_detail($id){
        //
        $user=Auth::user();
        $artikel=$user->posts()->where('id',$id)->first();
        $data=[
            'name'=>$artikel->user->name,
            'email'=>$artikel->user->email,
            'id'=>$artikel->id,
            'user_id'=>$artikel->user_id,
            'title'=>$artikel->judul,
            'content'=>$artikel->kontent,
        ];
        if(!$artikel){
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
    public function read_kategoripost($id){
        $user=Auth::user();
        $artikel=$user->posts()->where('id',$id)->first();
        $categories =$artikel->categories;
        foreach($categories as $categori){
            $data[]= [
                'name'=>$user->name,
                'email'=>$user->email,
                'kategori_id'=>$categori->id,
                'kategori'=>$categori->nama_kategori,
                'artikel_id'=>$artikel->id,
                'title'=>$artikel->judul,
                'body'=>$artikel->kontent
            ];
        }
        return response()->json([
            'success' => true,
            'status' =>200,
            'data' => $data
        ]);
    }
    public function read_kategoripost_detail($id){

    }
    public function create_artikel(Request $request){
        $validator= Validator::make($request->all(),[
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
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

        //$data= new Artikel();
        //Cara 1 insert All
        /*
        $user=User::create([
            'name' => $request->input('name'),
            'email'=> $request->input('email'),
            'password'=>bcrypt($request->input('password'))
        ]);
        $user->posts()->create([
            'judul'=> $request->input('judul'),
            'kontent'=> $request->input('kontent')
        ]);
        */
        $user=Auth::user();
        $data= new Artikel();
        $data->user_id=$user->id;
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
    public function create_kategori_post(Request $request){
        // $user=User::create([
        //     'name'=> 'Aas As',
        //     'email'=>'asrini071aaa@gmail.com',
        //     'password'=>bcrypt('password')
        // ]);
        $validator= Validator::make($request->all(),[
            'slug' => 'required',
            'nama_kategori' => 'required',
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

        $user=Auth::user();
        
        // $data= new Artikel();
        // $data->user_id=$user->id;
        // $data->judul=$request->input('judul');
        // $data->kontent=$request->input('kontent');

        $data=$user->posts()->create([
            'judul'=> $request->input('judul'),
            'kontent'=>$request->input('kontent')
        ]);
        $data2=$data->categories()->create([
            'slug'=>str_slug($request->input('slug'),'-'),
            'nama_kategori'=>$request->input('nama_kategori')
        ]);
        $hasil=[
            'name'=>$user->name,
            'email'=>$user->email,
            'artikel_id'=>$data->id,
            'title'=>$data->judul,
            'content'=>$data->kontent,
            'kategori_id'=>$data2->id,
            'slug'=>$data2->slug,
            'nama_kategori'=>$data2->nama_kategori,
        ];
        return response()->json([
            'success' => true,
            'status' =>200,
            'data' => $hasil
        ]);
    }
    public function update_artikel(Request $request,$id){
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
    public function update_kategori_post(Request $request,$id){

    }
    public function delete_artikel($id){
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
    public function delete_kategori_post($id,$id_kategori){
        $user=Auth::user();
        $data=$user->posts()->where('id',$id)->first();
        //$delete=$data->categories()->where('kategori_id',$id_kategori)->first();

        $delete=$data->categories()->detach([$id_kategori]);
        //dd($delete);
        if (!$data) {
            return response()->json([
                'success' => false,
                'status' => 400,
                'message' => 'Artikel with id ' . $id . ' not found'
            ], 400);
        } 
        if($delete){
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
