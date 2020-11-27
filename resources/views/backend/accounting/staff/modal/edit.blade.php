<form method="post" class="ajax-submit" autocomplete="off" action="{{ action('StaffController@update', $id) }}" enctype="multipart/form-data">
	{{ csrf_field()}}
	<input name="_method" type="hidden" value="PATCH">				
	
	<div class="col-12">
		<div class="row">
			<div class="col-md-12">
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
			
			<div class="col-md-6">
			  	<div class="form-group">
					<label class="control-label">وضعیت</label>
					<select class="form-control select2 auto-select" data-selected="{{ $user->status }}" id="status" name="status" required>
					  <option value="1">فعال</option>
					  <option value="0">غیرفعال</option>
					</select>
			  	</div>
			</div>

			<div class="col-md-12">
			  	<div class="form-group">
					<label class="control-label">سمت</label>
					<select class="form-control select2" name="role_id" required>
					  <option value="">انتخاب کنید</option>
					  {{ create_option('staff_roles','id','name', $user->role_id, array('company_id='=>company_id())) }}
					</select>
			  	</div>
			</div>
			
			<div class="col-md-12">
			 	<div class="form-group">
					<label class="control-label">تصویر پروفایل(برای نمایش بهتر اندازه تصویر باید 300*400 باشد)</label>
					<input type="file" class="dropify" name="profile_picture" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG" data-default-file="{{ $user->profile_picture != "" ? asset('public/uploads/profile/'.$user->profile_picture) : '' }}" >
			 	</div>
			</div>

						
			<div class="form-group">
			 	<div class="col-md-12">
					<button type="submit" class="btn btn-primary">بروزرسانی</button>
			  	</div>
			</div>
		</div>
	</div>
</form>

