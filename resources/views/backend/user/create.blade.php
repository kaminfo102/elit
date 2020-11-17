@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">

			<div class="card-body">
				<h4 class="d-none panel-title">کاربر جدید</h4>
				<form method="post" class="validate" autocomplete="on" action="{{url('users')}}" enctype="multipart/form-data">
				    <div class="row">
						<div class="col-md-6">
							  {{ csrf_field() }}
							  
							  <div class="form-group">
								<label class="control-label">نام کسب و کار</label>
								<input type="text" class="form-control" name="business_name" value="{{ old('bussines_name')}}" required>
							  </div>
							  
							  <div class="form-group">
								<label class="control-label">نام</label>
								<input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
							  </div>

							  <div class="form-group">
								<label class="control-label">ایمیل</label>
								<input type="email" class="form-control" name="email" value="{{ old('email') }}" required>
							  </div>

							  <div class="form-group">
								<label class="control-label">کلمه عبور</label>
								<input type="password" class="form-control" name="password" value="{{ old('password') }}" required>
							  </div>
							
							  <div class="form-group">
								<label class="control-label">تایید کلمه عبور</label>
								<input type="password" class="form-control" name="password_confirmation" required>
							  </div>				  
							  
							  <div class="form-group">
									<label class="control-label">,وضعیت</label>
									<select class="form-control select2" id="status" name="status" required>
									  <option value="1">فعال</option>
									  <option value="0">غبرفعال</option>
									</select>
							  </div>
							  

							  <div class="form-group">
								<button type="submit" class="btn btn-primary">ذخیره</button>
								<button type="reset" class="btn btn-danger">از نو</button>
							  </div>
							
						</div>
						
						<div class="col-md-6">	
		                      <div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">اشتراک</label>
									<select class="form-control select2" name="package_id" required>
										<option value="">انتخاب بسته</option>
										{{ create_option('packages','id','package_name',old('package_id')) }}
									</select>
								  </div>
							  </div>
							  
							  <div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">نوع اشتراک</label>
									<select class="form-control auto-select" data-selected="{{ old('package_type') }}" id="package_type" name="package_type" required>
										<option value="">انتخاب کنید</option>
										<option value="monthly">ماهانه</option>
										<option value="yearly">سالانه</option>
									</select>
								  </div>
							  </div>
							  
							  <div class="col-md-12">
								  <div class="form-group">
									  <label class="control-label">نوع عضویت</label>
									  <select class="form-control select2 auto-select" data-selected="{{ old('membership_type','trial') }}" name="membership_type" id="membership_type" required>
										  <option value="trial">رایگان</option>
										  <option value="member">ویژه</option>
									  </select>
								  </div>
							  </div>
							  
		  
							  <div class="col-md-12">
								 <div class="form-group">
									<label class="control-label">تصویر پروفایل کاربر برای نمایش بهتر سایز تصویر 300*400 باشد</label>
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


