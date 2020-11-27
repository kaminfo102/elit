@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<span class="d-none panel-title">نمایش درآمد</span>

	@php $date_format = get_company_option('date_format','Y-m-d'); @endphp	

	<div class="card-body">
	  <table class="table table-bordered">
		<tr><td>تاریخ انتقال</td><td>{{ jdate($date_format, strtotime($transaction->trans_date)) }}</td></tr>
		<tr><td>حساب</td><td>{{ $transaction->account->account_title }}</td></tr>
		<tr><td>نوع درآمد</td><td>{{ isset($transaction->income_type->name) ? $transaction->income_type->name : 'انتقال' }}</td></tr>
		<tr><td>مبلغ</td><td>{{ decimalPlace($transaction->amount, currency($transaction->account->account_currency)) }}</td></tr>
		<tr><td>مبلغ پایه</td><td>{{ decimalPlace($transaction->base_amount, currency()) }}</td></tr>
		<tr><td>پرداخت کننده</td><td>{{ isset($transaction->payer->contact_name) ? $transaction->payer->contact_name : '' }}</td></tr>
		<tr><td>روش پرداخت</td><td>{{ $transaction->payment_method->name }}</td></tr>
		<tr><td>مرجع</td><td>{{ $transaction->reference }}</td></tr>
		<tr>
			<td>پــیوست</td>
			<td>
				@if($transaction->attachment != "")
				 <a href="{{ asset('public/uploads/transactions/'.$transaction->attachment) }}" target="_blank" class="btn btn-primary">نمایش اسناد پیوست</a>
				@else
					<label class="badge badge-warning">
					<strong>اسناد پیوستی در دسترس نیست</strong>
					</label>
				@endif
			</td>
		</tr>
		<tr><td>یادداشت</td><td>{{ $transaction->note }}</td></tr>
	  </table>
	</div>
  </div>
 </div>
</div>
@endsection


