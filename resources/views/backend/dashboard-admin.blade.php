
@extends('layouts.app')


@section('content')
<!--Start Card-->
<div class="row">
    <div class="col-md-3 mb-3">
		<div class="card">
			<div class="seo-fact sbg1">
				<div class="p-4">
					<div class="seofct-icon">
					    <i class="ti-user"></i> 
						<span class="float-right">مجموع کاربران</span>
					</div>
					<h2 class="text-right">{{ $total_user }}</h2>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-md-3 mb-3">
		<div class="card">
			<div class="seo-fact sbg2">
				<div class="p-4">
					<div class="seofct-icon">
						<i class="ti-shopping-cart"></i> 
						<span class="float-right">پرداختی کاربران</span>
					</div>
					<h2 class="text-right">{{ $paid_user }}</h2>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-md-3 mb-3">
		<div class="card">
			<div class="seo-fact sbg3">
				<div class="p-4">
					<div class="seofct-icon">
						<i class="ti-alarm-clock"></i> 
						<span class="float-right">کاربران رایگان</span>
					</div>
					<h2 class="text-right">{{ $trial_user }}</h2>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-md-3 mb-3">
		<div class="card">
			<div class="seo-fact sbg4">
				<div class="p-4">
					<div class="seofct-icon">
						<i class="ti-credit-card"></i> 
						<span class="float-right">مجموع پرداختی</span>
					</div>
					<h2 class="text-right">{{ decimalPlace($total_payment, currency()) }}</h2>
				</div>
			</div>
		</div>
	</div>
	
</div><!--end row-->

<!--End Card-->


<!--New Users-->
<div class="row">
   <div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<h4 class="header-title mt-0 mb-3">ثبت کاربر جدید</h4>
				<div class="table-responsive browser_users">
					<table class="table table-bordered mb-0">
						<thead class="thead-light">
							<tr>
								<th>نام</th>
								<th>شرکت</th>
								<th>ایمیل</th>
								<th>بسته</th>
								<th class="text-center">عضویت</th>
								<th class="text-center">جزئیات</th>
							</tr>
						</thead>
						<tbody>
						    @foreach($news_users as $user)
								<tr id="row_{{ $user->id }}">
								    <td class='name'>
									  <div class="media">
										 <img src="{{ $user->profile_picture != "" ? asset('public/uploads/profile/'.$user->profile_picture) : asset('public/images/avatar.png') }}" alt="avatar" class="thumb-sm rounded-circle mr-2">                                       
									     <div class="media-body align-self-center text-truncate">
											<h6 class="mt-0 text-dark">{{ 'کد کاربر' }} - #{{ $user->id }}</h6>
											<p class="text-muted mb-0">{{ $user->name }}</p>
										 </div><!--end media-body-->
									  </div>
									</td>
									<td class='company'>{{ $user->company->business_name }}</td>			
									<td class='email'>{{ $user->email }}</td>			
									<td class='package_id'>{{ $user->company->package->package_name }}({{ ucwords($user->company->package_type) }})</td>						
									<td class='membership_type text-center'>{!! $user->company->membership_type == 'trial' ? clean(status(ucwords($user->company->membership_type), 'danger')) : clean(status(ucwords($user->company->membership_type), 'success')) !!}</td>		
									<td class="text-center">
									  <a href="{{ action('UserController@show', $user['id'])}}" data-title="{{ $user->name }}" class="btn btn-primary btn-xs ajax-modal">نــمایــش </a>
									</td>
								</tr>
							@endforeach
						</tbody>
					</table> <!--end table-->                                               
				</div><!--end /div-->
			</div><!--end card-body-->
		</div><!--end card-->
	</div>
</div>
<!--End New Users-->


<!--Recent Payments-->
<div class="row">
   <div class="col-lg-12">
		<div class="card">
			<div class="card-body">
				<h4 class="header-title mt-0 mb-3">پرداختی های اخیر</h4>
				<div class="table-responsive browser_users">
					<table class="table table-bordered mb-0">
						<thead class="thead-light">
							<tr>
								<th>تاریخ</th>
								<th>شرکت</th>
								<th>بسته</th>
								<th>نوع</th>
								<th class="text-right">مبلغ</th>
							</tr>
						</thead>

						<tbody>


							@php $date_format = get_option('date_format','Y-m-d'); @endphp
							@php $time_format = get_option('time_format',24) == '24' ? 'H:i' : 'h:i A'; @endphp

						    @foreach($recent_payment as $history)
								<tr>
									<td>{{ jdate("$date_format $time_format",strtotime($history->created_at)) }}</td>
									<td>{{ $history->company->business_name }}</td>
									<td>{{ $history->title }}({{ ucwords($history->package_type) }})</td>
									<td>{{ $history->method }}</td>					
									{{--<td class="text-right"><b>{{ $history->currency.' '.$history->amount }}</b></td>--}}
									<td class="text-right"><b>{{ $history->amount.'  '.'ریال'}}</b></td>
								</tr>
							@endforeach
						</tbody>
					</table> <!--end table-->                                               
				</div><!--end /div-->
			</div><!--end card-body-->
		</div><!--end card-->
	</div>
</div>
<!--End Recent Payments-->


@endsection