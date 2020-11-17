<form method="post" class="ajax-submit" autocomplete="off" action="{{route('users.store')}}" enctype="multipart/form-data">
	{{ csrf_field() }}
	<div class="row p-2">
		<div class="col-md-12">
		  <div class="form-group">
			<label class="control-label">نام کسب و کار</label>
			<input type="text" class="form-control" name="business_name" value="{{ old('business_name') }}" required>
		  </div>
		</div>
		
		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">نام</label>
			<input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
		  </div>
		</div>

		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">ایمیل</label>
			<input type="email" class="form-control" name="email" value="{{ old('email') }}">
		  </div>
		</div>

		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">کلمه عبور</label>
			<input type="password" class="form-control" name="password">
		  </div>
		</div>
		
		<div class="col-md-6">
		 <div class="form-group">
			<label class="control-label">تایید کلمه عبور</label>
			<input type="password" class="form-control" name="password_confirmation" required>
		 </div>
		</div>
		
		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">بسته</label>
			<select class="form-control select2" name="package_id" required>
				<option value="">انتخاب بسته</option>
				{{ create_option('packages','id','package_name',old('package_id')) }}
			</select>
		  </div>
		</div>
		  
		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">نوع بسته</label>
			<select class="form-control" id="package_type" name="package_type" required>
				<option value="">انتخاب کنید</option>
				<option value="monthly">ماهانه</option>
				<option value="yearly">سالانه</option>
			</select>
		  </div>
		</div>

		
		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">نوع عضویت</label>
			<select class="form-control select2" name="membership_type" id="membership_type" required>
			  <option value="trial">آزمایشی</option>
			  <option value="member">عضویت پرداخت شده</option>
			</select>
		  </div>
		</div>
		
		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">وضعیت</label>
			<select class="form-control select2" id="status" name="status" required>
			  <option value="1">فعال</option>
			  <option value="0">غیرفعال</option>
			</select>
		  </div>
		</div>
		
		
		<div class="col-md-12">
		 <div class="form-group">
			<label class="control-label">برای نمایش بهتر اندازه تصویر 300*400 باشد</label>
			<input type="file" class="dropify" name="profile_picture" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG" data-default-file="">
		 </div>
		</div>
					
		<div class="col-md-12">
		  <div class="form-group">
			<button type="reset" class="btn btn-danger">از نو</button>
			<button type="submit" class="btn btn-primary">ذخیره</button>
		  </div>
		</div>
	</div>
</form>