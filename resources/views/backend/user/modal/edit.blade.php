<form method="post" class="ajax-submit" autocomplete="off" action="{{action('UserController@update', $id)}}" enctype="multipart/form-data">
	{{ csrf_field()}}
	<input name="_method" type="hidden" value="PATCH">				
	<div class="row p-2">
		<div class="col-md-12">
		 <div class="form-group">
			<label class="control-label">نام کسب و کار</label>
			<input type="text" class="form-control" name="business_name" value="{{ $user->company->business_name }}" required>
		 </div>
		</div>
		
		<div class="col-md-6">
		 <div class="form-group">
			<label class="control-label">نام</label>
			<input type="text" class="form-control" name="name" value="{{ $user->name }}" required>
		 </div>
		</div>

		<div class="col-md-6">
		 <div class="form-group">
			<label class="control-label">ایمیل</label>
			<input type="email" class="form-control" name="email" value="{{ $user->email }}" required>
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
			<input type="password" class="form-control" name="password_confirmation">
		 </div>
		</div>
		
		<div class="col-md-12">
			<div class="alert alert-info">
				در صورت تغییر بسته ، بسته مجدداً تنظیم می شود
			</div>
		</div>

		<div class="col-md-6">
		  	<div class="form-group">
				<label class="control-label">بسته</label>
				<select class="form-control select2 auto-select" data-selected="{{ $user->company->package_id }}" id="package_id" name="package_id" required>
					<option value="">انتخاب بسته</option>
					{{ create_option('packages','id','package_name') }}
				</select>
			</div>
		</div>
		  
		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">نوع بسته</label>
			<select class="form-control auto-select" data-selected="{{ $user->company->package_type }}" id="package_type" name="package_type" required>
				<option value="monthly">ماهانه</option>
				<option value="yearly">سالانه</option>
			</select>
		  </div>
		</div>

		
		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">نوع عضویت</label>
				<select class="form-control select2 auto-select" data-selected="{{ $user->company->membership_type }}" name="membership_type" id="membership_type" required>
			   		<option value="trial">آزمایشی</option>
			   		<option value="member">عضویت پرداخت شده</option>
			 	</select>
		  </div>
		</div>
		
		<div class="col-md-6">
		  <div class="form-group">
			<label class="control-label">وضعیت</label>
			<select class="form-control select2 auto-select" data-selected="{{ $user->company->status }}" id="status" name="status" required>
			  	<option value="1">فعال</option>
			  	<option value="0">غیرفعال</option>
			</select>
		  </div>
		</div>
		
		
		<div class="col-md-12">
		 <div class="form-group">
			<label class="control-label">برای نمایش بهتر اندازه تصویر 300*400 باشد</label>
			<input type="file" class="dropify" name="profile_picture" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG" data-default-file="{{ $user->profile_picture != "" ? asset('public/uploads/profile/'.$user->profile_picture) : '' }}" >
		 </div>
		</div>

					
		<div class="form-group">
		  <div class="col-md-12">
			<button type="submit" class="btn btn-primary">بـروزرسـانــی</button>
		  </div>
		</div>
	</div>	
</form>
