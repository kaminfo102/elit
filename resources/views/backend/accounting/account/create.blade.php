@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-6">
	<div class="card">
	<span class="d-none panel-title">ایجاد حساب جدید</span>

	<div class="card-body">
		<form method="post" class="validate" autocomplete="off" action="{{url('accounts')}}" enctype="multipart/form-data">
			{{ csrf_field() }}
			
			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">عنوان حساب</label>						
				<input type="text" class="form-control" name="account_title" value="{{ old('account_title') }}" required>
			  </div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">تاریخ افتتاح</label>						
				<input type="text" class="form-control datepicker" name="opening_date" value="{{ old('opening_date') }}" required>
			  </div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">شماره حساب</label>						
				<input type="text" class="form-control" name="account_number" value="{{ old('account_number') }}">
			  </div>
			</div>
			
			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">واحد پول</label>						
				<select class="form-control select2" name="account_currency" id="account_currency">
					<option value="">انتخاب کنبد</option>
					{{ get_currency_list( ) }}
				</select>
			  </div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">موجودی افتتاح</label>						
				<input type="text" class="form-control float-field" name="opening_balance" value="{{ old('opening_balance') }}" required>
			  </div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">یادداشت</label>						
				<textarea class="form-control" name="note">{{ old('note') }}</textarea>
			  </div>
			</div>
					
			<div class="form-group">
			  <div class="col-md-12">
				<button type="reset" class="btn btn-danger">از نو</button>
				<button type="submit" class="btn btn-primary">ذخیره</button>
			  </div>
			</div>
		</form>
	</div>
  </div>
 </div>
</div>
@endsection

@section('js-script')
<script>
$("#account_currency").val("{{ old('account_currency') }}").trigger('change');
</script>
@endsection


