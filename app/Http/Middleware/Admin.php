<?php

namespace App\Http\Middleware;

use Illuminate\Http\Response;
use Closure;
use Auth;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
		
		if(Auth::User()->user_type != 'admin'){
			if( ! $request->ajax()){
			   return back()->with('error','شما مجوز دسترسی ندارید !');
			}else{
				return new Response('<h5 class="text-center red">'.'شما مجوز دسترسی ندارید !'.'</h5>');
			}		
		}
		
        return $next($request);
    }
}
