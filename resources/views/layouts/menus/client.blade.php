<li><a href="{{ url('client/projects') }}"><i class="ti-briefcase"></i><span>پروژه ها</span></a></li>
<li>
	<a href="javascript: void(0);"><i class="ti-file"></i><span>فاکتورها</span><span class="menu-arrow"><i class="mdi mdi-chevron-right"></i></span></a>
	<ul class="nav-second-level" aria-expanded="false">
		<li class="nav-item"><a class="nav-link" href="{{ url('client/invoices') }}">همه فاکتورها</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('client/invoices/Unpaid') }}">فاکتورهای پرداخت نشده</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('client/invoices/Paid') }}">فاکتورهای پرداخت شده</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('client/invoices/Partially_Paid') }}">اولویت پرداخت فاکتورها</a></li>
		<li class="nav-item"><a class="nav-link" href="{{ url('client/invoices/Canceled') }}">فاکتور های لغو شده</a></li>
	</ul>
</li>

<li><a href="{{ url('client/quotations') }}"><i class="ti-files"></i><span>پیش فاکتور</span></a></li>
<li><a href="{{ url('client/transactions') }}"><i class="ti-wallet"></i><span>تراکنش ها</span></a></li>

@if(get_option('live_chat') == 'enabled')
	<li>
       <a href="{{ url('live_chat') }}"><i class="far fa-comment"></i><span>پیام رسان</span><span class="chat-notification {{ unread_message_count() > 0 ? 'show' : 'hidden' }}">{{ unread_message_count() }}</span></a>
	</li>
@endif