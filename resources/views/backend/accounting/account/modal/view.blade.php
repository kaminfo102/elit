@php $date_format = get_company_option('date_format','Y-m-d'); @endphp
<div class="card">
	<div class="card-body">
		<table class="table table-bordered">
			<tr><td>عنوان حساب</td><td>{{ $account->account_title }}</td></tr>
			<tr><td>تاریخ افتتاح</td><td>{{ jdate($date_format, strtotime($account->opening_date)) }}</td></tr>
			<tr><td>شماره حساب</td><td>{{ $account->account_number }}</td></tr>
			<tr><td>واحد پول</td><td>{{ $account->account_currency }}</td></tr>
			<tr><td>موجودی اولیه</td><td>{{ decimalPlace($account->opening_balance, currency($account->account_currency)) }}</td></tr>
			<tr><td>یادداشت</td><td>{{ $account->note }}</td></tr>
		</table>
	</div>
</div>
