@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-lg-12">

		<a class="btn btn-primary btn-xs ajax-modal" data-title="سمت جدید" href="{{ route('roles.create') }}"><i class="ti-plus"></i> جــدید</a>

		<div class="card mt-2">

			<div class="card-body">
				<table id="roles_table" class="table table-bordered data-table">
					<thead>
					    <tr>
						    <th>نام</th>
							<th>توضیحات</th>
							<th class="text-center">عملیات</th>
					    </tr>
					</thead>
					<tbody>
					    @foreach($roles as $role)
					    <tr data-id="row_{{ $role->id }}">
							<td class='name'>{{ $role->name }}</td>
							<td class='description'>{{ $role->description }}</td>
							
							<td class="text-center">
								<div class="dropdown">
								  <button class="btn btn-primary dropdown-toggle btn-xs" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								  عملیات
								  <i class="fas fa-angle-down"></i>
								  </button>
								  <form action="{{ action('RoleController@destroy', $role['id']) }}" method="post">
									{{ csrf_field() }}
									<input name="_method" type="hidden" value="DELETE">
									
									<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
										<a href="{{ action('RoleController@edit', $role['id']) }}" data-title="ویرایش" class="dropdown-item ajax-modal"><i class="mdi mdi-pencil"></i> ویرایش</a>
										<a href="{{ action('RoleController@show', $role['id']) }}" data-title="نمایش" class="dropdown-item ajax-modal"><i class="mdi mdi-eye"></i> نمایش</a>
										<button class="btn-remove dropdown-item" type="submit"><i class="mdi mdi-delete"></i> حذف</button>
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