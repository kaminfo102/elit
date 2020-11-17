<form method="post" class="ajax-submit" autocomplete="off" action="{{route('product_units.store')}}" enctype="multipart/form-data">
	{{ csrf_field() }}
	
	<div class="col-md-12">
	  <div class="form-group">
		<label class="control-label">نام واحد</label>						
		<input type="text" class="form-control" name="unit_name" value="{{ old('unit_name') }}" required>
	  </div>
	</div>
		
	<div class="col-md-12">
	  <div class="form-group">
	    <button type="reset" class="btn btn-danger">از نو</button>
		<button type="submit" class="btn btn-primary">ذخیره</button>
	  </div>
	</div>
</form>
