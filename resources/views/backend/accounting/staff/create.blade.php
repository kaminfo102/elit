@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card panel-default">
	<span class="d-none panel-title">کارمند جدید</span>

	<div class="card-body">
		<form method="post" class="validate" autocomplete="off" action="{{ url('staffs') }}" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-6">
					{{ csrf_field() }}
					
					<div class="col-md-12">
					  <div class="form-group">
						<label class="control-label">نام</label>
						<input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
					  </div>
					</div>

					<div class="col-md-12">
					  <div class="form-group">
						<label class="control-label">ایمیل</label>
						<input type="email" class="form-control" name="email" value="{{ old('email') }}" required>
					  </div>
					</div>

					<div class="col-md-12">
					  <div class="form-group">
						<label class="control-label">کلمه عبور</label>
						<input type="password" class="form-control" name="password" value="{{ old('password') }}" required>
					  </div>
					</div>
					
					<div class="col-md-12">
					 <div class="form-group">
						<label class="control-label">تایید کلمه عبور</label>
						<input type="password" class="form-control" name="password_confirmation" required>
					 </div>
					</div>

					
					<div class="col-md-12">
					  <div class="form-group">
						<label class="control-label">وضعیت</label>
						<select class="form-control select2 auto-select" data-selected="{{ old('user_type') }}" id="status" name="status" required>
						  <option value="1">فعال</option>
						  <option value="0">غیرفعال</option>
						</select>
					  </div>
					</div>

					<div class="col-md-12">
					  	<div class="form-group">
							<label class="control-label">ســمت</label>
							<select class="form-control select2" name="role_id" required>
							  <option value="">انتخاب سمت</option>
							  {{ create_option('staff_roles','id','name', old('role_id'), array('company_id='=>company_id())) }}
							</select>
					  	</div>
					</div>
					
					
					<div class="form-group">
					  <div class="col-md-12">
						<button type="reset" class="btn btn-danger">از نو</button>
						<button type="submit" class="btn btn-primary">ذخیره</button>
					  </div>
					</div>
					
				</div>
				
				<div class="col-md-6">		
					<div class="col-md-12">
					 <div class="form-group">
						<label class="control-label">تصویر کارمند(برای نمایش بهتر اندازه تصویر 300*400 باشد)</label>
						<input type="file" class="dropify" name="profile_picture" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG" data-default-file="">
					 </div>
					</div>
				</div>	
			</div>		
		</form>
	  
	</div>
  </div>
 </div>
</div>
@endsection


