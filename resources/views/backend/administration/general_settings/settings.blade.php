@extends('layouts.app')

@section('content')
    <div class="row">
          <div class="col-sm-3">
			  <ul class="nav flex-column nav-tabs settings-tab" role="tablist">
				  <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#general">تنظیمات عمومی</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#system">تنظیمات سیستم</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#email">تنظیمات ایمیل</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#membership_settings">تنظیمات عضویت</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#payment_gateway">درگاه پرداخت</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#social_login">لاگین با Gmail</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#chat_settings">تنظیمات گفتگو</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#cron_jobs">کرون جابز</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#logo">لوگو و فاو آیکن</a></li>
			  </ul>
		  </div>
		  
		  <div class="col-sm-9">
			  <div class="tab-content">
				  <div id="general" class="tab-pane active">
					  <div class="card">

						  <div class="card-body">
							  <h4 class="mb-4 header-title panel-title">تنظیمــات عــمومی</h4>
							  
							  <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/general_settings/update') }}" enctype="multipart/form-data">
								{{ csrf_field() }}
								<div class="row">
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">نام شرکت</label>
										<input type="text" class="form-control" name="company_name" value="{{ get_option('company_name') }}" required>
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">عنوان سایت</label>
										<input type="text" class="form-control" name="site_title" value="{{ get_option('site_title') }}" required>
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">تلفن</label>
										<input type="text" class="form-control" name="phone" value="{{ get_option('phone') }}" required>
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">ایمیل</label>
										<input type="email" class="form-control" name="email" value="{{ get_option('email') }}" required>
									  </div>
									</div>

									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">منظقه زمانی</label>
										<select class="form-control select2" name="timezone" required>
										<option value="">انتخاب کنید</option>
										{{ create_timezone_option(get_option('timezone')) }}
										</select>
									  </div>
									</div>
									
													
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">زبان</label>
										<select class="form-control select2" name="language" required>
											<option value="">انتخاب کنید</option>
											{{ load_language( get_option('language') ) }}
										</select>
									  </div>
									</div>
	
									<div class="col-md-12">
									  <div class="form-group">
										<label class="control-label">آدرس</label>
										<textarea class="form-control" name="address" required>{{ get_option('address') }}</textarea>
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
				 
				  <div id="system" class="tab-pane">
					  <div class="card">

					  <div class="card-body">
						  <h4 class="mb-4 header-title panel-title">تنظیمات سیستم</h4>
						  
						  <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/general_settings/update') }}" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="row">
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">صفحه معرفی سایت</label>
									<select class="form-control" name="website_enable" required>
										<option value="yes" {{ get_option('website_enable') == 'yes' ? 'selected' : '' }}>فعال</option>
										<option value="no" {{ get_option('website_enable') == 'no' ? 'selected' : '' }}>غیرفعال</option>
									</select>
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">دراپ داون زبان سایت</label>
									<select class="form-control" name="website_language_dropdown" required>
										<option value="yes" {{ get_option('website_language_dropdown') == 'yes' ? 'selected' : '' }}>فعال</option>
										<option value="no" {{ get_option('website_language_dropdown') == 'no' ? 'selected' : '' }}>غیرفعال</option>
									</select>
								  </div>
								</div>

								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">دایرکشن پنل</label>
									<select class="form-control auto-select" data-selected="{{ get_option('backend_direction','ltr') }}" name="backend_direction" required>
										<option value="ltr">چپ به راست</option>
										<option value="rtl">راست به چپ</option>
									</select>
								  </div>
								</div>								
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">مبدل واحد پول</label>
									<select class="form-control" name="currency_converter" required>
										<option value="manual" {{ get_option('currency_converter') == 'manual' ? 'selected' : '' }}>دستی</option>
										<option value="fixer" {{ get_option('currency_converter') == 'fixer' ? 'selected' : '' }}>API ثابت</option>
									</select>
								  </div>
								</div>

								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">{{ _lang('کلید API ثابت').' ('._lang('مبدل واحد پول').')' }}</label>
									<a href="https://fixer.io/" target="_blank" class="btn-link pull-right">دریافت کلید API</a>
									<input type="text" class="form-control" name="fixer_api_key" value="{{ get_option('fixer_api_key') }}">
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">فرمت تاریخ</label>
									<select class="form-control auto-select" name="date_format" data-selected="{{ get_option('date_format','Y-m-d') }}" required>
										<option value="Y-m-d">{{ jdate('Y-m-d') }}</option>
										<option value="d-m-Y">{{ jdate('d-m-Y') }}</option>
										<option value="d/m/Y">{{ jdate('d/m/Y') }}</option>
										<option value="m-d-Y">{{ jdate('m-d-Y') }}</option>
										<option value="m.d.Y">{{ jdate('m.d.Y') }}</option>
										<option value="m/d/Y">{{ jdate('m/d/Y') }}</option>
										<option value="d.m.Y">{{ jdate('d.m.Y') }}</option>
										<option value="d/M/Y">{{ jdate('d/M/Y') }}</option>
										<option value="d/M/Y">{{ jdate('M/d/Y') }}</option>
										<option value="d M, Y">{{ jdate('d M, Y') }}</option>
									</select>
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">فرمت زمان</label>
									<select class="form-control auto-select" name="time_format" data-selected="{{ get_option('time_format') }}" required>
										<option value="24">24 ساعته</option>
										<option value="12">12 ساعته</option>
									</select>
								  </div>
								</div>
		
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">نوع فایل هایی که توسط مدیریت فایل مورد قبول است</label>
									<input type="text" class="form-control" name="file_manager_file_type_supported" value="{{ get_option('file_manager_file_type_supported','png,jpg,jpeg') }}" required>
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">حداکثر اندازه آپلود فایل (مگابایت)</label>
									<input type="text" class="form-control" name="file_manager_max_upload_size" value="{{ get_option('file_manager_max_upload_size',2) }}" required>
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
				 
				
				  <div id="email" class="tab-pane fade">
					<div class="card">
					  <div class="card-body">
						<h4 class="mb-4 header-title panel-title">تنظیمات ایمیل</h4>
						<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/general_settings/update') }}" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="row">
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">نوع ایمیل</label>
									<select class="form-control niceselect wide" name="mail_type" id="mail_type" required>
									  <option value="mail" {{ get_option('mail_type')=="mail" ? "selected" : "" }}>{{ _lang('PHP Mail') }}</option>
									  <option value="smtp" {{ get_option('mail_type')=="smtp" ? "selected" : "" }}>{{ _lang('SMTP') }}</option>
									  <option value="sendmail" {{ get_option('mail_type')=="sendmail" ? "selected" : "" }}>ارسال ایمیل</option>
									</select>
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">از طرف ایمیل</label>
									<input type="text" class="form-control" name="from_email" value="{{ get_option('from_email') }}" required>
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">از طرف نام</label>
									<input type="text" class="form-control" name="from_name" value="{{ get_option('from_name') }}" required>
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">هاست SMTP</label>
									<input type="text" class="form-control smtp" name="smtp_host" value="{{ get_option('smtp_host') }}">
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">پورت SMTP</label>
									<input type="text" class="form-control smtp" name="smtp_port" value="{{ get_option('smtp_port') }}">
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">نام کاربری</label>
									<input type="text" class="form-control smtp" autocomplete="off" name="smtp_username" value="{{ get_option('smtp_username') }}">
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">کلمه عبور</label>
									<input type="password" class="form-control smtp" autocomplete="off" name="smtp_password" value="{{ get_option('smtp_password') }}">
								  </div>
								</div>
								
								<div class="col-md-6">
								  <div class="form-group">
									<label class="control-label">امنیت</label>
									<select class="form-control smtp" name="smtp_encryption">
									   <option value="">{{ _lang('None') }}</option>
									   <option value="ssl" {{ get_option('smtp_encryption')=="ssl" ? "selected" : "" }}>{{ _lang('SSL') }}</option>
									   <option value="tls" {{ get_option('smtp_encryption')=="tls" ? "selected" : "" }}>{{ _lang('TLS') }}</option>
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
				  
				  <div id="membership_settings" class="tab-pane fade">
					 <div class="card">
						<div class="card-body">
						   <h4 class="mb-4 header-title panel-title">تنظیمات عضویت</h4>
						   <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/general_settings/update') }}" enctype="multipart/form-data">
								{{ csrf_field() }}
								<div class="row">
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">سیستم عضویت</label>
										<select class="form-control" name="membership_system" required>
											<option value="enabled" {{ get_option('membership_system') == 'enabled' ? 'selected' : '' }}>فعال</option>
											<option value="disabled" {{ get_option('membership_system') == 'disabled' ? 'selected' : '' }}>غیرفعال</option>
										</select>
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">اجازه ثبت نام</label>
										<select class="form-control" name="allow_singup" required>
											<option value="yes" {{ get_option('allow_singup') == 'yes' ? 'selected' : '' }}>فعال</option>
											<option value="no" {{ get_option('allow_singup') == 'no' ? 'selected' : '' }}>غیرفعال</option>
										</select>
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">ایمیل اعتبار سنجی</label>
										<select class="form-control" name="email_verification" required>
											<option value="enabled" {{ get_option('email_verification') == 'enabled' ? 'selected' : '' }}>فعال</option>
											<option value="disabled" {{ get_option('email_verification') == 'disabled' ? 'selected' : '' }}>غیرفعال</option>
										</select>
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">دوره آزمایشی</label>
										<select class="form-control" name="trial_period" required>
									        @for($i=0; $i<31; $i ++)
												<option value="{{ $i }}" {{ get_option('trial_period') == $i ? 'selected' : '' }}>{{ $i.' '.'روز' }}</option>
											@endfor
										</select>
									  </div>
									</div>
									
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">واحد پول</label>
										<select class="form-control select2 auto-select" data-selected="{{ get_option('currency','IRR') }}" name="currency" id="currency" required>
											<option value="">انتخاب کنید</option>
											{{ get_currency_list() }}
										</select>
									  </div>
									</div>
									
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">موقعیت واحد پول</label>
										<select class="form-control" name="currency_position" required>
											<option value="left" {{ get_option('currency_position') == 'left' ? 'selected' : '' }}>چپ</option>
											<option value="right" {{ get_option('currency_position') == 'right' ? 'selected' : '' }}>راست</option>
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
				  
				   <div id="payment_gateway" class="tab-pane fade">
					 <div class="card">
						<div class="card-body">

						   <h4 class="mb-4 header-title panel-title">درگاه پرداخت</h4>

						   <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/general_settings/update') }}" enctype="multipart/form-data">
								{{ csrf_field() }}
								
								<h5 class="header-title">زرین پال</h5>
								<div class="params-panel border border-dark p-3">
									<div class="row">
										<div class="col-md-4">
										  <div class="form-group">
											<label class="control-label">فعالسازی زرین پال</label>
											<select class="form-control" name="paypal_active" required>
											   <option value="Yes" {{ get_option('paypal_active') == 'Yes' ? 'selected' : '' }}>بله</option>
											   <option value="No" {{ get_option('paypal_active') == 'No' ? 'selected' : '' }}>خیر</option>
											</select>
										  </div>
										</div>
										
										<div class="col-md-4">
										  <div class="form-group">
											<label class="control-label">ایمیل زرین پال</label>
											<input type="text" class="form-control" name="paypal_email" value="{{ get_option('paypal_email') }}">
										  </div>
										</div>

										<div class="col-md-4">
										  <div class="form-group">
											<label class="control-label">واحد پول زرین پال</label>
											<select class="form-control select2 auto-select" data-selected="{{ get_option('paypal_currency','IRR') }}" name="paypal_currency" id="paypal_currency" required>
												<option value="IRR">ریال</option>
												<option value="IRR">تومان</option>

											</select>
										  </div>
										</div>
									</div>
								</div>
								
								<br>
								<h5 class="header-title">نکست پی</h5>
								<div class="params-panel border border-dark p-3">
									<div class="row">
										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">فعالسازی نکست پی</label>
											<select class="form-control" name="stripe_active" required>
											   <option value="Yes" {{ get_option('stripe_active') == 'Yes' ? 'selected' : '' }}>بله</option>
											   <option value="No" {{ get_option('stripe_active') == 'No' ? 'selected' : '' }}>خیر</option>
											</select>
										  </div>
										</div>
										
										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">کلید امنیتی</label>
											<input type="text" class="form-control" name="stripe_secret_key" value="{{ get_option('stripe_secret_key') }}">
										  </div>
										</div>
										
										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">{{ _lang('Publishable Key') }}</label>						
											<input type="text" class="form-control" name="stripe_publishable_key" value="{{ get_option('stripe_publishable_key') }}">
										  </div>
										</div>


										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">واحد پول</label>
											<select class="form-control select2 auto-select" data-selected="{{ get_option('stripe_currency','IRR') }}" name="stripe_currency" id="stripe_currency" required>
												<option value="IRR">ریال</option>
												<option value="IRR">تومان</option>
											</select>
										  </div>
										</div>

									</div>
								</div>

								<br>
								<h5 class="header-title">مستقیم</h5>
								<div class="params-panel border border-dark p-3">
									<div class="row">
										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">فعالسازی درگاه مستقیم</label>
											<select class="form-control" name="razorpay_active" required>
											   <option value="No" {{ get_option('razorpay_active') == 'No' ? 'selected' : '' }}>خیر</option>
											   <option value="Yes" {{ get_option('razorpay_active') == 'Yes' ? 'selected' : '' }}>بله</option>
											</select>
										  </div>
										</div>

										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">کلید</label>
											<input type="text" class="form-control" name="razorpay_key_id" value="{{ get_option('razorpay_key_id') }}">
										  </div>
										</div>
										
										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">کلید امنیتی</label>
											<input type="text" class="form-control" name="razorpay_secret_key" value="{{ get_option('razorpay_secret_key') }}">
										  </div>
										</div>


										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">واحد پول</label>
											<select class="form-control select2 auto-select" data-selected="{{ get_option('razorpay_currency','IRR') }}" name="razorpay_currency" id="razorpay_currency" required>
												<option value="IRR">ریال</option>
											</select>
										  </div>
										</div>

									</div>
								</div>


								<br>
								<h5 class="header-title">Pay.ir</h5>
								<div class="params-panel border border-dark p-3">
									<div class="row">
										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">فعالسازی</label>
											<select class="form-control" name="paystack_active" required>
											   <option value="No" {{ get_option('paystack_active') == 'No' ? 'selected' : '' }}>خیر</option>
											   <option value="Yes" {{ get_option('paystack_active') == 'Yes' ? 'selected' : '' }}>بله</option>
											</select>
										  </div>
										</div>

										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">کلید عمومی</label>
											<input type="text" class="form-control" name="paystack_public_key" value="{{ get_option('paystack_public_key') }}">
										  </div>
										</div>
										
										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">کلید امنیتی</label>
											<input type="text" class="form-control" name="paystack_secret_key" value="{{ get_option('paystack_secret_key') }}">
										  </div>
										</div>


										<div class="col-md-3">
										  <div class="form-group">
											<label class="control-label">واحد پول</label>
											<select class="form-control select2 auto-select" data-selected="{{ get_option('paystack_currency','IRR') }}" name="paystack_currency" id="paystack_currency" required>
												<option value="IRR">ریال</option>

											</select>
										  </div>
										</div>

									</div>
								</div>

								<br>
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
				  
				   <div id="social_login" class="tab-pane fade">
					 <div class="card">
						<div class="card-body">
							<h4 class="mb-4 header-title panel-title">ورود با اکانت گوگل</h4>
							<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/general_settings/update') }}" enctype="multipart/form-data">
								{{ csrf_field() }}
								<div class="row">		
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">فعالسازی</label>
										<select class="form-control select2" name="google_login" required>
											<option value="disabled" {{ get_option('google_login') == 'disabled' ? 'selected' : '' }}>غیرفعال</option>
											<option value="enabled" {{ get_option('google_login') == 'enabled' ? 'selected' : '' }}>فعال</option>
										</select>
									  </div>
									</div>
									
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">{{ _lang('GOOGLE CLIENT ID') }}</label>					<a href="https://console.developers.google.com/apis/credentials" target="_blank" class="btn-link pull-right">{{ _lang('GET API KEY') }}</a>	
										<input type="text" class="form-control" name="GOOGLE_CLIENT_ID" value="{{ get_option('GOOGLE_CLIENT_ID') }}">
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">{{ _lang('GOOGLE CLIENT SECRET') }}</label>						
										<input type="text" class="form-control" name="GOOGLE_CLIENT_SECRET" value="{{ get_option('GOOGLE_CLIENT_SECRET') }}">
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">{{ _lang('GOOGLE REDIRECT URL') }}</label>						
										<input type="text" class="form-control" value="{{ url('google/callback') }}" readOnly="true">
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
				  
				  <div id="chat_settings" class="tab-pane fade">
					 <div class="card">
						<div class="card-body">
						   <h4 class="mb-4 header-title panel-title">تنظیمات گفتگو</h4>
						   <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/general_settings/update') }}" enctype="multipart/form-data">
								{{ csrf_field() }}
								<div class="row">
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">فعالسازی</label>
										<select class="form-control select2" name="live_chat" required>
											<option value="disabled" {{ get_option('live_chat') == 'disabled' ? 'selected' : '' }}>غیرفعال</option>
											<option value="enabled" {{ get_option('live_chat') == 'enabled' ? 'selected' : '' }}>فعال</option>
										</select>
									  </div>
									</div>
									
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">{{ _lang('PUSHER APP ID') }}</label>						
										<input type="text" class="form-control" name="PUSHER_APP_ID" value="{{ get_option('PUSHER_APP_ID') }}">
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">{{ _lang('PUSHER APP KEY') }}</label>						
										<input type="text" class="form-control" name="PUSHER_KEY" value="{{ get_option('PUSHER_KEY') }}">
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">{{ _lang('PUSHER APP SECRET') }}</label>						
										<input type="text" class="form-control" name="PUSHER_SECRET" value="{{ get_option('PUSHER_SECRET') }}">
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">{{ _lang('CLUSTER') }}</label>						
										<input type="text" class="form-control" name="PUSHER_CLUSTER" value="{{ get_option('PUSHER_CLUSTER') }}">
									  </div>
									</div>
									
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">حداکثر اندازه فایل ارسالی</label>
										<input type="text" class="form-control" name="chat_max_upload_size" value="{{ get_option('chat_max_upload_size') }}">
									  </div>
									</div>
									
									<div class="col-md-6">
									  <div class="form-group">
										<label class="control-label">انواع قابل قبول فایل ارسالی</label>
										<input type="text" class="form-control" name="chat_file_type_supported" value="{{ get_option('chat_file_type_supported','png,jpg,jpeg,doc,pdf') }}" placeholder="Ex: png,jpeg,pdf,doc">
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
				  
				  <div id="cron_jobs" class="tab-pane fade">
					 <div class="card">
						<div class="card-body">
						   <h4 class="mb-4 header-title panel-title">کرون جابز</h4>
						   <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/general_settings/update') }}">				         
								{{ csrf_field() }}
								<div class="row">
									<div class="col-md-12">
									  <div class="form-group">
										<label class="control-label">آدرس کرون جابز (<b>اجرا هر 12 ساعت</b>)</label>
										<input type="text" class="form-control" value="wget -O- {{ url('console/run') }} >> /dev/null" readOnly>
									  </div>
									</div>
							
								</div>
						   </form>	
					   </div>
					 </div>
				  </div>
				  
				  <div id="logo" class="tab-pane fade">
					 <div class="card">
						<div class="card-body">
						   <h4 class="mb-4 header-title panel-title">لگو و فاو آیکن سایت</h4>

							<div class="row">
								<div class="col-md-6">
									<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/upload_logo') }}" enctype="multipart/form-data">				         	
										{{ csrf_field() }}
										<div class="row">
											<div class="col-md-12">
											  <div class="form-group">
												<label class="control-label">بارگذاری</label>
												<input type="file" class="form-control dropify" name="logo" data-max-file-size="8M" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG" data-default-file="{{ get_logo() }}" required>
											  </div>
											</div>
											
											<br>
											<div class="col-md-12">
											  <div class="form-group">
												<button type="submit" class="btn btn-primary btn-block">بارگذاری</button>
											  </div>
											</div>	
										</div>	
									</form>
								</div>

								<div class="col-md-6">
									<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/general_settings/update') }}" enctype="multipart/form-data">	
										{{ csrf_field() }}
										<div class="row">	
											<div class="col-md-12">
											  <div class="form-group">
												<label class="control-label">بارگذاری فاو آیکن (PNG)</label>
												<input type="file" class="form-control dropify" name="favicon" data-max-file-size="2M" data-allowed-file-extensions="png" data-default-file="{{ get_favicon() }}" required>
											  </div>
											</div>
											
											<br>
											<div class="col-md-12">
											  <div class="form-group">
												<button type="submit" class="btn btn-primary btn-block">بارگذاری</button>
											  </div>
											</div>	
										</div>
                                    </form>										
								</div>									
							<div>
					   </div>
					 </div>
				  </div>
				  
			   </div>  
			</div>
		  </div>
	  </div>
</div>
@endsection


