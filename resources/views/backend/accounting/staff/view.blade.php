@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="d-none panel-title">نمایش کارمند</span>

			<div class="card-body">
			  	<table class="table table-bordered">
					<tr><td colspan="2" class="text-center"><img class="thumb-xl rounded" src="{{ $user->profile_picture != "" ? asset('public/uploads/profile/'.$user->profile_picture) : asset('public/images/avatar.png') }}"></td></tr>
					<tr><td>نام</td><td>{{ $user->name }}</td></tr>
					<tr><td>ایمیل</td><td>{{ $user->email }}</td></tr>
					<tr><td>نوع کاربر</td><td>{{ $user->user_type }}</td></tr>
					<tr><td>ســمت</td><td>{{ $user->role->name }}</td></tr>
			  	</table>
			</div>
	  	</div>
 	</div>
</div>
@endsection


