<li>
	<a href="javascript: void(0);"><i class="ti-user"></i><span>مدیریت کاربران</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('users/type/user') }}">لیست کاربران</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('users/create') }}">کاربر جدید</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-gift"></i><span>بسته ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('packages') }}">بسته ها</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('packages/create') }}">بسته جدید</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-credit-card"></i><span>پرداختی ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('offline_payment/create') }}">پرداختی های آفلاین</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('members/payment_history') }}">تاریخچه پرداختی ها</a></li>
	</ul>
</li>


<li>
	<a href="javascript: void(0);"><i class="ti-world"></i><span>زبان</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('languages') }}">همه زبان ها</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('languages/create') }}">زبان جدید</a></li>
	</ul>
</li>

<li @if(Request::is('admin/email_subscribers')) class="mm-active" @endif>
    <a href="{{ url('admin/email_subscribers') }}"><i class="ti-email"></i><span>اشتراک های ایمیل</span></a>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-ruler-pencil"></i><span>تنظیمات وبسایت</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('features') }}">ویژگی های نرم افزار</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('faqs') }}">دانش محور/اطلاعات پایه</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('administration/theme_option') }}">تنظیمات پوسته</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-settings"></i><span>مدیریت</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('administration/general_settings') }}">تنظیمات عمومی</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('email_templates') }}">قالب ایمیل</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('administration/currency_rates') }}">نرخ تبدیل</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('administration/backup_database') }}">پشتیبان پایگاه داده</a></li>
	</ul>
</li>