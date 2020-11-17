@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-6">
		<div class="card panel-default">
			<span class="d-none panel-title">بروزرسانی واحد کالا</span>

			<div class="card-body">
				<form method="post" class="validate" autocomplete="off" action="{{ action('ProductUnitController@update', $id) }}" enctype="multipart/form-data">
					{{ csrf_field()}}
					<input name="_method" type="hidden" value="PATCH">				
					
					<div class="col-md-12">
					 <div class="form-group">
						<label class="control-label">نام واحد</label>						
						<input type="text" class="form-control" name="unit_name" value="{{ $productunit->unit_name }}" required>
					 </div>
					</div>
				
					<div class="form-group">
					  <div class="col-md-12">
						<button type="submit" class="btn btn-primary">بروزرسانی</button>
					  </div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

@endsection


