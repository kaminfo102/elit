@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
	    <a class="btn btn-primary btn-xs ajax-modal" data-title="گروه مخاطب جدید" href="{{ route('contact_groups.create') }}"><i class="ti-plus"></i> جدید</a>
			
		<div class="card mt-2">
			<span class="panel-title d-none">لیست گروه مخاطبین</span>

			<div class="card-body">
				<table class="table table-bordered data-table">
					<thead>
					  <tr>
						<th>گروه</th>
						<th>یادداشت</th>
						<th class="text-center">عملیات</th>
					  </tr>
					</thead>
					<tbody>
					  
					  @foreach($contactgroups as $contactgroup)
					  <tr id="row_{{ $contactgroup->id }}">
						<td class='name'>{{ $contactgroup->name }}</td>
						<td class='note'>{{ $contactgroup->note }}</td>
						<td class="text-center">
						  <form action="{{action('ContactGroupController@destroy', $contactgroup['id'])}}" method="post">
							<a href="{{action('ContactGroupController@edit', $contactgroup['id'])}}" data-title="بروزرسانی گروه مخاطبین" class="btn btn-warning btn-xs ajax-modal"><i class="ti-pencil"></i></a>
							<a href="{{action('ContactGroupController@show', $contactgroup['id'])}}" data-title="نمایش گروه مخاطبین" class="btn btn-primary btn-xs ajax-modal"><i class="ti-eye"></i></a>
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


