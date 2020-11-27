<form method="post" class="ajax-submit" autocomplete="off" action="{{ route('staffs.store') }}" enctype="multipart/form-data">
	{{ csrf_field() }}
	
	<div class="col-12">
		<div class="row">
			<div class="col-md-12">
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
					<label class="control-label">وضعیت</label>
					<select class="form-control select2" id="status" name="status" required>
					  <option value="1">فعال</option>
					  <option value="0">غیر فعال</option>
					</select>
			  	</div>
			</div>

			<div class="col-md-12">
			  	<div class="form-group">
					<label class="control-label">سمت</label>
					<select class="form-control select2" name="role_id" required>
					  <option value="">انتخاب کنید</option>
					  {{ create_option('staff_roles','id','name', old('role_id'), array('company_id='=>company_id())) }}
					</select>
			  	</div>
			</div>
			
			<div class="col-md-12">
			 <div class="form-group">
				<label class="control-label">تصویر پروفایل (برای نمایش بهتر اندازه تصویر 300*400 باشد)</label>
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
	</div>
</form>