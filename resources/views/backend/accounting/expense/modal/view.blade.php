@php $date_format = get_company_option('date_format','Y-m-d'); @endphp	

<div class="card">
	<div class="card-body">
	    <table class="table table-bordered">
			<tr><td>تاریخ</td><td>{{ jdate($date_format, strtotime($transaction->trans_date)) }}</td></tr>
			<tr><td>حساب</td><td>{{ $transaction->account->account_title }}</td></tr>
			<tr><td>نوع هزینه</td><td>{{ isset($transaction->expense_type->name) ? $transaction->expense_type->name : _lang('Transfer') }}</td></tr>
			<tr><td>مبلغ</td><td>{{ decimalPlace($transaction->amount, currency($transaction->account->account_currency)) }}</td></tr>
			<tr><td>حساب اصلی</td><td>{{ decimalPlace($transaction->base_amount, currency()) }}</td></tr>
			<tr><td>پرداخت کننده</td><td>{{ isset($transaction->payee->contact_name) ? $transaction->payee->contact_name : '' }}</td></tr>
			<tr><td>روش پرداخت</td><td>{{ $transaction->payment_method->name }}</td></tr>
			<tr><td>مرجع</td><td>{{ $transaction->reference }}</td></tr>
			<tr>
				<td>سند پیوست</td>
				<td>
					@if($transaction->attachment != "")
					 <a href="{{ asset('public/uploads/transactions/'.$transaction->attachment) }}" target="_blank" class="btn btn-primary">نمایش سند پیوست</a>
					@else
						<label class="badge badge-warning">
						<strong>سند پیوست وجود ندارد!</strong>
						</label>
					@endif
				</td>
			</tr>
			<tr><td>یادداشت</td><td>{{ $transaction->note }}</td></tr>
		</table>
	</div>
</div>
