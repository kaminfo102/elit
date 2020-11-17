<table class="table table-bordered">
	<tr>
		<td>نام بسته</td>
		<td colspan="2">{{ $package->package_name }}</td>
	</tr>
	
	<tr>
		<td><b>ویژگی ها</b></td>
		<td><b>ماهانه</b></td>
		<td><b>سالانه</b></td>
	</tr>
	
	<tr>
		<td>کارمندان</td>
		<td>{{ unserialize($package->staff_limit)['monthly'] }}</td>
		<td>{{ unserialize($package->staff_limit)['yearly'] }}</td>
	</tr>
	
	<tr>
		<td>مخاطبان</td>
		<td>{{ unserialize($package->contacts_limit)['monthly'] }}</td>
		<td>{{ unserialize($package->contacts_limit)['yearly'] }}</td>
	</tr>
	
	<tr>
		<td>فاکتور</td>
		<td>{{ unserialize($package->invoice_limit)['monthly'] }}</td>
		<td>{{ unserialize($package->invoice_limit)['yearly'] }}</td>
	</tr>
	
	<tr>
		<td>پیش فاکتور</td>
		<td>{{ unserialize($package->quotation_limit)['monthly'] }}</td>
		<td>{{ unserialize($package->quotation_limit)['yearly'] }}</td>
	</tr>

	<tr>
		<td>مدیریت پروژه</td>
		<td>{{ ucwords(unserialize($package->project_management_module)['monthly']) }}</td>
		<td>{{ ucwords(unserialize($package->project_management_module)['yearly']) }}</td>
	</tr>

	<tr>
		<td>مدیریت تراکنش ها</td>
		<td>{{ ucwords(unserialize($package->recurring_transaction)['monthly']) }}</td>
		<td>{{ ucwords(unserialize($package->recurring_transaction)['yearly']) }}</td>
	</tr>
	
	<tr>
		<td>ماژول انبار داری</td>
		<td>{{ ucwords(unserialize($package->inventory_module)['monthly']) }}</td>
		<td>{{ ucwords(unserialize($package->inventory_module)['yearly']) }}</td>
	</tr>
	
	<tr>
		<td>گفتگوی زنده</td>
		<td>{{ ucwords(unserialize($package->live_chat)['monthly']) }}</td>
		<td>{{ ucwords(unserialize($package->live_chat)['yearly']) }}</td>
	</tr>
	
	<tr>
		<td>مدیریت فایل</td>
		<td>{{ ucwords(unserialize($package->file_manager)['monthly']) }}</td>
		<td>{{ ucwords(unserialize($package->file_manager)['yearly']) }}</td>
	</tr>
	
	<tr>
		<td>پرداخت آنلاین</td>
		<td>{{ ucwords(unserialize($package->online_payment)['monthly']) }}</td>
		<td>{{ ucwords(unserialize($package->online_payment)['yearly']) }}</td>
	</tr>
	
	<tr>
		<td>قیمت</td>
		<td><b>{{ decimalPlace($package->cost_per_month, currency()).' / '.'ماهانه' }}</b></td>
		<td><b>{{ decimalPlace($package->cost_per_year, currency()).' / '.'سالانه' }}</b></td>
	</tr>	
</table>

