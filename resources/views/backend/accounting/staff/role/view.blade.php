@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-lg-12">
		<div class="card">
		    <div class="card-header bg-primary text-white">
				<span class="panel-title">نمایش سمت</span>
			</div>
			
			<div class="card-body">
			    <table class="table table-bordered">
				    <tr><td>عنوان</td><td>{{ $role->name }}</td></tr>
					<tr><td>توضیحات</td><td>{{ $role->description }}</td></tr>
			    </table>
			</div>
	    </div>
	</div>
</div>
@endsection


