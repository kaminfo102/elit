@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="d-none panel-title">بروزرسانی قالب ایمیل</span>

			<div class="card-body">
			<form method="post" class="validate" autocomplete="off" action="{{action('EmailTemplateController@update', $id)}}" enctype="multipart/form-data">
				{{ csrf_field()}}
				<input name="_method" type="hidden" value="PATCH">				
				
				<div class="col-md-12">
				 <div class="form-group">
					<label class="control-label">نام</label>
					<input type="text" class="form-control" name="name" value="{{ $emailtemplate->name }}" readOnly="true">
				 </div>
				</div>
				
				<div class="col-md-12">
					<pre>You can use {name}  {email}  {valid_to}</pre>
				</div>
				
				<div class="col-md-12">
				 <div class="form-group">
					<label class="control-label">موضوع</label>
					<input type="text" class="form-control" name="subject" value="{{ $emailtemplate->subject }}" required>
				 </div>
				</div>

				<div class="col-md-12">
				 <div class="form-group">
					<label class="control-label">بدنه</label>
					<textarea class="form-control summernote" name="body" required>{{ $emailtemplate->body }}</textarea>
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


