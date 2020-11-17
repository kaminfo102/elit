@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
		<a class="btn btn-primary btn-xs ajax-modal" data-title="ســرویس جــدید" href="{{ route('services.create') }}"><i class="ti-plus"></i>  جــدید</a>
		<a class="btn btn-dark btn-xs" href="{{ route('services.import') }}"><i class="ti-import"></i>  وارد کردن</a>

		<div class="card mt-2">
			<span class="panel-title d-none">لیست سرویس ها</span>

			<div class="card-body">
			<table class="table table-bordered data-table">
			<thead>
			  <tr>
					<th>سرویس</th>
					<th class="text-right">قیمت</th>
					<th>مالیات</th>
					<th class="text-center">عمــلیات</th>
			  </tr>
			</thead>
			<tbody>
				
				@php $currency = currency(); @endphp
			  @foreach($items as $item)
			  <tr id="row_{{ $item->id }}">
					<td class='item_id'>{{ $item->item_name }}</td>
					<td class='cost text-right'>{{ decimalPlace($item->service->cost, $currency) }}</td>
					<td class='tax_method'>{{ ucwords($item->service->tax_method) }}</td>
					<td class="text-center">
						<form action="{{action('ServiceController@destroy', $item['id'])}}" method="post">
						<a href="{{action('ServiceController@edit', $item['id'])}}" data-title="بروزرسانی" class="btn btn-warning btn-xs ajax-modal"><i class="ti-pencil"></i></a>
						<a href="{{action('ServiceController@show', $item['id'])}}" data-title="نمایش" class="btn btn-primary btn-xs ajax-modal"><i class="ti-eye"></i></a>
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


