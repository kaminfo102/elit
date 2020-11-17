@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-body">
			<h4 class="d-none panel-title">بروزرسانی کاربر</h4>
			<form method="post" class="validate" autocomplete="off" action="{{ action('UserController@update', $id) }}" enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-6">
						{{ csrf_field()}}
						<input name="_method" type="hidden" value="PATCH">				
						 <div class="form-group">
							<label class="control-label">نام کسب و کار</label>
							<input type="text" class="form-control" name="business_name" value="{{ $user->company->business_name }}" required>
						 </div>
					  
						 <div class="form-group">
							<label class="control-label">نام</label>
							<input type="text" class="form-control" name="name" value="{{ $user->name }}" required>
						 </div>

						 <div class="form-group">
							<label class="control-label">ایمیل</label>
							<input type="email" class="form-control" name="email" value="{{ $user->email }}" required>
						 </div>

						 <div class="form-group">
							<label class="control-label">کلمه عبور</label>
							<input type="password" class="form-control" name="password" value="">
						 </div>
				
						 <div class="form-group">
							<label class="control-label">تایید کلمه عبور</label>
							<input type="password" class="form-control" name="password_confirmation" value="">
						 </div>


						  <div class="form-group">
							<label class="control-label">وضعیت</label>
							<select class="form-control select2 auto-select" data-selected="{{ $user->company->status }}" id="status" name="status" required>
							  <option value="1">فعال</option>
							  <option value="0">غیرفعال</option>
							</select>
						  </div>	


						  <div class="form-group">
							<button type="submit" class="btn btn-primary">بروزرسانی</button>
						  </div>
					</div>
					
					<div class="col-md-6">
					   
						<div class="form-group">
							<label class="control-label">{{ _lang('بسته') }} ({{ _lang('در صورت تغییر بسته ، بسته مجدداً تنظیم می شود') }})</label>
							<select class="form-control select2 auto-select" data-selected="{{ $user->company->package_id }}" id="package_id" name="package_id" required>
								<option value="">انتخاب بسته</option>
								{{ create_option('packages','id','package_name') }}
							</select>
						</div>
					  
						<div class="form-group">
							<label class="control-label">نوع بسته</label>
							<select class="form-control auto-select" data-selected="{{ $user->company->package_type }}" id="package_type" name="package_type" required>
								<option value="monthly">ماهانه</option>
								<option value="yearly">سالانه</option>
							</select>
						</div>
						
						<div class="form-group">
							 <label class="control-label">نوع عضویت</label>
							 <select class="form-control select2 auto-select" data-selected="{{ $user->company->membership_type }}" name="membership_type" id="membership_type" required>
							   <option value="trial">آزمایشی</option>
							   <option value="member">عضو پرداخت شده</option>
							 </select>
						</div>
					  
						<div class="form-group">
							<label class="control-label">برای نمایش بهتر تصویر اندازه باید 300*400 باشد</label>
							<input type="file" class="dropify" name="profile_picture" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG" data-default-file="{{ $user->profile_picture != "" ? asset('public/uploads/profile/'.$user->profile_picture) : '' }}" >
						</div>
					</div>
                </div>
			</form>
			</div>
		</div>
	</div>
</div>

@endsection