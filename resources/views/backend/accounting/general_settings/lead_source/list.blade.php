@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-lg-12">
		<div class="card no-export">
		    <div class="card-header bg-primary text-white">
				<span class="panel-title">منابع لــید</span>
				<a class="btn btn-primary btn-sm float-right ajax-modal" data-title="تعریف منبع جدید لــید" href="{{ route('lead_sources.create') }}">جــدید</a>
			</div>
			<div class="card-body">
				<table class="table table-bordered data-table">
					<thead>
					  <tr>
						<th>عنوان</th>
						<th>سفارش</th>
						<th>کد شرکت</th>
						<th class="text-center">عملیات</th>
					  </tr>
					</thead>
					<tbody> 
					    @foreach($leadsources as $leadsource)
					    <tr id="row_{{ $leadsource->id }}">
							<td class='title'>{{ $leadsource->title }}</td>
							<td class='order'>{{ $leadsource->order }}</td>
							<td class='company_id'>{{ $leadsource->company_id }}</td>
							
							<td class="text-center">
								<div class="dropdown">
								  <button class="btn btn-secondary dropdown-toggle btn-sm" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								  عملیات
								  </button>
								  <form action="{{ action('LeadSourceController@destroy', $leadsource['id']) }}" method="post">
									{{ csrf_field() }}
									<input name="_method" type="hidden" value="DELETE">
									
									<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
										<a href="{{ action('LeadSourceController@edit', $leadsource['id']) }}" data-title="{{ _lang('Update Lead Source') }}" class="dropdown-item ajax-modal"><i class="mdi mdi-pencil"></i> ویرایش</a>
										<a href="{{ action('LeadSourceController@show', $leadsource['id']) }}" data-title="{{ _lang('View Lead Source') }}" class="dropdown-item ajax-modal"><i class="mdi mdi-eye"></i> نمایش</a>
										<button class="btn-remove dropdown-item" type="submit"><i class="mdi mdi-delete"></i> حــذف</button>
									</div>
								  </form>
								</div>
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