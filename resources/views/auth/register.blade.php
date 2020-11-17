@extends('layouts.login')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card card-signin my-5">              
				<div class="card-header text-center">
				  ساختن اکانت جدید
				</div>

                <div class="card-body">
                    <form method="POST" class="form-signup" autocomplete="off" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <div class="col-md-12">
                                <input id="name" type="text" placeholder="نام کسب و کار" class="form-control{{ $errors->has('business_name') ? ' is-invalid' : '' }}" name="business_name" value="{{ old('business_name') }}" required autofocus>

                                @if ($errors->has('business_name'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('business_name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
							<div class="col-md-12">
                                <input id="name" type="text" placeholder="نام" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>

                                @if ($errors->has('name'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">

                            <div class="col-md-12">
                                <input id="email" type="email" placeholder="آدرس ایمیل" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                                @if ($errors->has('email'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <select id="package" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" name="package" required>
                                    <option value="">انتخاب بسته</option>
                                    {{ create_option('packages','id','package_name') }}
                                </select>    

                                @if ($errors->has('package'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('package') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-md-12">
                                <select id="package_type" class="form-control {{ $errors->has('email') ? ' is-invalid' : '' }}" name="package_type" required>
                                    <option value="">انتخاب نوع بسته</option>
                                    <option value="monthly">بسته ماهانه</option>
                                    <option value="yearly">بسته سالانه</option>
                                </select>    

                                @if ($errors->has('package_type'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('package_type') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">

                            <div class="col-md-12">
                                <input id="password" type="password" placeholder="کلمه عبور" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

                                @if ($errors->has('password'))
                                    <span class="invalid-feedback">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group row">
                           <div class="col-md-12">
                                <input id="password-confirm" type="password" class="form-control" placeholder="تایید کلمه عبور" name="password_confirmation" required>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary btn-block">
                                    ثبـــــت
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
