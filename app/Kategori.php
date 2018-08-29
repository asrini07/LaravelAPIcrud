<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    //
    protected $table="kategoris";
    protected $fillable=['slug','nama_kategori'];

    public function posts(){
        return $this->belongsToMany(Artikel::class);
    }
}
