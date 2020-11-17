@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header bg-primary text-white">
				<span class="panel-title">پیگیری جدیــد</span>
			</div>
			<div class="card-body">
			    <form method="post" class="validate" autocomplete="off" action="{{ route('leads.store') }}" enctype="multipart/form-data">
					{{ csrf_field() }}
					<div class="row">
					    <div class="col-md-6">
					        <div class="form-group">
						        <label class="control-label">نام</label>
						        <input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
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
						        <label class="control-label">ایمیل</label>
						        <input type="text" class="form-control" name="email" value="{{ old('email') }}">
					        </div>
					    </div>

						<div class="col-md-6">
					        <div class="form-group">
					        	<a href="{{ route('lead_statuses.create') }}" data-reload="false" data-title="وضعیت جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
						        <label class="control-label">{{ _lang('Lead Status') }}</label>	
						        <select class="form-control select2-ajax" data-value="id" data-display="title" data-table="lead_statuses" data-where="1" name="lead_status_id" required>
					                <option value="">{{ _lang('Select One') }}</option>
								</select>
							</div>
					    </div>

						<div class="col-md-6">
					        <div class="form-group">
					        	<a href="{{ route('lead_sources.create') }}" data-reload="false" data-title="منبع جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
						        <label class="control-label">منبع</label>
						        <select class="form-control select2-ajax" data-value="id" data-display="title" data-table="lead_sources" data-where="1" name="lead_source_id" required>
					                <option value="">انتخاب کنید</option>
								</select>
							</div>
					    </div>

						<div class="col-md-6">
					        <div class="form-group">
						        <label class="control-label">مربوط به</label>
						        <select class="form-control select2" name="assigned_user_id"  required>
					                <option value="">انتخاب کنید</option>
									{{ create_option('users','id','name',old('assigned_user_id'), array("company_id="=>company_id())) }}
								</select>
							</div>
					    </div>


						<div class="col-md-6">
					        <div class="form-group">
						        <label class="control-label">تاریخ تماس</label>
						        <input type="text" class="form-control datepicker" name="contact_date" value="{{ old('contact_date') }}" required>
					        </div>
					    </div>

						<div class="col-md-6">
					        <div class="form-group">
						        <label class="control-label">تلفن</label>
						        <input type="text" class="form-control" name="phone" value="{{ old('phone') }}">
					        </div>
					    </div>

						<div class="col-md-6">
					        <div class="form-group">
						        <label class="control-label">وب سایت</label>
						        <input type="text" class="form-control" name="website" value="{{ old('website') }}">
					        </div>
					    </div>

						<div class="col-md-6">
					        <div class="form-group">
						        <label class="control-label">کشور</label>
						        <select class="form-control select2" name="country">
					                <option value="">{{ _lang('Select One') }}</option>
									{{ get_country_list( old('country') ) }}
								</select>
							</div>
					    </div>

						<div class="col-md-6">
					        <div class="form-group">
						        <label class="control-label">واحد پول</label>
						        <select class="form-control select2" name="currency" required>
					                <option value="">انتخاب کنبد</option>
									{{ get_currency_list() }}
								</select>
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
						        <label class="control-label">کد پستی</label>
						        <input type="text" class="form-control" name="zip" value="{{ old('zip') }}">
					        </div>
					    </div>

						<div class="col-md-6">
						    <div class="form-group">
							    <label class="control-label">آدرس</label>
							    <textarea class="form-control" name="address">{{ old('address') }}</textarea>
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


