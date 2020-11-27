<form method="post" class="ajax-submit" autocomplete="off" action="{{action('TaxController@update', $id)}}" enctype="multipart/form-data">
	{{ csrf_field()}}
	<input name="_method" type="hidden" value="PATCH">				
	
	<div class="col-md-12">
	 <div class="form-group">
		<label class="control-label">نام</label>
		<input type="text" class="form-control" name="tax_name" value="{{ $tax->tax_name }}" required>
	 </div>
	</div>

	<div class="col-md-12">
	 <div class="form-group">
		<label class="control-label">نرخ</label>
		<input type="text" class="form-control float-field" name="rate" value="{{ $tax->rate }}" required>
	 </div>
	</div>

	
	<div class="col-md-12">
		<div class="form-group">
		<label class="control-label">نوع</label>
				<select class="form-control" name="type" required>
						<option value="fixed" {{ $tax->type == 'fixed' ? 'selected' : '' }}>ثابت</option>
						<option value="percent" {{ $tax->type == 'percent' ? 'selected' : '' }}>درصد</option>
				</select>
		</div>
	</div>

				
	<div class="form-group">
	  <div class="col-md-12">
		<button type="submit" class="btn btn-primary">بروزرسانی</button>
	  </div>
	</div>
</form>

