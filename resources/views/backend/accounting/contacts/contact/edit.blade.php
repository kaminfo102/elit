@extends('layouts.app')

@section('content')
<div class="row">
   <div class="col-12">
	   <form method="post" class="validate" autocomplete="off" action="{{action('ContactController@update', $id)}}" enctype="multipart/form-data">
		<div class="row">
			<div class="col-md-8">
				<div class="card">
					<span class="d-none panel-title">بروزرسانی اطلاعات مخاطب</span>

					<div class="card-body">

						{{ csrf_field()}}
						<input name="_method" type="hidden" value="PATCH">							
						
						<div class="row">
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">نوع پروفایل</label>						
								<select class="form-control select2" name="profile_type" required>
									<option value="Company" {{ $contact->profile_type=="Company" ? "selected" : "" }}>حقوقی</option>
									<option value="Individual" {{ $contact->profile_type=="Individual" ? "selected" : "" }}>حقیقی</option>
								</select>
							  </div>
							</div>

							<div class="col-md-6">
							 <div class="form-group">
								<label class="control-label">نام شرکت</label>						
								<input type="text" class="form-control" name="company_name" value="{{ $contact->company_name }}">
							 </div>
							</div>

							<div class="col-md-6">
							 <div class="form-group">
								<label class="control-label">نام </label>
								<input type="text" class="form-control" name="contact_name" value="{{ $contact->contact_name }}" required>
							 </div>
							</div>

							<div class="col-md-6">
							 <div class="form-group">
								<label class="control-label">ایمیل مخاطب</label>
								<input type="text" class="form-control" name="contact_email" value="{{ $contact->contact_email }}" required>
							 </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">شماره ارزش افزوده</label>						
								<input type="text" class="form-control" name="vat_id" value="{{ $contact->vat_id }}">
							  </div>
							</div>

							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">شماره ثبت</label>						
								<input type="text" class="form-control" name="reg_no" value="{{ $contact->reg_no }}">
							  </div>
							</div>

							<div class="col-md-6">
							 <div class="form-group">
								<label class="control-label">تلفن تماس</label>						
								<input type="text" class="form-control" name="contact_phone" value="{{ $contact->contact_phone }}">
							 </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">کشور</label>						
								<select class="form-control select2" name="country">
									<option value="">انتخاب کشور</option>
									{{ get_country_list( $contact->country ) }}
								</select>
							  </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">واحد پول</label>						
								<select class="form-control select2 auto-select" data-selected="{{ $contact->currency }}" name="currency" id="currency" required>
								   {{ get_currency_list() }}
								</select>
							  </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
							    <a href="{{ route('contact_groups.create') }}" data-reload="false" data-title="گروه مخاطبین جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> گروه جدید</a>
								<label class="control-label">گروه</label>						
								<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="contact_groups" data-where="1" name="group_id" required>
									<option value="">- انتخاب گروه -</option>
									{{ create_option("contact_groups","id","name",$contact->group_id,array("company_id="=>company_id())) }}
								</select>
							 </div>
							</div>

							<div class="col-md-4">
							 <div class="form-group">
								<label class="control-label">شهر</label>						
								<input type="text" class="form-control" name="city" value="{{ $contact->city }}">
							 </div>
							</div>

							<div class="col-md-4">
							 <div class="form-group">
								<label class="control-label">منطقه</label>						
								<input type="text" class="form-control" name="state" value="{{ $contact->state }}">
							 </div>
							</div>

							<div class="col-md-4">
							 <div class="form-group">
								<label class="control-label">کد پستی</label>						
								<input type="text" class="form-control" name="zip" value="{{ $contact->zip }}">
							 </div>
							</div>

							<div class="col-md-6">
							 <div class="form-group">
								<label class="control-label">آدرس</label>						
								<textarea class="form-control" name="address">{{ $contact->address }}</textarea>
							 </div>
							</div>
							
							<div class="col-md-6">
							 <div class="form-group">
								<label class="control-label">ملاحظات</label>						
								<textarea class="form-control" name="remarks">{{ $contact->remarks }}</textarea>
							 </div>
							</div>

							<div class="col-md-12">
							 <div class="form-group">
								<label class="control-label">اینستاگرام</label>						
								<input type="text" class="form-control" name="facebook" value="{{ $contact->facebook }}">
							 </div>
							</div>

							<div class="col-md-12">
							 <div class="form-group">
								<label class="control-label">تلگرام</label>						
								<input type="text" class="form-control" name="twitter" value="{{ $contact->twitter }}">
							 </div>
							</div>

							<div class="col-md-12">
							 <div class="form-group">
								<label class="control-label">واتس آپ</label>						
								<input type="text" class="form-control" name="linkedin" value="{{ $contact->linkedin }}">
							 </div>
							</div>

							<div class="col-md-12">
							  <div class="form-group">
								<button type="submit" class="btn btn-primary">بروزرسانی</button>
							  </div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-md-4">
				<div class="card">
					<h5 class="card-header bg-dark text-white mt-0 text-center">دسترسی به پورتال مخاطب</h5>
					<div class="card-body">
					    
					    <div class="alert alert-info">
					   	 	<span>اگر مخاطب قبلاً حسابی با ایمیل مخاطب مرتبط داشته باشد ، مشتری می تواند با استفاده از جزئیات ورود به سیستم ، به حساب خود وارد شود.</span>
					   	</div> 
					   	
					   	<div class="alert alert-info">	
					    	<span>اگر مخاطب هیچ حساب قبلی مرتبط با ایمیل مخاطب نداشته باشد ، مشتری باید حساب جدیدی را با استفاده از آن ایمیل تماس ایجاد کند.</span>
					    </div>
					    
					</div>
				</div>

				<div class="card">
					<div class="card-body">
					   <div class="col-md-12">
						  <div class="form-group">
							<label class="control-label">تصویر مخاطب (اندازه استاندارد 300*400)</label>
							<input type="file" class="form-control dropify" name="contact_image" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG" data-default-file="{{ $contact->contact_image != "" ? asset('public/uploads/contacts/'.$contact->contact_image) : '' }}">
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


