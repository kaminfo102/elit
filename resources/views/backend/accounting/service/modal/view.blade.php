<div class="card">
	<div class="card-body">
		<table class="table table-bordered">
			<tr><td>کد</td><td>{{ $item->id }}</td></tr>
			<tr><td>نام سرویس</td><td>{{ $item->item_name }}</td></tr>
			<tr><td>قیمت سرویس</td><td>{{ decimalPlace($item->service->cost, currency()) }}</td></tr>
			<tr><td>روش مالیات</td><td>{{ ucwords($item->service->tax_method) }}</td></tr>
			<tr><td>مالیات</td><td>{{ isset($item->service->tax) ? $item->service->tax->tax_name : '' }}</td></tr>
			<tr><td>توضیحات</td><td>{{ $item->service->description }}</td></tr>	
	    </table>
	</div>
</div>
