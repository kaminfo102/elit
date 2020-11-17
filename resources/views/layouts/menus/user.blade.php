@if( has_feature( 'contacts_limit' ) )
<li>
	<a href="javascript: void(0);"><i class="ti-id-badge"></i><span>مشتریان</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('contacts') }}">لیست مخاطبان</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('contacts/create') }}">مخاطب جدید</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('contact_groups') }}">گروه مخاطبان</a></li>
	</ul>
</li>
@endif

@if( has_feature('project_management_module') )
<li>
	<a href="{{ route('leads.index') }}"><i class="fas fa-tty"></i><span>سرنخ </span></a>
</li>

<li>
	<a href="{{ route('projects.index') }}"><i class="ti-briefcase"></i><span>پروژه ها</span></a>
</li>

<li>
	<a href="{{ route('tasks.index') }}"><i class="ti-check-box"></i><span>کارها</span></a>
</li>
@endif


<li>
	<a href="javascript: void(0);"><i class="ti-shopping-cart"></i><span>محصولات</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('products/create') }}">کالای جدید</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('products') }}">لیست کالاها</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-agenda"></i><span>سرویس ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('services/create') }}">سرویس جدید</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('services') }}">لیست سرویس ها</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-truck"></i><span>تامین کنندگان</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('suppliers/create') }}">تامین کننده جدید</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('suppliers') }}">لیست تامین کنندگان</a></li>
	</ul>
</li>

@if( has_feature('inventory_module') )
<li>
	<a href="javascript: void(0);"><i class="ti-bag"></i><span>خرید</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('purchase_orders') }}">سفارشات خرید</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('purchase_orders/create') }}">ایجاد سفارش خرید جدید</a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-back-left"></i><span>برگشتی</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('purchase_returns') }}">خرید برگشتی</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('sales_returns') }}">فروش برگشتی</a></li>
	</ul>
</li>
@endif


<li>
	<a href="javascript: void(0);"><i class="ti-shopping-cart-full"></i><span>فروش</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if( has_feature('invoice_limit') )
			<li class="nav-item"><a class="nav-link" href="{{ url('invoices/create') }}">فاکتور جدید</a></li>
			<li class="nav-item"><a class="nav-link" href="{{ url('invoices') }}">لیست فاکتورها</a></li>
		@endif

		@if( has_feature('quotation_limit') )
			<li class="nav-item"><a class="nav-link" href="{{ url('quotations/create') }}">پیش فاکتور جدید</a></li>
			<li class="nav-item"><a class="nav-link" href="{{ url('quotations') }}">لیست پیش فاکتورها</a></li>
		@endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-credit-card"></i><span>حساب ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('accounts') }}">لیست حساب ها</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('accounts/create') }}">حساب جدید</a></li>
	</ul>
</li>


<li>
	<a href="javascript: void(0);"><i class="ti-receipt"></i><span>تراکنش ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('income') }}">درآمد/هزینه</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('expense') }}">هزینه</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('transfer/create') }}">انتقال</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('income/calendar') }}">تقویم درآمد ها</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('expense/calendar') }}">تقویم هزینه ها</a></li>
	</ul>
</li>

@if( has_feature('recurring_transaction') )
<li>
	<a href="javascript: void(0);"><i class="ti-wallet"></i><span>تراکنش های تکرار شده</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('repeating_income/create') }}">تکرار درآمد جدید</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('repeating_income') }}">لیست درآمد تکرار شده</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('repeating_expense/create') }}">تکرار هزینه جدید</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('repeating_expense') }}">لیت هزینه های تکرار شده</a></li>
	</ul>
</li>
@endif

@if(get_option('live_chat') == 'enabled' && has_feature('live_chat') )
	<li>
       <a href="{{ url('live_chat') }}"><i class="far fa-comment"></i><span>پیغام رسان</span><span class="chat-notification {{ unread_message_count() > 0 ? 'show' : 'hidden' }}">{{ unread_message_count() }}</span></a>
	</li>
@endif

@if( has_feature('file_manager') )
<li>
	<a href="{{ url('file_manager') }}"><i class="ti-folder"></i><span>مدیریت فایل</span></a>
</li>
@endif

@if( has_feature('staff_limit') )
<li>
	<a href="javascript: void(0);"><i class="ti-user"></i><span>کارمندان</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('staffs') }}">کارمندان</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('staffs/create') }}">کارمند جدید</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ route('roles.index') }}">نقش کارمندان</a></li>
	</ul>
</li>
@endif

<li>
	<a href="javascript: void(0);"><i class="ti-bar-chart"></i><span>گزارشات</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/account_statement') }}">صورت حساب</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/day_wise_income') }}">گزارش جزئیات درآمد</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/date_wise_income') }}">درآمد بر طبق تاریخ</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/day_wise_expense') }}">گزارش جزئیات هزینه ها</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/date_wise_expense') }}">هزینه ها طبق تاریخ</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/transfer_report') }}">گزارش انتقال ها</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/income_vs_expense') }}">درآمد یا هزینه</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/report_by_payer') }}">گزارش براساس پرداخت کننده</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/report_by_payee') }}">گزارش بر اساس دریافت کننده </a></li>
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-settings"></i><span>تنظیمات</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('company/general_settings') }}">تنظیمات شرکت</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('company_email_template') }}">قالب ایمیل</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('permission/control') }}">کنترل دسترسی</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('chart_of_accounts') }}">انواع درآمد و هزینه ها</a></li>
		@if( has_feature('project_management_module') )
			<li class="nav-item"><a class="nav-link" href="{{ url('company/crm_settings') }}">'CRM تنظیمات'</a></li>
		@endif
		<li class="nav-item"><a class="nav-link" href="{{ url('payment_methods') }}">روش پرداخت</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('product_units') }}">واحد کالا</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('taxs') }}">تنظیمات مالیات</a></li>
	</ul>
</li>
