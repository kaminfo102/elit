<div class="card">
	<div class="card-body">
		<table class="table table-bordered">
			<tr><td>نام کالا</td><td>{{ $item->item_name }}</td></tr>
			<tr><td>تامین کننده</td><td>{{ $item->product->supplier->supplier_name }}</td></tr>
			<tr><td>قیمت خرید</td><td>{{ decimalPlace($item->product->product_cost, currency()) }}</td></tr>
			<tr><td>قیمت فروش</td><td>{{ decimalPlace($item->product->product_price, currency()) }}</td></tr>
			<tr><td>واحد کالا</td><td>{{ $item->product->product_unit }}</td></tr>
			<tr><td>تعداد موجودی</td><td>{{ $item->product_stock->quantity.' '.$item->product->product_unit }}</td></tr>
			<tr><td>مالیات</td><td>{{ ucwords($item->product->tax_method) }}</td></tr>
			<tr><td>درصد مالیات</td><td>{{ isset($item->product->tax) ? $item->product->tax->tax_name : '' }}</td></tr>
			<tr><td>توضیحات</td><td>{{ $item->product->description }}</td></tr>
		</table>
	</div>
</div>
