@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<span class="d-none panel-title">ویرایش پوشه</span>

	<div class="card-body">
	  <div class="row">
		  <div class="col-md-6">
			<form method="post" class="validate" autocomplete="off" action="{{ action('FileManagerController@update_folder', $id) }}" enctype="multipart/form-data">
				{{ csrf_field() }}
				
				<input name="_method" type="hidden" value="PATCH">	
				<div class="col-md-12">
				  <div class="form-group">
					<label class="control-label">نام پوشه</label>
					<input type="text" class="form-control" name="name" value="{{ $filemanager->name }}" required>
				  </div>
				</div>

				<div class="col-md-12">
				  <div class="form-group">
					<label class="control-label">پوشه والد</label>
					<select class="form-control select2" name="parent_id">
						<option value="">دایرکتوری ریشه</option>
						@foreach($parent_directory as $dir)
							<option value="{{ $dir->id }}" {{ $dir->id == $filemanager->parent_id ? 'selected' : '' }}>{{ $dir->name }}</option>
						@endforeach
					</select>
				  </div>
				</div>

					
				<div class="col-md-12">
				  <div class="form-group">
					<button type="submit" class="btn btn-primary">ذخیره</button>
				  </div>
				</div>
			</form>
		  </div>
	  </div>
	</div>
  </div>
 </div>
</div>
@endsection


