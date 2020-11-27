@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="alert alert-info">
	   <p><i class="fas fa-info-circle"></i> نرخ ارز به صورت خودکار محاسبه خواهد شد</p>
	</div>
	<div class="card">
	<span class="d-none panel-title">انتقال جدید</span>

	<div class="card-body">
	  <form method="post" class="validate" autocomplete="off" action="{{ url('transfer/store') }}" enctype="multipart/form-data">
		{{ csrf_field() }}

		<div class="row">
			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">از حساب</label>
				<select class="form-control select2-ajax" data-value="id" data-display="account_title" data-display2="account_currency" data-table="accounts" data-where="1" name="account_from" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("accounts","id",array("account_title","account_currency"),old('account_from'),array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>
			
			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('accounts.create') }}" data-reload="false" data-title="حساب جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
				<label class="control-label">به حساب</label>
				<select class="form-control select2-ajax" data-value="id" data-display="account_title" data-display2="account_currency" data-table="accounts" data-where="1" name="account_to" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("accounts","id",array("account_title","account_currency"),old('account_to'),array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>
			
			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">تاریخ</label>
				<input type="text" class="form-control datepicker" name="trans_date" value="{{ old('trans_date') }}" required>
			  </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">مبلغ</label>
				<input type="text" class="form-control float-field" name="amount" value="{{ old('amount') }}" required>
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

			<div class="col-md-6 clear">
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


