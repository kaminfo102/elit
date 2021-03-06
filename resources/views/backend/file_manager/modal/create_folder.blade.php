<form method="post" class="ajax-submit" autocomplete="off" action="{{ url('file_manager/store_folder') }}" enctype="multipart/form-data">
	{{ csrf_field() }}
	
	<div class="col-md-12">
	  <div class="form-group">
		<label class="control-label">نام پوشه</label>
		<input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
	  </div>
	</div>

	@php $parent_id = $parent_id != '' ? decrypt($parent_id) : ''; @endphp
	
	<div class="col-md-12">
	  <div class="form-group">
		<label class="control-label">پوشه والد</label>
		<select class="form-control select2" name="parent_id">
			<option value="">دایرکتوری ریشه</option>
			@foreach($parent_directory as $dir)
				<option value="{{ $dir->id }}" {{ $parent_id==$dir->id ? 'selected' : '' }}>{{ $dir->name }}</option>
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
