@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-md-12">
		<a class="btn btn-primary btn-xs" href="{{ route('features.create') }}"><i class="ti-plus"></i> جــدید</a>
		<div class="card mt-2">
			<div class="card-body">
			 <span class="panel-title d-none">لیست ویژگی های نرم افزار</span>
				
			 <table class="table table-bordered data-table">
				<thead>
				  <tr>
					<th>عنوان</th>
					<th>محتوا</th>
					<th class="text-center">عملیات</th>
				  </tr>
				</thead>
				<tbody>
				  
				  @php $language = get_option('language'); @endphp

				  @foreach($features as $feature)
				  <tr id="row_{{ $feature->id }}">
					<td class='title'>{{ get_array_data($feature->title, $language) }}</td>
					<td class='content'>{{ get_array_data($feature->content, $language) }}</td>
					
					<td class="text-center">
					    <div class="dropdown">
						  <button class="btn btn-primary dropdown-toggle btn-xs" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  عملیات<i class="fa fa-angle-down"></i>
						  </button>
						  <form action="{{ action('FeatureController@destroy', $feature['id']) }}" method="post">
							{{ csrf_field() }}
							<input name="_method" type="hidden" value="DELETE">
							
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a href="{{ action('FeatureController@edit', $feature['id']) }}" class="dropdown-item"><i class="ti-pencil-alt"></i> ویرایش</a>
								<a href="{{ action('FeatureController@show', $feature['id']) }}" class="dropdown-item"><i class="ti-eye"></i> نمایش</a>
								<button class="btn-remove dropdown-item" type="submit"><i class="ti-trash"></i> حذف</button>
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


