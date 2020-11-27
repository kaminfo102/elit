@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
		<a class="btn btn-primary btn-xs ajax-modal" data-title="مالیات جدید" href="{{route('taxs.create')}}"><i class="ti-plus"></i> جــدید</a>
			
		<div class="card mt-2">
			<span class="d-none panel-title">لیست مالیات</span>

			<div class="card-body">
				<table class="table table-bordered data-table">
					<thead>
					  <tr>
						<th>نام</th>
						<th>نرخ</th>
						<th>نوع</th>
						<th class="text-center">عملیات</th>
					  </tr>
					</thead>
					<tbody>
					  @php $currency = currency(); @endphp
					  @foreach($taxs as $tax)
					  <tr id="row_{{ $tax->id }}">
						<td class='tax_name'>{{ $tax->tax_name }}</td>
						<td class='rate'>{{ $currency." ".$tax->rate }}</td>	
						<td class='type'>{{ ucwords($tax->type) }}</td>	
						<td class="text-center">
						  <form action="{{action('TaxController@destroy', $tax['id'])}}" method="post">
							<a href="{{action('TaxController@edit', $tax['id'])}}" data-title="ویرایش" class="btn btn-warning btn-xs ajax-modal"><i class="ti-pencil"></i></a>
							<a href="{{action('TaxController@show', $tax['id'])}}" data-title="نمایش" class="btn btn-primary btn-xs ajax-modal"><i class="ti-eye"></i></a>
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


