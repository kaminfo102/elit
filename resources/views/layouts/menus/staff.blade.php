@php $permissions = permission_list(); @endphp

@if( has_feature( 'contacts_limit' ) )
<li>
	<a href="javascript: void(0);"><i class="ti-id-badge"></i><span>مشتری ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('contacts.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('contacts') }}">لیست مخاطبین</a></li>
		@endif
		
		@if (in_array('contacts.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('contacts/create') }}">مخاطب جدید</a></li>
		@endif
		
		@if (in_array('contact_groups.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('contact_groups') }}">گروه مخاطبین</a></li>
	    @endif
	</ul>
</li>
@endif

@if( has_feature('project_management_module') )
	@if (in_array('leads.index', $permissions))
	<li>
	    <a href="{{ route('leads.index') }}"><i class="fas fa-tty"></i><span>سر نخ</span></a>
	</li>
	@endif

	@if (in_array('projects.index', $permissions))
	<li>
		<a href="{{ route('projects.index') }}"><i class="ti-briefcase"></i><span>پروژه ها</span></a>
	</li>
	@endif

	@if (in_array('tasks.index', $permissions))
	<li>
		<a href="{{ route('tasks.index') }}"><i class="ti-check-box"></i><span>کارها</span></a>
	</li>
	@endif
@endif

<li>
	<a href="javascript: void(0);"><i class="ti-shopping-cart"></i><span>محصولات</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('products.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('products/create') }}">کالای جدید</a></li>
		@endif
	  
		@if (in_array('products.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('products') }}">لیست محصولات</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-agenda"></i><span>سرویس ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('services.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('services/create') }}">سرویس جدید</a></li>
		@endif
		
		@if (in_array('services.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('services') }}">لیست سرویس ها</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-truck"></i><span>تامین کنندگان</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('suppliers.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('suppliers/create') }}">جدید</a></li>
		@endif
		
		@if (in_array('suppliers.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('suppliers') }}">لیت تامین کنندگان</a></li>
	    @endif
	</ul>
</li>

@if( has_feature('inventory_module') )
<li>
	<a href="javascript: void(0);"><i class="ti-bag"></i><span>خرید ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('purchase_orders.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('purchase_orders') }}">سفارشات خرید</a></li>
		@endif
	  
		@if (in_array('purchase_orders.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('purchase_orders/create') }}">سفارش خرید جدید</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-back-left"></i><span>برگشتی</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('purchase_returns',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('purchase_returns') }}">خرید برگشتی</a></li>
		@endif
	  
		@if (in_array('sales_returns',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('sales_returns') }}">{{ _lang('بازگشت فروش') }}</a></li>
	    @endif
	</ul>
</li>
@endif

<li>
	<a href="javascript: void(0);"><i class="ti-shopping-cart-full"></i><span>فروش ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if( has_feature('invoice_limit') )
			@if (in_array('invoices.create',$permissions))
				<li class="nav-item"><a class="nav-link" href="{{ url('invoices/create') }}">فروش جدید</a></li>
			@endif
			
			@if (in_array('invoices.index',$permissions))
				<li class="nav-item"><a class="nav-link" href="{{ url('invoices') }}">لیست فاکتورها</a></li>
			@endif
		@endif
		
		@if( has_feature('quotation_limit') )
			@if (in_array('quotations.create',$permissions))
				<li class="nav-item"><a class="nav-link" href="{{ url('quotations/create') }}">پیش فاکتور جدید</a></li>
			@endif
		  
			@if (in_array('quotations.index',$permissions))
				<li class="nav-item"><a class="nav-link" href="{{ url('quotations') }}">لیست پیش فاکتورها</a></li>
		    @endif
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-credit-card"></i><span>حساب ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('accounts.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('accounts') }}">لیست حسابها</a></li>
		@endif
	  
	    @if (in_array('accounts.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('accounts/create') }}">حساب جدید</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-receipt"></i><span>تراکنش ها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('income.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('income') }}">درآمد/هزینه</a></li>
		@endif
		
		@if (in_array('expense.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('expense') }}">هزینه</a></li>
		@endif
		
		@if (in_array('transfer.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('transfer/create') }}">انتقال</a></li>
		@endif
	  
		@if (in_array('income.income_calendar',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('income/calendar') }}">تقویم درآمد</a></li>
		@endif
	  
	    @if (in_array('expense.expense_calendar',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('expense/calendar') }}">تقویم مخارج</a></li>
	    @endif
	</ul>
</li>

@if( has_feature('recurring_transaction') )
<li>
	<a href="javascript: void(0);"><i class="ti-wallet"></i><span>تراکنش های تکرار شده</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('repeating_income.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('repeating_income/create') }}">تکرار درآمد جدید</a></li>
		@endif
	  
		@if (in_array('repeating_income.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('repeating_income') }}">لیست درآمد های تکرار شده</a></li>
		@endif
	  
		@if (in_array('repeating_expense.create',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('repeating_expense/create') }}">هزینه تکرار شده جدید</a></li>
		@endif
	  
		@if (in_array('repeating_expense.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('repeating_expense') }}">لیست هزینه های تکرار شده</a></li>
	    @endif
	</ul>
</li>
@endif

@if(get_option('live_chat') == 'enabled' && has_feature('live_chat') )
	<li>
       <a href="{{ url('live_chat') }}"><i class="far fa-comment"></i><span>پیغام رسان</span><span class="chat-notification {{ unread_message_count() > 0 ? 'show' : 'hidden' }}">{{ unread_message_count() }}</span></a>
	</li>
@endif

@if( has_feature('file_manager') )
	@if (in_array('file_manager.index',$permissions))
		<li>
			<a href="{{ url('file_manager') }}"><i class="ti-folder"></i><span>مدیریت فایل}</span></a>
		</li>
	@endif
@endif

<li>
	<a href="javascript: void(0);"><i class="ti-bar-chart"></i><span>گزارشات</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('reports.account_statement',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/account_statement') }}">صورت حساب</a></li>
		@endif
	  
		@if (in_array('reports.day_wise_income',$permissions))
		<li class="nav-item"><a class="nav-link" href="{{ url('reports/day_wise_income') }}">گزارش جزئیات درآمد</a></li>
		@endif
	  
		@if (in_array('reports.date_wise_income',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/date_wise_income') }}">{{ _lang('تاریخ بر طبق درآمد') }}</a></li>
		@endif
	  
		@if (in_array('reports.day_wise_expense',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/day_wise_expense') }}">{{ _lang('گزارش جزئیات هزینه ها') }}</a></li>
		@endif
	  
	    @if (in_array('reports.date_wise_expense',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/date_wise_expense') }}">{{ _lang('تاریخ بر طبق هزینه ها') }}</a></li>
		@endif
	  
	    @if (in_array('reports.transfer_report',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/transfer_report') }}">گزارش انتقال</a></li>
		@endif
	  
	    @if (in_array('reports.income_vs_expense',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/income_vs_expense') }}">درآمد یا هزینه ها</a></li>
		@endif
	  
		@if (in_array('reports.report_by_payer',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/report_by_payer') }}">گزارش بر اساس پرداخت کننده ها</a></li>
		@endif
	  
	    @if (in_array('reports.report_by_payee',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('reports/report_by_payee') }}">گزارش بر اساس دریافت کننده ها</a></li>
	    @endif
	</ul>
</li>

<li>
	<a href="javascript: void(0);"><i class="ti-settings"></i><span>تنظیمات</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		@if (in_array('company.change_settings',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('company/general_settings') }}">تنظیمات شرکت</a></li>
		@endif
	  
	    @if (in_array('company_email_template.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('company_email_template') }}">قالب ایمیل</a></li>
		@endif
	  
	    @if (in_array('chart_of_accounts.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('chart_of_accounts') }}">انواع درآمد و هزینه</a></li>
		@endif
		
		@if (in_array('payment_methods.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('payment_methods') }}">روش پرداخت</a></li>
		@endif
		
		@if (in_array('product_units.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('product_units') }}">واحد کالا</a></li>
		@endif
	  
		@if (in_array('taxs.index',$permissions))
			<li class="nav-item"><a class="nav-link" href="{{ url('taxs') }}">تنظیمات مالیات</a></li>
	    @endif
	</ul>
</li>