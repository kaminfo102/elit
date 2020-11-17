@extends('theme.default.layouts.website')

@section('content')

<!--====== PRICING PART START ======-->
<section id="pricing" class="pricing-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title text-center pb-10">
                    <h4 class="title">قیمت های ما</h4>
                    <p class="text">اتلاف وقت و هزینه خود را برای طراحی و مدیریت وب سایتی که نتیجه ای ندارد ، متوقف کنید. خوشبختی تضمین شده!
                    </p>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->

        <div class="row mt-4">
            <div class="col-md-12 text-center"> 
                <button class="btn btn-primary btn-xs" id="btn-monthly">پلن ماهانه</button>
                <button class="btn btn-outline-info btn-xs" id="btn-yearly">پلن سالانه</button>
            </div>
        </div>


        <div class="row justify-content-center">
            @php $currency = currency(get_option('currency','IRR')); @endphp

            @foreach(\App\Package::all() as $package)
                <div class="col-lg-4 col-md-7 col-sm-9 monthly-package">
                    <div class="single-pricing {{ $package->is_featured == 1 ? 'pro' : '' }} mt-40">
                        
                        @if($package->is_featured )
                            <div class="pricing-baloon">
                                <img src="{{ asset('public/theme/default/assets/images/baloon.svg') }}" alt="baloon">
                            </div>
                        @endif

                        <div class="pricing-header {{ $package->is_featured == 1 ? '' : 'text-center' }}">
                            <h5 class="sub-title">{{ $package->package_name }}</h5>
                            <span class="price">{{ g_decimal_place($package->cost_per_month, $currency) }}</span>
                            <p class="year">ماهانه</p>
                        </div>
                        <div class="pricing-list">
                            <ul>
                                <li><i class='lni {{ unserialize($package->staff_limit)['monthly'] != 'خیر' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>{{ _dlang(unserialize($package->staff_limit)['monthly']).' '.'کارمند' }}</li>

                                <li><i class='lni {{ unserialize($package->contacts_limit)['monthly'] != 'خیر' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>{{ _dlang(unserialize($package->contacts_limit)['monthly']).' '.'مخاطب' }}</li>

                                <li><i class='lni {{ unserialize($package->invoice_limit)['monthly'] != 'خیر' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>{{ _dlang(unserialize($package->invoice_limit)['monthly']).' '.'فاکتور' }}</li>

                                <li><i class='lni {{ unserialize($package->quotation_limit)['monthly'] != 'خیر' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>{{ _dlang(unserialize($package->quotation_limit)['monthly']).' '.'پیش فاکتور' }}</li>

								<li><i class='lni {{ unserialize($package->project_management_module)['monthly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>مدیریت پروژه</li>
								
                                <li><i class='lni {{ unserialize($package->recurring_transaction)['monthly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>تکرار تراکنش</li>
								
                                <li><i class='lni {{ unserialize($package->inventory_module)['monthly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>ماژول انبارداری</li>

                                <li><i class='lni {{ unserialize($package->live_chat)['monthly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>گفتگوی زنده</li>

                                <li><i class='lni {{ unserialize($package->file_manager)['monthly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>مدیریت فایل</li>
                                
                                <li><i class='lni {{ unserialize($package->online_payment)['monthly'] == 'بله'? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>پرداخت آنلاین</li>
                            </ul>
                        </div>
                        <div class="pricing-btn text-center">
                            <a class="main-btn" href="{{ url('sign_up?package_type=monthly&package='.$package->id) }}">شروع کنید</a>
                        </div>
                    </div> <!-- single pricing -->
                </div>



                <div class="col-lg-4 col-md-7 col-sm-9 yearly-package">
                    <div class="single-pricing {{ $package->is_featured == 1 ? 'pro' : '' }} mt-40">
                        
                        @if($package->is_featured )
                            <div class="pricing-baloon">
                                <img src="{{ asset('public/theme/default/assets/images/baloon.svg') }}" alt="baloon">
                            </div>
                        @endif

                        <div class="pricing-header {{ $package->is_featured == 1 ? '' : 'text-center' }}">
                            <h5 class="sub-title">{{ $package->package_name }}</h5>
                            <span class="price">{{ g_decimal_place($package->cost_per_year, $currency) }}</span>
                            <p class="year">سالانه</p>
                        </div>
                        <div class="pricing-list">
                            <ul>
                                <li><i class='lni {{ unserialize($package->staff_limit)['yearly'] != 'خیر' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>{{ _dlang(unserialize($package->staff_limit)['yearly']).' '.'کارمند' }}</li>

                                <li><i class='lni {{ unserialize($package->contacts_limit)['yearly'] != 'خیر' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>{{ _dlang(unserialize($package->contacts_limit)['yearly']).' '.'مخاطبین' }}</li>

                                <li><i class='lni {{ unserialize($package->invoice_limit)['yearly'] != 'خیر' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>{{ _dlang(unserialize($package->invoice_limit)['yearly']).' '.'فاکتور' }}</li>

                                <li><i class='lni {{ unserialize($package->quotation_limit)['yearly'] != 'خیر' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>{{ _dlang(unserialize($package->quotation_limit)['yearly']).' '.'پیش فاکتور' }}</li>
								
								<li><i class='lni {{ unserialize($package->project_management_module)['yearly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>مدیریت پروژه</li>

                                <li><i class='lni {{ unserialize($package->recurring_transaction)['yearly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>تکرار تراکنش</li>
                                
								<li><i class='lni {{ unserialize($package->inventory_module)['yearly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>ماژول انبارداری</li>
								
                                <li><i class='lni {{ unserialize($package->live_chat)['yearly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>گفتگوی زنده</li>

                                <li><i class='lni {{ unserialize($package->file_manager)['yearly'] == 'بله' ? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>مدیریت فایل</li>
                                
                                <li><i class='lni {{ unserialize($package->online_payment)['yearly'] == 'بله'? 'lni-checkmark-circle' : 'lni-cross-circle' }}'></i>پرداخت آنلاین</li>
                            </ul>
                        </div>
                        <div class="pricing-btn text-center">
                            <a class="main-btn" href="{{ url('sign_up?package_type=yearly&package='.$package->id) }}">شروع کنید</a>
                        </div>
                    </div> <!-- single pricing -->
                </div>

            @endforeach
            
        </div> <!-- row -->
    </div> <!-- conteiner -->
</section>

<!--====== PRICING PART ENDS ======-->

 <!--====== CALL TO ACTION PART START ======-->

<section id="call-to-action" class="call-to-action">
    <div class="call-action-image">
        <img src="{{ asset('public/theme/default/assets/images/call-to-action.png') }}" alt="call-to-action">
    </div>
    
    <div class="container-fluid" style="direction: ltr">
        <div class="row justify-content-end">
            <div class="col-lg-6">
                <div class="call-action-content text-center">
                    <h2 class="call-title">کنجکاو هستید بیشتر بدانید؟ گوش به زنگ باشید</h2>
                    <p class="text">اتلاف وقت و هزینه خود را برای طراحی و مدیریت وب سایتی که نتیجه ای ندارد ، متوقف کنید. خوشبختی تضمین شده!
                    </p>
                    <form action="{{ url('emaiL_subscribed') }}" method="post">
                        {{ csrf_field() }}
                        <div class="call-newsletter">
                            <i class="lni lni-envelope"></i>
                            <input type="email" name="email" placeholder="yourmail@email.com" required>
                            <button type="submit">ثبت اشتراک</button>
                        </div>
                    </form>
                </div> <!-- slider-content -->
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</section>

<!--====== CALL TO ACTION PART ENDS ======-->

<!--====== CONTACT PART START ======-->

<section id="contact" class="contact-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-title text-center pb-10">
                    <h4 class="title">در تماس باشید</h4>
                    <p class="text">اتلاف وقت و هزینه خود را برای طراحی و مدیریت وب سایتی که نتیجه ای ندارد ، متوقف کنید. خوشبختی تضمین شده!
                    </p>
                </div> <!-- section title -->
            </div>
        </div> <!-- row -->
        <div class="row justify-content-center">
            <div class="col-lg-8">

                <div class="alert alert-success d-none" id="contact-message"></div>

                <div class="contact-form">
                    <form id="contact-form" action="{{ url('contact/send_message') }}" method="post" data-toggle="validator">
                        {{ csrf_field() }}
                        <div class="row">
                            <div class="col-md-6">
                                <div class="single-form form-group">
                                    <input type="text" name="name" value="{{ old('name') }}" placeholder="نام شما" data-error="Name is required." required="required">
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>
                            <div class="col-md-6">
                                <div class="single-form form-group">
                                    <input type="email" name="email" value="{{ old('email') }}" placeholder="ایمیل شما" data-error="Valid email is required." required="required">
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>
                            <div class="col-md-12">
                                <div class="single-form form-group">
                                    <input type="text" name="subject" value="{{ old('subject') }}" placeholder="موضوع" data-error="Subject is required." required="required">
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>

                            <div class="col-md-12">
                                <div class="single-form form-group">
                                    <textarea placeholder="پیغام شما" name="message" data-error="Please, leave us a message." required="required">{{ old('message') }}</textarea>
                                    <div class="help-block with-errors"></div>
                                </div> <!-- single form -->
                            </div>
                            <p class="form-message"></p>
                            <div class="col-md-12">
                                <div class="single-form form-group text-center">
                                    <button type="submit" class="main-btn">ارسال پیام</button>
                                </div> <!-- single form -->
                            </div>
                        </div> <!-- row -->
                    </form>
                </div> <!-- row -->
            </div>
        </div> <!-- row -->
    </div> <!-- conteiner -->
</section>

<!--====== CONTACT PART ENDS ======-->

@endsection