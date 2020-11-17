<form method="post" class="ajax-submit" autocomplete="off" action="{{action('ContactGroupController@update', $id)}}" enctype="multipart/form-data">
	{{ csrf_field()}}
	<input name="_method" type="hidden" value="PATCH">				
	
	<div class="col-md-12">
	 <div class="form-group">
		<label class="control-label">نام گروه</label>						
		<input type="text" class="form-control" name="name" value="{{ $contactgroup->name }}" required>
	 </div>
	</div>

	<div class="col-md-12">
	 <div class="form-group">
		<label class="control-label">یادداشت</label>						
		<textarea class="form-control" name="note">{{ $contactgroup->note }}</textarea>
	 </div>
	</div>
				
	<div class="form-group">
	  <div class="col-md-12">
		<button type="submit" class="btn btn-primary">بروزرسانی</button>
	  </div>
	</div>
</form>

