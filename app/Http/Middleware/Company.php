<?php

namespace App\Http\Middleware;

use Illuminate\Http\Response;
use Closure;
use Auth;

class Company
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
    	$user = Auth::user();
		$user_type = $user->user_type;

		if($user_type == 'user' || $user_type == 'staff'){
			$route_name = \Request::route()->getName();

			/** If User Type = Staff **/
			if( $route_name != '' && $user_type != 'user'){
				
				if(explode(".",$route_name)[1] == "update"){
					$route_name = explode(".",$route_name)[0].".edit";
				}else if(explode(".",$route_name)[1] == "store"){
					$route_name = explode(".",$route_name)[0].".create";
				}
				if( ! has_permission($route_name)){
					if( ! $request->ajax()){
					   return back()->with('error','شما مجوز دسترسی ندارید!');
					}else{
					   return new Response('<h4 class="text-center red">'.'شما مجوز دسترسی ندارید !'.'</h4>');
					}
				}
			}

		}else{
			if( ! $request->ajax()){
			    return back()->with('error','شما مجوز دسترسی ندارید!');
			}else{
				return new Response('<h5 class="text-center red">'.'شما مجوز دسترسی ندارید !'.'</h5>');
			}
		}

		if(has_membership_system() == 'enabled'){
			if( membership_validity() < date('Y-m-d')){
				return redirect('membership/extend')->with('message','لطفا برای ادامه مراحل بعدی عضویت خود را پرداخت نمایید!');
			}
		}
			
        return $next($request);
    }
}
