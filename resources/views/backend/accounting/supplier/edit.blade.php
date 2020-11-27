@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="d-none panel-title">ویرایش اطلاعات تامین کننده</span>

			<div class="card-body">
				<form method="post" class="validate" autocomplete="off" action="{{action('SupplierController@update', $id)}}" enctype="multipart/form-data">
					{{ csrf_field()}}
					<input name="_method" type="hidden" value="PATCH">				
					<div class="row">	
						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">نام</label>
								<input type="text" class="form-control" name="supplier_name" value="{{ $supplier->supplier_name }}" required>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">نام شرکت</label>
								<input type="text" class="form-control" name="company_name" value="{{ $supplier->company_name }}">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">کد اقتصادی</label>
								<input type="text" class="form-control" name="vat_number" value="{{ $supplier->vat_number }}">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">ایمیل</label>
								<input type="text" class="form-control" name="email" value="{{ $supplier->email }}" required>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">تلفن</label>
								<input type="text" class="form-control" name="phone" value="{{ $supplier->phone }}" required>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">آدرس</label>
								<input type="text" class="form-control" name="address" value="{{ $supplier->address }}">
							</div>
						</div>


						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">کشور</label>
								<select class="form-control select2" name="country">
									<option value="">انتخاب کنید</option>
									{{ get_country_list($supplier->country) }}
								</select>
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">شهر</label>
								<input type="text" class="form-control" name="city" value="{{ $supplier->city }}">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">منطقه</label>
								<input type="text" class="form-control" name="state" value="{{ $supplier->state }}">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">کد پستی</label>
								<input type="text" class="form-control" name="postal_code" value="{{ $supplier->postal_code }}">
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-12">
								<button type="submit" class="btn btn-primary">بروزرسانی</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

@endsection


