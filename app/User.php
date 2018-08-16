<?php

namespace App;

use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function mahasiswas(){
        return $this->hasMany(Mmahasiswa::class);
    }

    /*
    * Method untuk yang mendefinisikan relasi antara model user dan model Role
    */  
    //public function roles(){
      //  return $this->belongsToMany(Role::class);
    //}

    public function roles(){
        return $this->belongsToMany(Role::class, 'user_roles');
    }

    public function putRole($role){
        if(is_string($role)){
            $role=Role::whereRoleName($role)->first();
        }
        return $this->roles()->attach($role);
    }

    public function forgetRole($role){
        if(is_string($role)){
            $role = Role::whereRoleName($role)->first();
        }
        return $this->roles()->detach($role);
    }

    public function hasRole($roleName){
        foreach($this->roles as $role){
            if(in_array($role->role_name, $roleName))
            return true;
        }
        return false;
    }

   
}
