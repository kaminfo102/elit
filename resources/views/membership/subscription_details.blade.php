@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<div class="card-body">
		
		@php $date_format = get_company_option('date_format','Y-m-d'); @endphp

	    <h4 class="d-none panel-title">جزئیات اشتراک</h4>
	    <table class="table table-bordered">
			@if($user->user_type == 'user')
				<tr><td>نام بسته</td><td>{{ $user->company->package->package_name }}</td></tr>
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
		    		<td><b>ویژگی ها</b></td>
		    		<td class="text-center"><b>محدودیت در استفاده</b></td>
		    	</tr>
		    	<tr>
		    		<td>محدودیت در تعداد کارمند</td>
		    		<td class="text-center">{{ $user->company->staff_limit }}</td>
		    	</tr>
		    	<tr>
		    		<td>محدودیت در تعداد مخاطبین</td>
		    		<td class="text-center">{{ $user->company->contacts_limit }}</td>
		    	</tr>
		    	<tr>
		    		<td>محدودیت در فاکتور</td>
		    		<td class="text-center">{{ $user->company->invoice_limit }}</td>
		    	</tr>
		    	<tr>
		    		<td>محدودیت در تعداد پیش فاکتور</td>
		    		<td class="text-center">{{ $user->company->quotation_limit }}</td>
		    	</tr>
		    	<tr>
		    		<td>مدیریت پروژه</td>
		    		<td class="text-center">{{ ucwords($user->company->project_management_module) }}</td>
		    	</tr>
		    	<tr>
		    		<td>تراکنش تکراری</td>
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


