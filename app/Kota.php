<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Kota extends Model
{
    //
    protected $table="kotas";
    protected $fillable=['user_id', 'kota_asal' ];

    public function user(){
        return $this->belongsTo(User::class);
    }
}
