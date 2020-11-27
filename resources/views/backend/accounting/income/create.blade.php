@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-8">
	<div class="card">
	<span class="d-none panel-title">درآمد جدید</span>

	<div class="card-body">
	  <form method="post" class="validate" autocomplete="off" action="{{ url('income') }}" enctype="multipart/form-data">
		{{ csrf_field() }}
		
		<div class="row">
			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">تاریخ</label>
				<input type="text" class="form-control datepicker" name="trans_date" value="{{ old('trans_date') }}" required>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('accounts.create') }}" data-reload="false" data-title="حساب جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
				<label class="control-label">حساب</label>
				<select class="form-control select2-ajax" data-value="id" data-display="account_title" data-display2="account_currency" data-table="accounts" data-where="1" name="account_id" id="account_id" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("accounts","id",array("account_title","account_currency"),old('account_id'),array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('chart_of_accounts.create') }}" data-reload="false" data-title="نوع درآمد/هزینه جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
				<label class="control-label">نوع درآمد</label>
				<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="chart_of_accounts" data-where="3" name="chart_id" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("chart_of_accounts","id","name",old('chart_id'),array("type="=>"income","AND company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">مبلغ {{ (currency()) }}</label>
				<input type="text" class="form-control float-field" name="amount" value="{{ old('amount') }}" required>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('contacts.create') }}" data-reload="false" data-title="کلاینت جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
				<label class="control-label">پرداخت کننده</label>
				<select class="form-control select2-ajax" data-value="id" data-display="contact_name" data-table="contacts" data-where="1" name="payer_payee_id">
				   <option value="">انتخاب کنید</option>
				   {{ create_option("contacts","id","contact_name",old('payer_payee_id'),array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('payment_methods.create') }}" data-reload="false" data-title="روش پرداخت جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
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

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">اسناد پیوست</label>
				<input type="file" class="form-control trickycode-file" name="attachment">
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">یادداشت</label>
				<textarea class="form-control" name="note">{{ old('note') }}</textarea>
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
	</div>
  </div>
 </div>
</div>
@endsection


