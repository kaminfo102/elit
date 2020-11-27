<form method="post" id="expense" class="ajax-submit" autocomplete="off" action="{{route('expense.store')}}" enctype="multipart/form-data">
	{{ csrf_field() }}

	<div class="col-12">
		<div class="row">
			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">تاریخ</label>						
				<input type="text" class="form-control datepicker" name="trans_date" value="{{ old('trans_date') }}" required>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('accounts.create') }}" data-reload="false" data-title="حساب جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> حساب جدید</a>
				<label class="control-label">حساب</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="account_title" data-display2="account_currency" data-table="accounts" data-where="1" name="account_id" id="account_id" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("accounts","id",array("account_title", "account_currency"), old('account_id'), array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('chart_of_accounts.create') }}" data-reload="false" data-title="نوع درآمد/هزینه جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدیـد</a>
				<label class="control-label">نوع هزینه</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="chart_of_accounts" data-where="4" name="chart_id" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("chart_of_accounts","id","name",old('chart_id'),array("type="=>"expense","AND company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label"> مبلغ{{ (currency()) }}</label>
				<input type="text" class="form-control float-field" name="amount" value="{{ old('amount') }}" required>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">مربوط به</label>						
				<select class="form-control select2 auto-select" data-selected="{{ isset($_GET['related_to']) ? $_GET['related_to'] : 'contacts' }}" name="related_to" id="related_to">
				   <option value="contacts">مشتری</option>
				   <option value="projects">پروژه</option>
				</select>
			  </div>
			</div>

			<div class="col-md-6 d-none" id="contacts">
			  <div class="form-group">
				<a href="{{ route('contacts.create') }}" data-reload="false" data-title="کلاینت جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> مخاطب جدید</a>
				<label class="control-label">مشتری</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="contact_name" data-table="contacts" data-where="1" name="payer_payee_id">
				   <option value="">انتخاب کنید</option>
				   {{ create_option("contacts","id","contact_name",old('payer_payee_id'),array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6 d-none" id="projects">
			  <div class="form-group">
				<label class="control-label">انتخاب پروژه</label>						
				<select class="form-control select2" name="project_id">
				   <option value="">انتخاب کنید</option>
				   {{ create_option('projects','id','name',isset($_GET['project_id']) ? $_GET['project_id'] : '' ,array('company_id=' => company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('payment_methods.create') }}" data-reload="false" data-title="روش پرداخت جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدیـد</a>
				<label class="control-label">روش پرداخت</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="payment_methods" data-where="1" name="payment_method_id" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("payment_methods","id","name",old('payment_method_id'),array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">مرجع</label>						
				<input type="text" class="form-control" name="reference" value="{{ old('reference') }}">
			  </div>
			</div>

			<div class="col-md-12">
				<div class="form-group">
				<label class="control-label">پیوست</label>						
				<input type="file" class="form-control dropify" name="attachment">
				</div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">یادداشت</label>						
				<textarea class="form-control" name="note">یادداشت</textarea>
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