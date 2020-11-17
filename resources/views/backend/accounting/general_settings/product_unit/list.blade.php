@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
		<a class="btn btn-primary btn-xs ajax-modal" data-title="تعریف واحد کالا" href="{{ route('product_units.create') }}"><i class="ti-plus"></i> جــدید</a>
			
		<div class="card mt-2">
			<span class="d-none panel-title">لیست واحد کالا</span>

			<div class="card-body">
				<table class="table table-bordered data-table">
					<thead>
					  <tr>
						<th>نام واحد</th>
						<th class="text-center">عملیات</th>
					  </tr>
					</thead>
					<tbody> 
					  @foreach($productunits as $productunit)
					  <tr id="row_{{ $productunit->id }}">
						<td class='unit_name'>{{ $productunit->unit_name }}</td>
						<td class="text-center">
						  <form action="{{action('ProductUnitController@destroy', $productunit['id'])}}" method="post">
							<a href="{{action('ProductUnitController@edit', $productunit['id'])}}" data-title="بروزرسانی واحد کالا" class="btn btn-warning btn-xs ajax-modal"><i class="ti-pencil"></i></a>
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


