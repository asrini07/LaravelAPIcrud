<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserRole extends Model
{
    //
    protected $table="user_roles";
    public $timestamps=false;
    protected $fillable=[
        'role_name', 'created_at','updated_at'
    ];

    public function getUserObject(){
        return $this->belongsToMany(User::class)->using(UserRole::class);
    }
}
