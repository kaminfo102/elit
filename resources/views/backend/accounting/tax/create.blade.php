@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-6">
	<div class="card">
	<span class="d-none panel-title">مالیات جدید</span>

	<div class="card-body">
	  <form method="post" class="validate" autocomplete="off" action="{{ url('taxs') }}" enctype="multipart/form-data">
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
					<option value="percent">درصد %</option>
				</select>
			</div>
		</div>

				
		<div class="col-md-12">
		  <div class="form-group">
		    <button type="reset" class="btn btn-danger">{{ _lang('Reset') }}</button>
			<button type="submit" class="btn btn-primary">{{ _lang('Save') }}</button>
		  </div>
		</div>
	  </form>
	</div>
  </div>
 </div>
</div>
@endsection


