
<form method="post" class="ajax-submit" autocomplete="off" action="{{ url('contacts') }}" enctype="multipart/form-data">
	{{ csrf_field() }}

	<div class="col-12">
		<div class="row">
			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">نوع پروفایل</label>						
				<select class="form-control select2" name="profile_type" required>
					<option value="Company" {{ old('profile_type') == 'Company' ? 'selected' : '' }}>شرکت</option>
					<option value="Individual" {{ old('profile_type') == 'Individual' ? 'selected' : '' }}>شخصی</option>
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">نام شرکت</label>						
				<input type="text" class="form-control" name="company_name" value="{{ old('company_name') }}">
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">نام مخاطب</label>						
				<input type="text" class="form-control" name="contact_name" value="{{ old('contact_name') }}" required>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">ایمیل مخاطب</label>						
				<input type="text" class="form-control" name="contact_email" value="{{ old('contact_email') }}" required>
			  </div>
			</div>
			
			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">شماره ارزش افزوده</label>						
				<input type="text" class="form-control" name="vat_id" value="{{ old('vat_id') }}">
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">شماره ثبت</label>						
				<input type="text" class="form-control" name="reg_no" value="{{ old('reg_no') }}">
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">تلفن تماس</label>						
				<input type="text" class="form-control" name="contact_phone" value="{{ old('contact_phone') }}">
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">کشور</label>						
				<select class="form-control select2" name="country">
					<option value="">انتخاب کشور</option>
					{{ get_country_list( old('country') ) }}
				</select>
			  </div>
			</div>
			
			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">واحد پول</label>						
				<select class="form-control select2 auto-select" data-selected="{{ get_company_option('base_currency') }}" name="currency" id="currency" required>
				   <option value="">انتخاب کنبد</option>
				   {{ get_currency_list() }}
				</select>
			  </div>
			</div>
			
			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('contact_groups.create') }}" data-reload="false" data-title="گروه جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> گروه جدید</a>
				<label class="control-label">گروه مخاطبین</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="contact_groups" data-where="1" name="group_id" required>
					<option value="">انتخاب گروه</option>
				</select>
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



