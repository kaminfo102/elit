@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<span class="panel-heading d-none">نمایش محصولات</span>

	<div class="card-body">
	  <table class="table table-bordered">
		<tr><td>نام سرویس</td><td>{{ $item->item_name }}</td></tr>
		<tr><td>قیمت سرویس</td><td>{{ decimalPlace($item->service->product_cost, currency()) }}</td></tr>
		<tr><td>روش مالیات</td><td>{{ ucwords($item->service->tax_method) }}</td></tr>
		<tr><td>مالیات</td><td>{{ isset($item->service->tax) ? $item->service->tax->tax_name : '' }}</td></tr>
		<tr><td>توضیحات</td><td>{{ $item->service->description }}</td></tr>	
	  </table>
	</div>
  </div>
 </div>
</div>
@endsection


