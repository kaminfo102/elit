@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-sm-3">
	    <ul class="nav flex-column nav-tabs settings-tab" role="tablist">
	      <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#global_settings">تنظیمات عمومی</a></li>
		  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#home_page">صفحه اصلی</a></li>
		  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#about_page">صفحه درباره ما</a></li>
		  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#terms_page">شرایط و دستورالعمل ها</a></li>
		  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#seo">تنظیمات سئو</a></li>
		  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#social_links">لینک شبکه های اجتماعی</a></li>
		  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#custom_css">CSS سفارشی</a></li>
	    </ul>
	</div>

	@php $language_list = get_language_list(); @endphp
	  
	<div class="col-sm-9">
		<div class="tab-content">

			<div id="global_settings" class="tab-pane active">
				<div class="card">
				    <div class="card-body">
					<h4 class="mb-4 header-title panel-title">تنظیمات عمومی</h4>
						<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/theme_option/update') }}" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="row">

								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">تصویر بنر</label>
									<input type="file" class="dropify" name="home_banner_image" data-allowed-file-extensions="jpg jpeg png" data-default-file="{{ get_option('home_banner_image') != '' ? asset('public/uploads/media/'.get_option('home_banner_image')) : theme_asset('assets/images/header-bg.jpg') }}">
								  </div>
								</div>
								
								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">صفحه زیر بنر</label>
									<input type="file" class="dropify" name="sub_banner_image" data-allowed-file-extensions="jpg jpeg png" data-default-file="{{ get_option('sub_banner_image') != '' ? asset('public/uploads/media/'.get_option('sub_banner_image')) : theme_asset('assets/images/header-bg.jpg') }}">
								  </div>
								</div>
								
								<div class="col-md-8">
								  <div class="form-group">
									<label class="control-label">لینک ویدیو تبلیغاتی</label>
									<input type="text" class="form-control" name="promo_video_url" value="{{ get_option('promo_video_url') }}">
								  </div>
								</div>

								<div class="col-md-4">
								  <div class="form-group">
									<label class="control-label">آدرس ایمیل مخاطبین</label>
									<input type="text" class="form-control" name="contact_email" value="{{ get_option('contact_email') }}">
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
			</div><!--End Tab-->
				
			<div id="home_page" class="tab-pane">
				<div class="card">
				    <div class="card-body">
					    <h4 class="mb-4 header-title panel-title">صفحه اصلی</h4>

					    <ul class="nav nav-tabs">
						    @foreach($language_list as $language)
							 	<li class="nav-item">
							 	   <a class="nav-link {{ $loop->first ? 'active' : '' }}" data-toggle="tab" href="#home-language-{{ $loop->index + 1 }}">{{ $language }}</a>
							  	</li>
						    @endforeach
						</ul>
						<br>

					    <form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/theme_option/update') }}" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="tab-content">

								@foreach($language_list as $language)
								<div class="tab-pane container {{ $loop->first ? 'active' : '' }}" id="home-language-{{ $loop->index + 1 }}">
									<div class="row">
										
										<div class="col-md-12">
										  <div class="form-group">
											<label class="control-label">عنوان قهرمان</label>
											<input type="text" class="form-control" name="hero_title[{{$language}}]" value="{{ get_array_option('hero_title',$language) }}">
										  </div>
										</div>
										
										<div class="col-md-12">
										  <div class="form-group">
											<label class="control-label">زیر عنوان قهرمان</label>
											<input type="text" class="form-control" name="hero_sub_title[{{$language}}]" value="{{ get_array_option('hero_sub_title',$language) }}">
										  </div>
										</div>


										<div class="col-md-12">
										  <div class="form-group">
											<label class="control-label">کپی رایت سایت</label>
											<input type="text" class="form-control" name="website_copyright[{{$language}}]" value="{{ get_array_option('website_copyright',$language) }}">
										  </div>
										</div>

										<div class="col-md-12">
										  <div class="form-group">
											<button type="submit" class="btn btn-primary">ذخیره تنظیمات</button>
										  </div>
										</div>
									</div> <!--End Row-->
								</div>

								@endforeach
							</div>
					    </form>
					</div>
				</div>
			</div> <!--End Tab-->

			<div id="about_page" class="tab-pane fade">
				<div class="card">
				    <div class="card-body">
					    <h4 class="mb-4 header-title panel-title">صفحه درباره ما</h4>

					     <ul class="nav nav-tabs">
						    @foreach($language_list as $language)
							 	<li class="nav-item">
							 	   <a class="nav-link {{ $loop->first ? 'active' : '' }}" data-toggle="tab" href="#about-language-{{ $loop->index + 1 }}">{{ $language }}</a>
							  	</li>
						    @endforeach
						</ul>
						<br>

						<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/theme_option/update') }}" enctype="multipart/form-data">
							{{ csrf_field() }}

							<div class="tab-content">

								@foreach($language_list as $language)
								<div class="tab-pane container {{ $loop->first ? 'active' : '' }}" id="about-language-{{ $loop->index + 1 }}">
									<div class="row">

										<div class="col-md-12">
										  <div class="form-group">
											<label class="control-label">درباره محتوا</label>
											<textarea class="form-control summernote" rows="10" name="about_content[{{$language}}]">{{ get_array_option('about_content',$language) }}</textarea>
										  </div>
										</div>

										<div class="col-md-12">
										  <div class="form-group">
											<label class="control-label">درباره تصویر</label>
											<input type="file" class="dropify" name="about_image[{{$language}}]" data-allowed-file-extensions="jpg jpeg png" data-default-file="{{ get_array_option('about_image',$language) != '' ? asset('public/uploads/media/'.get_array_option('about_image',$language)) : theme_asset('assets/images/about.png') }}">
										  </div>
										</div>
									
										<div class="col-md-12">
										  <div class="form-group">
											<button type="submit" class="btn btn-primary">ذخیره</button>
										  </div>
										</div>
									</div>		
								</div>
								@endforeach
							</div>	<!--End Tab Content-->					
						</form>
				    </div>
				 </div>
			</div><!--End Tab-->

			<div id="terms_page" class="tab-pane fade">
				<div class="card">
				    <div class="card-body">
						<h4 class="mb-4 header-title panel-title">شرایط و دستورالعمل</h4>

						  <ul class="nav nav-tabs">
						    @foreach($language_list as $language)
							 	<li class="nav-item">
							 	   <a class="nav-link {{ $loop->first ? 'active' : '' }}" data-toggle="tab" href="#terms-language-{{ $loop->index + 1 }}">{{ $language }}</a>
							  	</li>
						    @endforeach
						</ul>
						<br>

						<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/theme_option/update') }}" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="tab-content">

								@foreach($language_list as $language)
								<div class="tab-pane container {{ $loop->first ? 'active' : '' }}" id="terms-language-{{ $loop->index + 1 }}">
									<div class="row">
										
										<div class="col-md-12">
										  <div class="form-group">
											<label class="control-label">شرایط و دستورالعمل</label>
											<textarea class="form-control summernote" rows="10" name="terms_condition_content">{{ get_option('terms_condition_content') }}</textarea>
										  </div>
										</div>
									
										<div class="col-md-12">
										  <div class="form-group">
											<button type="submit" class="btn btn-primary">ذخیره</button>
										  </div>
										</div>
									</div>	<!--End Row-->	
								</div>
								@endforeach
							</div>				
						</form>
				    </div>
				 </div>
			</div><!--End Tab-->
			 
			
			<div id="seo" class="tab-pane fade">
				<div class="card">
				    <div class="card-body">
					<h4 class="mb-4 header-title panel-title">تنظیمات سئو</h4>
						<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/theme_option/update') }}" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="row">
								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">عنوان سایت</label>
									<input type="text" class="form-control" name="website_title" value="{{ get_option('website_title','ElitKit') }}">
								  </div>
								</div>
								
								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">کلمات متا</label>
									<input type="text" class="form-control" name="meta_keywords" value="{{ get_option('meta_keywords') }}">
								  </div>
								</div>
								
								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">توضیحات متا</label>
									<textarea class="form-control" name="meta_description">{{ get_option('meta_description') }}</textarea>
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
			</div><!--End Tab-->		

			<div id="social_links" class="tab-pane fade">
				<div class="card">
				    <div class="card-body">
					<h4 class="mb-4 header-title panel-title">لینک شبکه های اجتماعی</h4>
						<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/theme_option/update') }}" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="row">
								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">اینستاگرام</label>
									<input type="text" class="form-control" name="facebook_link" value="{{ get_option('facebook_link') }}">
								  </div>
								</div>

								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">تویتر</label>
									<input type="text" class="form-control" name="twitter_link" value="{{ get_option('twitter_link') }}">
								  </div>
								</div>

								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">تلگرام</label>
									<input type="text" class="form-control" name="instagram_link" value="{{ get_option('instagram_link') }}">
								  </div>
								</div>
							
								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">واتس آپ</label>
									<input type="text" class="form-control" name="linkedin_link" value="{{ get_option('linkedin_link') }}">
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
			</div><!--End Tab-->		


			<div id="custom_css" class="tab-pane fade">
				<div class="card">
				    <div class="card-body">
					<h4 class="mb-4 header-title panel-title"> سی اس اس سفارشی</h4>
						<form method="post" class="appsvan-submit params-panel" autocomplete="off" action="{{ url('administration/theme_option/update') }}" enctype="multipart/form-data">
							{{ csrf_field() }}
							<div class="row">
								
								<div class="col-md-12">
								  <div class="form-group">
									<label class="control-label">د سی اس اس</label>
									<textarea class="form-control" rows="10" name="custom_css_code">{{ get_option('custom_css_code') }}</textarea>
									<span>نوشتن کد css بدون تگ</span>
								  </div>
								</div>
							
								<div class="col-md-12">
								  <div class="form-group">
									<button type="submit" class="btn btn-primary">ذخیره</button>
								  </div>
								</div>
							</div>						
						</form>
				    </div>
				 </div>
			</div><!--End Tab-->			

		</div>
	</div>
</div>
@endsection