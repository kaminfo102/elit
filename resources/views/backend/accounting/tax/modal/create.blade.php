<form method="post" class="ajax-submit" autocomplete="off" action="{{route('taxs.store')}}" enctype="multipart/form-data">
	{{ csrf_field() }}
	
	<div class="col-md-12">
	  <div class="form-group">
		<label class="control-label">نام</label>
		<input type="text" class="form-control" name="tax_name" value="{{ old('tax_name') }}" required>
	  </div>
	</div>

	<div class="col-md-12">
	  <div class="form-group">
		<label class="control-label">نرخ</label>
		<input type="text" class="form-control float-field" name="rate" value="{{ old('rate') }}" required>
	  </div>
	</div>

	<div class="col-md-12">
	  <div class="form-group">
		<label class="control-label">نوع</label>
	    <select class="form-control" name="type" required>
            <option value="fixed">ثابت</option>
            <option value="percent">درصد</option>
        </select>
	  </div>
	</div>

				
	<div class="col-md-12">
	  <div class="form-group">
	    <button type="reset" class="btn btn-danger">از نو</button>
		<button type="submit" class="btn btn-primary">ذخیره</button>
	  </div>
	</div>
</form>
