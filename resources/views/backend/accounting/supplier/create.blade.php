@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="d-none panel-title">تامینکننده جدید</div>

			<div class="card-body">
			  	<form method="post" class="validate" autocomplete="off" action="{{url('suppliers')}}" enctype="multipart/form-data">
					{{ csrf_field() }}
					<div class="row">
						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">نام</label>
							<input type="text" class="form-control" name="supplier_name" value="{{ old('supplier_name') }}" required>
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
							<label class="control-label">کد اقتصادی</label>
							<input type="text" class="form-control" name="vat_number" value="{{ old('vat_number') }}">
						  </div>
						</div>

						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">ایمیل</label>
							<input type="text" class="form-control" name="email" value="{{ old('email') }}" required>
						  </div>
						</div>

						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">تلفن</label>
							<input type="text" class="form-control" name="phone" value="{{ old('phone') }}" required>
						  </div>
						</div>

						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">آدرس</label>
							<input type="text" class="form-control" name="address" value="{{ old('address') }}">
						  </div>
						</div>

						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">کشور</label>
							<select class="form-control select2" name="country">
								<option value="">انتخاب کشور</option>
								{{ get_country_list(old('country')) }}
							</select>
						  </div>
						</div>

						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">شهر</label>
							<input type="text" class="form-control" name="city" value="{{ old('city') }}">
						  </div>
						</div>

						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">منطقه</label>
							<input type="text" class="form-control" name="state" value="{{ old('state') }}">
						  </div>
						</div>

						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">کـدپستی</label>
							<input type="text" class="form-control" name="postal_code" value="{{ old('postal_code') }}">
						  </div>
						</div>

						
						<div class="form-group">
						  <div class="col-md-12">
							<button type="reset" class="btn btn-danger">از نو</button>
							<button type="submit" class="btn btn-primary">ذخــیره</button>
						  </div>
						</div>
					</div>
			  	</form>
			</div>
		</div>
	</div>
</div>
@endsection


