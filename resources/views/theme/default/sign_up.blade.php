@extends('theme.default.layouts.website')

@section('header')
<div class="page-hero bg_cover" style="background-image: url({{ get_option('sub_banner_image') != '' ? asset('public/uploads/media/'.get_option('sub_banner_image')) : theme_asset('assets/images/header-bg.jpg') }})">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-xl-8 col-lg-10">
				<div class="header-content text-center">
					<h3 class="header-title">ثبت نام</h3>
				</div> <!-- header content -->
			</div>
		</div> <!-- row -->
	</div> <!-- container -->
</div> <!-- header content -->
@endsection

@section('content')

<!--====== Sign Up PART START ======-->
<section id="sign_up" class="general-area">
	<div class="container">
		<div class="row justify-content-left">
			<div class="col-lg-6">
				<div class="section-title text-left pb-10">
					<h4 class="title">ساختن اکانت جدید</h4>
					<p class="text">اتلاف وقت و هزینه خود را برای طراحی و مدیریت وب سایتی که نتیجه ای ندارد ، متوقف کنید. خوشبختی تضمین شده!
					</p>
				</div> <!-- section title -->
			</div>
		</div> <!-- row -->
		<div class="row">
			<div class="col-lg-7 mt-40">
				<div class="auth-form">
					<form action="{{ route('register') }}" method="post" autocomplete="off">
						@csrf
						<div class="row">
							<div class="col-md-12">
								<div class="single-form form-group">
									<input type="text" name="business_name" value="{{ old('business_name') }}" placeholder="نام کسب و کار" required="required">
									@if ($errors->has('business_name'))
	                                    <div class="help-block with-errors">{{ $errors->first('business_name') }}</div>
	                                @endif
								</div> <!-- single form -->
							</div>
							
							<div class="col-md-6">
								<div class="single-form form-group">
									<input type="text" name="name" value="{{ old('name') }}" placeholder="نام شما" required="required">
									@if ($errors->has('name'))
	                                    <div class="help-block with-errors">{{ $errors->first('name') }}</div>
	                                @endif
								</div> <!-- single form -->
							</div>
							
							<div class="col-md-6">
								<div class="single-form form-group">
									<input type="email" name="email" value="{{ old('email') }}" placeholder="ایمیل شما" required="required">
									@if ($errors->has('email'))
	                                    <div class="help-block with-errors">{{ $errors->first('email') }}</div>
	                                @endif
								</div> <!-- single form -->
							</div>
							<div class="col-md-6">
								<div class="single-form form-group">
									<input type="password" name="password" placeholder="کلمه عبور" required="required">
									@if ($errors->has('password'))
	                                    <div class="help-block with-errors">{{ $errors->first('password') }}</div>
	                                @endif
								</div> <!-- single form -->
							</div>
							<div class="col-md-6">
								<div class="single-form form-group">
									<input type="password" name="password_confirmation" placeholder="تایید کلمه عبور" required="required">
									<div class="help-block with-errors"></div>
								</div> <!-- single form -->
							</div>

							<div class="col-md-6">
								<div class="single-form form-group">
									<select id="package" name="package" required>
										<option value="">انتخاب بسته</option>
										{{ create_option('packages', 'id', 'package_name', isset($_GET['package']) ? $_GET['package'] : old('package')) }}
									</select>
									@if ($errors->has('package'))
	                                    <div class="help-block with-errors">{{ $errors->first('package') }}</div>
	                                @endif  
								</div>									
							</div>
							
							<div class="col-md-6">
								<div class="single-form form-group">
									<select name="package_type" id="package_type" required>
										<option value="">نوع بسته</option>
										<option value="monthly">بسته ماهانه</option>
										<option value="yearly">بسته سالانه</option>
									</select> 
									@if ($errors->has('package_type'))
	                                    <div class="help-block with-errors">{{ $errors->first('package_type') }}</div>
	                                @endif   
								</div>									
							</div>								

							<div class="col-md-12">
								<div class="single-form form-group text-center">
									<button type="submit" id="create_account" class="main-btn">ساخت اکانت</button>
									<br><a href="{{ url('register/client_signup') }}" class="btn-link mt-2">ثبت نام کاربر</a>
								</div> <!-- single form -->
							</div>
						</div>
					</form>
				</div>					
			</div> <!-- row -->
			<div class="col-lg-5 mt-40">
				<div class="image">
					<img src="{{ asset('public/theme/default/assets/images/auth.png') }}" alt="features">
				</div>
			</div>
			
		</div> <!-- row -->
	</div> <!-- conteiner -->

</section>

<!--====== Sign Up PART ENDS ======-->
@endsection

@section('js-script')
<script>

var package_type = "{{ isset($_GET['package_type']) ? $_GET['package_type'] : '' }}";
$("#package_type").val(package_type);

</script>
@endsection