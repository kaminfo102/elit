<style type="text/css">
	table.myTable {
		border=3;
		border-style:solid;
		border-color:#000;
	}

	table.myTable tr:nth-of-type(odd) {
		background:#eee;
	}
</style>
@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<div class="card-body">
	  <h4 class="d-none panel-title">نمایش کاربر</h4>
	    
	   @php $date_format = get_option('date_format','Y-m-d'); @endphp	

	   <table class="table myTable ">
			<tr><td colspan="2" class="text-center"><img class="thumb-xl rounded" src="{{ $user->profile_picture != "" ? asset('public/uploads/profile/'.$user->profile_picture) : asset('public/images/avatar.png') }}"></td></tr>
			<tr><td>نام کسب و کار</td><td>{{ $user->company->business_name }}</td></tr>
			<tr><td>نام مدیر</td><td>{{ $user->name }}</td></tr>
			<tr><td>ایمیل مدیر</td><td>{{ $user->email }}</td></tr>
			<tr><td>وضعیت</td><td>{!! $user->company->status == 1 ? clean(status('فعال', 'success')) : clean(status('غیرفعال', 'danger')) !!}</td></tr>
			@if($user->user_type == 'user')
				<tr><td>بسته</td><td>{{ $user->company->package->package_name }}({{ ucwords($user->company->package_type) }})</td></tr>
				<tr><td>اعتبار بسته تا</td><td>{{ jdate($date_format, strtotime($user->company->valid_to)) }}</td></tr>
		        <tr>
		        	<td>نوع عضویت</td><td>{!! $user->company->membership_type == 'trial' ? clean(status(ucwords($user->company->membership_type), 'danger')) : clean(status(ucwords($user->company->membership_type), 'success')) !!}</td>
		        </tr>
			@endif
	    </table>

	    @if($user->user_type == 'user')
		    <table class="table table-striped">
		    	<tr>
		    		<td colspan="2" class="text-center"><b>جزئیات بسته</b></td>
		    	</tr>
		    	<tr>
		    		<td><b>ویژگی</b></td>
		    		<td class="text-center"><b>محدودیت ها</b></td>
		    	</tr>
		    	<tr>
		    		<td>کارمند</td>
		    		<td class="text-center">{{ $user->company->staff_limit }}</td>
		    	</tr>
		    	<tr>
		    		<td>مخاطب</td>
		    		<td class="text-center">{{ $user->company->contacts_limit }}</td>
		    	</tr>
		    	<tr>
		    		<td>فاکتور</td>
		    		<td class="text-center">{{ $user->company->invoice_limit }}</td>
		    	</tr>
		    	<tr>
		    		<td>پیش فاکتور</td>
		    		<td class="text-center">{{ $user->company->quotation_limit }}</td>
		    	</tr>
		    	<tr>
		    		<td>مدیریت پروژه</td>
		    		<td class="text-center">{{ ucwords($user->company->project_management_module) }}</td>
		    	</tr>
		    	<tr>
		    		<td>تراکنش های دوره ای</td>
		    		<td class="text-center">{{ ucwords($user->company->recurring_transaction) }}</td>
		    	</tr>
				<tr>
					<td>ماژول انبار داری</td>
					<td class="text-center">{{ ucwords($user->company->inventory_module) }}</td>
				</tr>
		    	<tr>
		    		<td>گفتگوی زنده</td>
		    		<td class="text-center">{{ ucwords($user->company->live_chat) }}</td>
		    	</tr>
		    	<tr>
		    		<td>مدیریت فایل</td>
		    		<td class="text-center">{{ ucwords($user->company->file_manager) }}</td>
		    	</tr>
		    	<tr>
		    		<td>پرداخت آنلاین</td>
		    		<td class="text-center">{{ ucwords($user->company->online_payment) }}</td>
		    	</tr>
		    </table>
	    @endif
	</div>
  </div>
 </div>
</div>
@endsection


