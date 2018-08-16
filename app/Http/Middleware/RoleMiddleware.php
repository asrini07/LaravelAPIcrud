<?php

namespace App\Http\Middleware;

use Closure;

class RoleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, ...$roleName)
    {
        //return $next($request);
        //jika tidak punya akses
        if(! $request->user()->hasRole($roleName))
        {
            return response()->json([
                "status" => "false",
                "message" => "Maaf Anda tidak bisa mengakses ini",
                "role"=>$roleName
            ],500);
            //return redirect()
              //  ->to('home');
        }
        return $next($request);

        
    }

}
