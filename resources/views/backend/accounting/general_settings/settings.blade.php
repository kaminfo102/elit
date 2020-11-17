@extends('layouts.app')

@section('content')
    <div class="row">
        <div class="col-sm-3">
		  <ul class="nav flex-column nav-tabs settings-tab" role="tablist">
			  <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#company_settings" aria-expanded="true">تنظیمات شرکت</a></li>
			  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#system_settings" aria-expanded="true">تنظیمات سیستم</a></li>
			  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#invoice" aria-expanded="true">فاکتور و پیش فاکتور</a></li>
			  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#payment-gateway" aria-expanded="false">درگاه پرداخت</a></li>
			  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#logo" aria-expanded="false">لوگو</a></li>
		  </ul>
		</div>
		
		<div class="col-sm-9">
		  <div class="tab-content">
				
			  <div id="company_settings" class="tab-pane active">
				  <div class="card">
				  <span class="d-none panel-title">تنظیمات شرکت</span>

				  <div class="card-body">
					  
					  <form method="post" class="validate params-panel" autocomplete="off" action="{{ url('company/general_settings/update') }}" enctype="multipart/form-data">
						{{ csrf_field() }}
						
						<div class="row">
							<div class="col-md-12">
							  <div class="form-group">
								<label class="control-label">نام شرکت</label>						
								<input type="text" class="form-control" name="company_name" value="{{ get_company_option('company_name') }}" required>
							  </div>
							</div>					
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">تلفن</label>						
								<input type="text" class="form-control" name="phone" value="{{ get_company_option('phone') }}">
							  </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">شماره ارزش افزوده</label>						
								<input type="text" class="form-control" name="vat_id" value="{{ get_company_option('vat_id') }}">
							  </div>
							</div>					
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">شماره ثبت</label>						
								<input type="text" class="form-control" name="reg_no" value="{{ get_company_option('reg_no') }}">
							  </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">ایمیل</label>						
								<input type="text" class="form-control" name="email" value="{{ get_company_option('email') }}">
							  </div>
							</div>
						
							<div class="col-md-12">
							  <div class="form-group">
								<label class="control-label">آدرس</label>						
								<textarea class="form-control" name="address">{{ get_company_option('address') }}</textarea>
							  </div>
							</div>

								
							<div class="col-md-12">
							  <div class="form-group">
								<button type="submit" class="btn btn-primary">ذخیره تنظیمات</button>
							  </div>
							</div>
						</div>
					  </form>
				  </div>
				  </div>
			  </div>

			  <div id="system_settings" class="tab-pane">
				  <div class="card">
				  <span class="d-none panel-title">تنظیمات شرکت</span>

				  <div class="card-body">
				      @if(get_company_option('base_currency') == '')
					  <div class="alert alert-warning">
					    <h5><b><i class="fas fa-info-circle"></i> پس از ایجاد ارز نمی توانید ارز پایه را تغییر دهید!</b></h5>
					  </div>
					  @endif
					  
					  <form method="post" class="validate params-panel" autocomplete="off" action="{{ url('company/general_settings/update') }}" enctype="multipart/form-data">
						{{ csrf_field() }}
						
						<div class="row">


							@if(get_company_option('base_currency') == '')
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">واحد پول پایه</label>						
									<select class="form-control select2" name="base_currency" id="base_currency" required>
										<option value="">انتخاب کنید</option>
										{{ get_currency_list( ) }}
									</select>
								  </div>
								</div>
							@else
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">واحد پول پایه</label>						
									<select class="form-control select2 auto-select" data-selected="{{ get_company_option('base_currency') }}" id="base_currency" disabled>
										<option value="">انتخاب کنید</option>
										{{ get_currency_list( ) }}
									</select>
								  </div>
								</div>
							@endif
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">موقعیت واحد پول</label>						
								<select class="form-control" name="currency_position" required>
									<option value="left" {{ get_company_option('currency_position') == 'left' ? 'selected' : '' }}>چــپ</option>
									<option value="right" {{ get_company_option('currency_position') == 'right' ? 'selected' : '' }}>راســت</option>
								</select>
							  </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">انتخاب جهت تم</label>						
								<select class="form-control auto-select" data-selected="{{ get_company_option('backend_direction','ltr') }}" name="backend_direction" required>
									<option value="ltr">چپ به راست</option>
									<option value="rtl">راست به چپ</option>
								</select>
							  </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">منظقه زمانی</label>						
								<select class="form-control select2" name="timezone" required>
								<option value="">انتخاب کنید</option>
								{{ create_timezone_option(get_company_option('timezone')) }}
								</select>
							  </div>
							</div>					
							

							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">فرمت تاریخ</label>					
								<select class="form-control auto-select" name="date_format" data-selected="{{ get_company_option('date_format','Y-m-d') }}" required>
									<option value="Y-m-d">{{ date('Y-m-d') }}</option>
									<option value="d-m-Y">{{ date('d-m-Y') }}</option>
									<option value="d/m/Y">{{ date('d/m/Y') }}</option>
									<option value="m-d-Y">{{ date('m-d-Y') }}</option>
									<option value="m.d.Y">{{ date('m.d.Y') }}</option>
									<option value="m/d/Y">{{ date('m/d/Y') }}</option>
									<option value="d.m.Y">{{ date('d.m.Y') }}</option>
									<option value="d/M/Y">{{ date('d/M/Y') }}</option>
									<option value="d/M/Y">{{ date('M/d/Y') }}</option>
									<option value="d M, Y">{{ date('d M, Y') }}</option>
								</select>
							  </div>
							</div>

							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">فرمت زمان</label>		
								<select class="form-control auto-select" name="time_format" data-selected="{{ get_company_option('time_format',24) }}" required="">
									<option value="24">24 ساعته</option>
									<option value="12">12 ساعته</option>
								</select>
							  </div>
							</div>
						
								
							<div class="col-md-12">
							  <div class="form-group">
								<button type="submit" class="btn btn-primary">ذخیره تنظیمات</button>
							  </div>
							</div>
						</div>
					  </form>
				  </div>
				  </div>
			  </div>
			  
			  <div id="invoice" class="tab-pane">
				  <div class="card">
				  <span class="d-none panel-title">تنظیمات فاکتور و پیش فاکتور</span>

				  <div class="card-body">
					  <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('company/general_settings/update') }}" enctype="multipart/form-data">
						{{ csrf_field() }}
						
						<div class="row">
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">پیشوند نام فاکتور</label>						
								<input type="text" class="form-control" name="invoice_prefix" value="{{ get_company_option('invoice_prefix') }}">
							  </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">شماره فاکتور بعدی</label>						
								<input type="number" class="form-control" name="invoice_starting" min="1" value="{{ get_company_option('invoice_starting',1001) }}" required>
							  </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<a href="{{ route('accounts.create') }}" data-reload="false" data-title="{{ _lang('Create Account') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
								<label class="control-label">حساب پیش فرض</label>						
								<select class="form-control select2-ajax" data-value="id" data-display="account_title" data-table="accounts" data-where="1" name="default_account" required>
									<option value="">انتخاب کنید</option>
									{{ create_option("accounts","id","account_title",get_company_option('default_account'),array("company_id="=>company_id())) }}
								</select>
								<p>تایید برای استفاده از پرداخت آنلاین</p>
							  </div>  
							</div>
							
							
							<div class="col-md-6">
							  <div class="form-group">
								<a href="{{ route('chart_of_accounts.create') }}" data-reload="false" data-title="{{ _lang('Add Income/Expense Type') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> {{ _lang('Add New') }}</a>
								<label class="control-label">دسته درآمد پیش فرض</label>						
								<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="chart_of_accounts" data-where="3" name="default_chart_id" required>
									<option value="">انتخاب کنید</option>
									{{ create_option("chart_of_accounts","id","name",get_company_option('default_chart_id'),array("type="=>"income","AND company_id="=>company_id())) }}
								</select>
								<p>تایید برای استفاده از پرداخت آنلاین</p>
							  </div>
							</div>
							

							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">پیشوند نام پیش فاکتور</label>						
								<input type="text" class="form-control" name="quotation_prefix" value="{{ get_company_option('quotation_prefix') }}">
							  </div>
							</div>
							
							<div class="col-md-6">
							  <div class="form-group">
								<label class="control-label">شماره پیش فاکتور بعدی</label>						
								<input type="number" class="form-control" name="quotation_starting" min="1" value="{{ get_company_option('quotation_starting',1001) }}" required>
							  </div>
							</div>
							
							<div class="col-md-12">
							  <div class="form-group">
								<label class="control-label">پاورقی فاکتور ( HTML Allowed )</label>						
								<textarea class="form-control summernote" rows="5" name="invoice_footer">{{ get_company_option('invoice_footer') }}</textarea>
							  </div>
							</div>
							
							<div class="col-md-12">
							  <div class="form-group">
								<label class="control-label">پاورقی پیش فاکتور ( HTML Allowed )</label>						
								<textarea class="form-control summernote" rows="5" name="quotation_footer">{{ get_company_option('quotation_footer') }}</textarea>
							  </div>
							</div>
																
							<div class="col-md-12">
							  <div class="form-group">
								<button type="submit" class="btn btn-primary">ذخیره تنظیمات</button>
							  </div>
							</div>
						</div>
					  </form>
				  </div>
				  </div>
			  </div>
			  
			  <div id="payment-gateway" class="tab-pane fade">
			     <div class="card">
				    <span class="d-none panel-title">درگاه پرداخت</span>
				    <div class="card-body">
					   <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('company/general_settings/update') }}" enctype="multipart/form-data">				         
							
						    {{ csrf_field() }}
							<h5 class="header-title">پی پال</h5>
							<div class="params-panel">
								<div class="row">
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">فعالسازی پی پال</label>						
										<select class="form-control" name="paypal_active" required>
										   <option value="no" {{ get_company_option('paypal_active') == 'no' ? 'selected' : '' }}>خیر</option>
										   <option value="yes" {{ get_company_option('paypal_active') == 'yes' ? 'selected' : '' }}>بله</option>
										</select>
									  </div>
									</div>
									
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">انتخاب واحد پول پی پال</label>						
										<select class="form-control select2 auto-select" data-selected="{{ get_company_option('paypal_currency') }}" name="paypal_currency" id="paypal_currency" required>
										    <option value="USD">دلار پامریکا</option>
											<option value="AUD">دلار استرالیا</option>
											<option value="BRL">ریال برزیل</option>
											<option value="CAD">دلار کانادا</option>
											<option value="CZK">کره</option>
											<option value="DKK">کره</option>
											<option value="EUR">{{ _lang('Euro') }}</option>
											<option value="HKD">دلار هنگ کنگ</option>
											
											<option value="TRY">لیر ترکیه</option>
										</select>
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">ایمیل پی پال</label>						
										<input type="text" class="form-control" name="paypal_email" value="{{ get_company_option('paypal_email') }}">
									  </div>
									</div>
								</div>
							</div>
							
							<br>
							<h5 class="header-title">تنپیمات استریپ</h5>
							<div class="params-panel">								
								<div class="row">
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">فعالسازی  استریپ</label>						
										<select class="form-control" name="stripe_active" required>
										   <option value="no" {{ get_company_option('stripe_active') == 'no' ? 'selected' : '' }}>خیر</option>
										   <option value="yes" {{ get_company_option('stripe_active') == 'yes' ? 'selected' : '' }}>بله</option>
										</select>
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">واحد پول استریپ</label>						
										<select class="form-control select2 auto-select" data-selected="{{ get_company_option('stripe_currency') }}" name="stripe_currency" id="stripe_currency" required>
										<option value="USD">دلار پامریکا</option>
											<option value="AUD">دلار استرالیا</option>
											<option value="BRL">ریال برزیل</option>
											<option value="CAD">دلار کانادا</option>
											<option value="CZK">کره</option>
											<option value="DKK">کره</option>
											<option value="EUR">{{ _lang('Euro') }}</option>
											<option value="HKD">دلار هنگ کنگ</option>
											
											<option value="TRY">لیر ترکیه</option>
										</select>
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">{{ _lang('Secret Key') }}</label>						
										<input type="text" class="form-control" name="stripe_secret_key" value="{{ get_company_option('stripe_secret_key') }}">
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">{{ _lang('Publishable Key') }}</label>						
										<input type="text" class="form-control" name="stripe_publishable_key" value="{{ get_company_option('stripe_publishable_key') }}">
									  </div>
									</div>
								</div>
                            </div>

                            <br>
							<h5 class="header-title">{{ _lang('Razorpay Configuration') }}</h5>
							<div class="params-panel">								
								<div class="row">
									<div class="col-md-6">
									  	<div class="form-group">
											<label class="control-label">{{ _lang('Razorpay Active') }}</label>						
											<select class="form-control" name="razorpay_active" required>
											   <option value="no" {{ get_company_option('razorpay_active') == 'no' ? 'selected' : '' }}>{{ _lang('No') }}</option>
											   	<option value="yes" {{ get_company_option('razorpay_active') == 'yes' ? 'selected' : '' }}>{{ _lang('Yes') }}</option>
											</select>
									  	</div>
									</div>
									
									<div class="col-md-6">
									  	<div class="form-group">
											<label class="control-label">{{ _lang('Razorpay Currency') }}</label>			
											<select class="form-control select2 auto-select" data-selected="{{ get_company_option('razorpay_currency') }}" name="razorpay_currency" id="razorpay_currency" required>
												<option value="INR">{{ _lang('Indian Rupee') }}</option>
											</select>
									  	</div>
									</div>
									
									<div class="col-md-6">
									  	<div class="form-group">
											<label class="control-label">{{ _lang('Razorpay Key ID') }}</label>						
											<input type="text" class="form-control" name="razorpay_key_id" value="{{ get_company_option('razorpay_key_id') }}">
									  	</div>
									</div>
									
									<div class="col-md-6">
									  	<div class="form-group">
											<label class="control-label">{{ _lang('Razorpay Secret Key') }}</label>						
											<input type="text" class="form-control" name="razorpay_secret_key" value="{{ get_company_option('razorpay_secret_key') }}">
									  	</div>
									</div>
								</div>
                            </div>

                            <br>
							<h5 class="header-title">{{ _lang('Paystack Configuration') }}</h5>
							<div class="params-panel">								
								<div class="row">
									<div class="col-md-6">
									 	<div class="form-group">
											<label class="control-label">{{ _lang('Paystack Active') }}</label>						
											<select class="form-control" name="paystack_active" required>
											   <option value="no" {{ get_company_option('paystack_active') == 'no' ? 'selected' : '' }}>{{ _lang('No') }}</option>
											   <option value="yes" {{ get_company_option('paystack_active') == 'yes' ? 'selected' : '' }}>{{ _lang('Yes') }}</option>
											</select>
									  	</div>
									</div>

									<div class="col-md-6">
									 	 <div class="form-group">
											<label class="control-label">{{ _lang('Paystack Public Key') }}</label>	
											<input type="text" class="form-control" name="paystack_public_key" value="{{ get_company_option('paystack_public_key') }}">
									  	</div>
									</div>
									
									<div class="col-md-6">
									  	<div class="form-group">
											<label class="control-label">{{ _lang('Paystack Secret Key') }}</label>		
											<input type="text" class="form-control" name="paystack_secret_key" value="{{ get_company_option('paystack_secret_key') }}">
									  	</div>
									</div>


									<div class="col-md-6">
										<div class="form-group">
											<label class="control-label">{{ _lang('Paystack Currency') }}</label>
											<select class="form-control select2 auto-select" data-selected="{{ get_company_option('paystack_currency','GHS') }}" name="paystack_currency" id="paystack_currency" required>
												<option value="GHS">{{ _lang('Ghana') }}</option>
												<option value="NGN">{{ _lang('Nigeria') }}</option>
												<option value="ZAR">{{ _lang('South Africa') }}</option>
											</select>
										</div>
									</div>
								</div>
                            </div>
							
                            <div class="row">							
								<div class="col-md-12">
								  	<div class="form-group">
										<button type="submit" class="btn btn-primary">ذخیره تنظیمات</button>
								  	</div>
								</div>
							</div>
					   </form>	
				   </div>
				 </div>
			  </div>

			  
			  <div id="logo" class="tab-pane fade">
			     <div class="card">
				    <span class="d-none panel-title">بارگذاری لوگو</span>
				    <div class="card-body">
					   <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('company/upload_logo') }}" enctype="multipart/form-data">				         
							
							{{ csrf_field() }}
							
							<div class="col-md-12">
							  <div class="form-group">
								<label class="control-label">بارگذاری لوگو</label>						
								<input type="file" class="form-control dropify" name="logo" data-max-file-size="8M" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG" data-default-file="{{ get_company_logo() }}" required>
							  </div>
							</div>
							
							<br>
							<div class="col-md-12">
							  <div class="form-group">
								<button type="submit" class="btn btn-primary btn-block">بارگذاری</button>
							  </div>
							</div>	
							
					   </form>	
				   </div>
				 </div>
			  </div>
			  
		   </div>  
		</div>
	</div>
@endsection
