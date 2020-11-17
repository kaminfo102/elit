@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<h4 class="panel-title d-none">نمایش جزئیات ویژگی</h4>
			
			<div class="card-body">
			  @php $language = get_option('language'); @endphp
			  <table class="table table-bordered">
				<tr><td>آیکن</td><td>{{ get_array_data($feature->icon, $language) }}</td></tr>
				<tr><td>عنوان</td><td>{{ get_array_data($feature->title, $language) }}</td></tr>
				<tr><td>محتوا</td><td>{{ get_array_data($feature->content, $language) }}</td></tr>
			  </table>
			</div>
	    </div>
	</div>
</div>
@endsection


