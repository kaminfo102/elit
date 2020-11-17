@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<span class="d-none panel-title">قالب ایمیل جدید </span>

	<div class="card-body">
	  <form method="post" class="validate" autocomplete="off" action="{{ url('email_templates') }}" enctype="multipart/form-data">
		{{ csrf_field() }}
		
		<div class="col-md-12">
		  <div class="form-group">
			<label class="control-label">نام</label>
			<input type="text" class="form-control" name="name" value="{{ old('name') }}">
		  </div>
		</div>

		<div class="col-md-12">
		  <div class="form-group">
			<label class="control-label">موضوع</label>
			<input type="text" class="form-control" name="subject" value="{{ old('subject') }}" required>
		  </div>
		</div>

		<div class="col-md-12">
		  <div class="form-group">
			<label class="control-label">بدنه</label>
			<textarea class="form-control summernote" name="body" required>{{ old('body') }}</textarea>
		  </div>
		</div>

				
		<div class="form-group">
		  <div class="col-md-12">
		    <button type="reset" class="btn btn-danger">از نو</button>
			<button type="submit" class="btn btn-primary">ذخیره</button>
		  </div>
		</div>
	  </form>
	</div>
  </div>
 </div>
</div>
@endsection


