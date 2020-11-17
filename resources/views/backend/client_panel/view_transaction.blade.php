<table class="table table-bordered">
	<tr><td>حساب</td><td>{{ jdate("d M, Y",strtotime($transaction->trans_date)) }}</td></tr>
	<tr><td>حساب</td><td>{{ $transaction->account->account_title }}</td></tr>
	<tr><td>دسته</td><td>{{ isset($transaction->expense_type->name) ? $transaction->expense_type->name : 'انتقال' }}</td></tr>
	<tr><td>میلغ</td><td>{{ decimalPlace($transaction->amount, currency($transaction->account->account_currency), $company_currency[$transaction->company_id]) }}</td></tr>
	<tr><td>حساب پایه</td><td>{{ decimalPlace($transaction->amount, currency($company_currency[$transaction->company_id]), $company_currency[$transaction->company_id]) }}</td></tr>
	<tr><td>روش پرداخت</td><td>{{ $transaction->payment_method->name }}</td></tr>
	<tr><td>مرجع</td><td>{{ $transaction->reference }}</td></tr>
	<tr>
		<td>سند پیوست</td>
			<td>
				@if($transaction->attachment != "")
				 <a href="{{ asset('public/uploads/transactions/'.$transaction->attachment) }}" target="_blank" class="btn btn-primary">نمایش سند پیوست</a>
				@else
					<label class="badge badge-warning">
					<strong>سند پیوست موجود نیست!</strong>
					</label>
				@endif
			</td>
	</tr>
	<tr><td>یادداشت</td><td>{{ $transaction->note }}</td></tr>
</table>


