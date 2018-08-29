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
        'name', 'email', 'password','activation_token','active'
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

    public function posts(){
        return $this->hasMany(Artikel::class);
    }

    public function activateAccount($code)
    {
        $user = User::where('activation_token', $code)->first(); 
        if($user){
            $user->update(['active' => 1, 'activation_token' => NULL]);
            return true;
        } else{
            return response()->json([
                'message' => 'This activation token is invalid.'
            ], 404);
        }
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
