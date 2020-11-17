@extends('layouts.login')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card card-signin my-5">
                @if (\Session::has('message'))
				  <div class="alert alert-danger text-center">
					<b>{{ \Session::get('message') }}</b>
				  </div>
				@endif	
				
				<div class="card-header text-center">
					پرداخت عضویت
				</div>

                <div class="card-body" id="extend_membership">
                    <form method="POST" class="form-signup" action="{{ url('membership/pay') }}">
                        @csrf

						<div class="col-md-12">
							<div class="form-group">
								<label class="control-label">بسته</label>
								<select id="package" class="form-control" name="package" required>
									<option value="">انتخاب بسته</option>
									{{ create_option('packages', 'id', 'package_name', $user->company->package_id) }}
								</select>  
							</div>									
						</div>
						
						<div class="col-md-12">
							<div class="form-group">
								<label class="control-label">نوع بسته</label>
								<select class="form-control" name="package_type" required>
									<option value="">انتخاب نوع بسته</option>
									<option value="monthly" {{ $user->company->package_type == 'monthly' ? 'selected' : '' }}>بسته ماهانه</option>
									<option value="yearly" {{ $user->company->package_type == 'yearly' ? 'selected' : '' }}>بسته سالانه</option>
								</select>  
							</div>									
						</div>
					
						<div class="col-md-12">
						  <div class="form-group">
							<label class="control-label">درگاه پرداخت</label>
							<select class="form-control" name="gateway" id="gateway" required>
								@if (get_option('paypal_active') == 'بله')
									<option value="PayPal">مستقیم بانک ملی</option>
								@endif
								@if (get_option('stripe_active') == 'بله')
									<option value="Stripe">پی نیکست</option>
							    @endif
							    @if (get_option('razorpay_active') == 'بله')
									<option value="Razorpay">زرین پال</option>
							    @endif
							    @if (get_option('paystack_active') == 'بله')
									<option value="Paystack">مستقیم بانک ملت</option>
							    @endif
							</select>
						  </div>
						</div>
				
						<div class="form-group">
						  <div class="col-md-12">
							<button type="submit" class="btn btn-primary btn-block">پردازش</button>
						  </div>
						</div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
