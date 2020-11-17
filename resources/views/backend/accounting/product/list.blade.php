@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
	    <a class="btn btn-primary btn-xs ajax-modal" data-title="کلای جدید" href="{{ route('products.create') }}"><i class="ti-plus"></i> جــدید</a>
	    <a class="btn btn-dark btn-xs" href="{{ route('products.import') }}"><i class="ti-import"></i> وارد کردن لیست کالاها</a>

		<div class="card mt-2">
			<span class="panel-title d-none">لیست کالاها</span>
			
			
			<div class="card-body">
				<table class="table table-bordered data-table">
					<thead>
					  <tr>
							<th>کالا</th>
							<th class="text-right">قیمت خرید</th>
							<th class="text-right">قیمت فروش</th>
							<th>واحد کالا</th>
							<th class="text-center">موجودی</th>
							<th>مالیات</th>
							<th class="text-center">عملیات</th>
					  </tr>
					</thead>
					<tbody>
						
					  @php $currency = currency(); @endphp
					  @foreach($items as $item)
					  <tr id="row_{{ $item->id }}">
							<td class='item_id'>{{ $item->item_name }}</td>
							<td class='product_cost text-right'>{{ decimalPlace($item->product->product_cost, $currency) }}</td>
							<td class='product_price text-right'>{{ decimalPlace($item->product->product_price, $currency) }}</td>
							<td class='product_unit'>{{ $item->product->product_unit }}</td>
							<td class='tax_method text-center'>{{ $item->product_stock->quantity }}</td>
							<td class='tax_method'>{{ ucwords($item->product->tax_method) }}</td>
							<td class="text-center">
								<form action="{{action('ProductController@destroy', $item['id'])}}" method="post">
								<a href="{{action('ProductController@edit', $item['id'])}}" data-title="بروزرسانی" class="btn btn-warning btn-xs ajax-modal"><i class="ti-pencil"></i></a>
								<a href="{{action('ProductController@show', $item['id'])}}" data-title="نمایش" class="btn btn-primary btn-xs ajax-modal"><i class="ti-eye"></i></a>
								{{ csrf_field() }}
								<input name="_method" type="hidden" value="DELETE">
								<button class="btn btn-danger btn-xs btn-remove" type="submit"><i class="ti-eraser"></i></button>
								</form>
							</td>
					  </tr>
					  @endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

@endsection


