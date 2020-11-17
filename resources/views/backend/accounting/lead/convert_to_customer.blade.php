@extends('layouts.app')

@section('content')
<div class="row">
<div class="col-12">
<form method="post" class="validate" autocomplete="off" action="{{ route('leads.convert_to_customer',$lead->id) }}" enctype="multipart/form-data">
	<div class="row">
		<div class="col-md-8">
		<div class="card">
		<span class="d-none panel-title">تمــاس جدید</span>

		<div class="card-body">
			{{ csrf_field() }}

			<div class="row">
				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">نوع پروفایل</label>
					<select class="form-control select2" name="profile_type" required>
						<option value="Individual">حقیقی</option>
						<option value="Company">حقوقی</option>
					</select>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">نام شرکت</label>
					<input type="text" class="form-control" name="company_name" value="{{ $lead->company_name }}">
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">نام مخاطب</label>
					<input type="text" class="form-control" name="contact_name" value="{{ $lead->name }}" required>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">ایمیل</label>
					<input type="text" class="form-control" name="contact_email" value="{{ $lead->email }}" required>
				  </div>
				</div>
				
				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">شماره ارزش افزوده</label>
					<input type="text" class="form-control" name="vat_id" value="{{ $lead->vat_id }}">
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">شماره ثبت</label>
					<input type="text" class="form-control" name="reg_no" value="{{ $lead->reg_no }}">
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">تلفن</label>
					<input type="text" class="form-control" name="contact_phone" value="{{ $lead->phone }}">
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">کشور</label>
					<select class="form-control select2" name="country">
					    <option value="">انتخاب کنید</option>
						{{ get_country_list( $lead->country ) }}
					</select>
				  </div>
				</div>
				
				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">واحد پول</label>
					<select class="form-control select2 auto-select" data-selected="{{ $lead->currency }}" name="currency" id="currency" required>
					   {{ get_currency_list() }}
					</select>
				  </div>
				</div>
				
				<div class="col-md-6">
				  <div class="form-group">
					<a href="{{ route('contact_groups.create') }}" data-reload="false" data-title="گروه جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
					<label class="control-label">گروه</label>
					<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="contact_groups" data-where="1" name="group_id" required>
						<option value="">انتخاب کنید</option>
					</select>
				 </div>
				</div>

				<div class="col-md-4">
				  <div class="form-group">
					<label class="control-label">شهر</label>
					<input type="text" class="form-control" name="city" value="{{ $lead->city }}">
				  </div>
				</div>

				<div class="col-md-4">
				  <div class="form-group">
					<label class="control-label">وضعیت</label>
					<input type="text" class="form-control" name="state" value="{{ $lead->state }}">
				  </div>
				</div>

				<div class="col-md-4">
				  <div class="form-group">
					<label class="control-label">کد پستی</label>
					<input type="text" class="form-control" name="zip" value="{{ $lead->zip }}">
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">آدرس</label>
					<textarea class="form-control" name="address">{{ $lead->address }}</textarea>
				  </div>
				</div>
				
				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">ملاحظات</label>
					<textarea class="form-control" name="remarks">{{ old('remarks') }}</textarea>
				  </div>
				</div>

				<div class="col-md-12">
				  <div class="form-group">
					<label class="control-label">اینستاگرام</label>
					<input type="text" class="form-control" name="facebook" value="{{ old('facebook') }}">
				  </div>
				</div>

				<div class="col-md-12">
				  <div class="form-group">
					<label class="control-label">تلگرام</label>
					<input type="text" class="form-control" name="twitter" value="{{ old('twitter') }}">
				  </div>
				</div>

				<div class="col-md-12">
				  <div class="form-group">
					<label class="control-label">واتس آپ</label>
					<input type="text" class="form-control" name="linkedin" value="{{ old('linkedin') }}">
				  </div>
				</div>

				<input type="hidden" name="lead_id" value="{{ $lead->id}}">

				<div class="col-md-12">
				  <div class="form-group">
					<button type="reset" class="btn btn-danger">از نــو</button>
					<button type="submit" class="btn btn-primary">ذخیـــره</button>
				  </div>
				</div>
			</div>
		</div>
	  </div>
	 </div>
	 
	 <div class="col-md-4">

	 	<div class="card">
			<h5 class="card-header bg-dark text-white mt-0 text-center">دسترسی کاربر به پورتال</h5>
			<div class="card-body">
			    
			    <div class="alert alert-info">
			   	 	<span>اگر مشتری قبلاً یک حساب مرتبط با ایمیل داشته باشد ، مشتری می تواند با استفاده از جزئیات ورود به سیستم ، به حساب خود وارد شود.</span>
			   	</div> 
			   	
			   	<div class="alert alert-info">	
			    	<span>اگر مشتری هیچ حساب قبلی مرتبط با ایمیل نداشته باشد ، مشتری باید حساب جدیدی را با استفاده از آن ایمیل تماس ایجاد کند
.</span>
			    </div>
			</div>
		</div>

		<div class="card">
			<div class="card-body">
			   <div class="col-md-12">
				  <div class="form-group">
					<label class="control-label"> تصویر مخاطب اندازه استاندارد 300پیکسل در 400 پیکسل</label>
					<input type="file" class="form-control dropify" name="contact_image"  data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG">
				  </div>
				</div>
			</div>
		</div>

	  </div>
    </div>
 </form>
</div>
</div>
@endsection


