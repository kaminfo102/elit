<style type="text/css">
	table.myTable {
		border:1;
		border-style:solid;
		border-color:#1eca7b;
		color: midnightblue;


	}

	table.myTable tr:nth-of-type(odd) {
		background:antiquewhite;
	}
</style>
@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
	    <a class="btn btn-primary btn-xs ajax-modal" data-title="کاربر جدید" href="{{ route('users.create') }}"><i class="ti-plus"></i> کاربر جدید</a>
		<div class="card mt-2"> 
			<div class="card-body">
				<h4 class="mt-0 header-title d-none panel-title">{{ $title }}</h4>
				<table class="table myTable  ">
					<thead>
					  <tr>
						<th>کد کاربر</th>
						<th class="text-center">تصویر</th>
						<th>نام کسب و کار</th>
						<th>ایمیل</th>
						<th>بسته</th>
						<th class="text-center">عضویت</th>
						<th>وضعیت</th>
						<th class="text-center">عملیات</th>
					  </tr>
					</thead>
					<tbody>
					  
					  @foreach($users as $user)
						<tr id="row_{{ $user->id }}">
							<td class='id'>{{ $user->id }}</td>
							<td class="text-center">
								<img src="{{ asset('public/uploads/profile/'.$user->profile_picture) }}" class="thumb-sm rounded-circle mr-2">
							</td>
							<td class='name'>{{ $user->company->business_name }}</td>
							<td class='email'>{{ $user->email }}</td>					
							<td class='package_id'>{{ $user->company->package->package_name }}({{ ucwords($user->company->package_type) }})</td>
							<td class='membership_type text-center'>{!! $user->company->membership_type == 'trial' ? clean(status(ucwords($user->company->membership_type), 'danger')) : clean(status(ucwords($user->company->membership_type), 'success')) !!}</td>					
							<td class='status'>{!! $user->company->status == 1 ? clean(status('فعال', 'success')) : clean(status('غیرفعـــال', 'danger')) !!}</td>
							<td class="text-center">
							  <form action="{{ action('UserController@destroy', $user['id']) }}" method="post">
								<a href="{{ action('UserController@edit', $user['id']) }}" data-title="بروزرسانی کاربر" class="btn btn-outline-warning btn-xs ajax-modal">ویرایش</a>
								<a href="{{ action('UserController@show', $user['id']) }}" data-title="نمایش کاربر" class="btn btn-outline-primary btn-xs ajax-modal">نمایش</a>
								{{ csrf_field() }}
								<input name="_method" type="hidden" value="DELETE">
								<button class="btn btn-outline-danger btn-xs btn-remove" type="submit">حذف</button>
							  </form>
							</td>
						</tr>
					  @endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

@endsection


