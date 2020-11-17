@extends('layouts.login')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card card-signin my-5">
                <div class="card-header text-center">آدرس ایمیل خود را تأیید کنید
                </div>

                <div class="card-body text-center">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            یک پیوند تأیید جدید به آدرس ایمیل شما ارسال شده است.
                        </div>
                    @endif

                    قبل از ادامه ، لطفاً ایمیل خود را برای پیوند تأیید بررسی کنید.
                    اگر ایمیل را دریافت نکردید, <a href="{{ route('verification.resend') }}">برای درخواست مورد دیگر اینجا را کلیک کنید</a>.
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
