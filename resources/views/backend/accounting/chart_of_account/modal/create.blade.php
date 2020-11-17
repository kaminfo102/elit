<form method="post" class="ajax-submit" autocomplete="off" action="{{route('chart_of_accounts.store')}}" enctype="multipart/form-data">
	{{ csrf_field() }}
	
	<div class="col-md-12">
	  <div class="form-group">
		<label class="control-label">نام</label>						
		<input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
	  </div>
	</div>

	<div class="col-md-12">
	  <div class="form-group">
		<label class="control-label">نوع</label>						
		<select class="form-control" name="type" required>
			<option value="">انتخاب کنبد</option>
			<option value="income">درآمد</option>
			<option value="expense">هزینه</option>
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
