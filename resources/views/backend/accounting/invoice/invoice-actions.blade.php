<input type="text" class="form-control mb-2" id="invoice_link_2" value="{{ url('client/view_invoice/'.md5($invoice->id)) }}" readOnly="true">
<div>
	<a class="btn btn-dark btn-xs" href="javascript:void(0);" id="copy_link"><i class="far fa-copy"></i> کپی لینک فاکتور</a>
	<a class="btn btn-primary btn-xs print" href="#" data-print="invoice-view"><i class="fas fa-print"></i> چــاپ</a>
	<a class="btn btn-danger btn-xs" href="{{ url('invoices/download_pdf/'.encrypt($invoice->id)) }}"><i class="fas fa-file-pdf"></i> خروجی PDF</a>
	<a class="btn btn-secondary btn-xs ajax-modal" data-title="ارسال ایمیل" href="{{ url('invoices/create_email/'.$invoice->id) }}"><i class="fas fa-envelope-open-text"></i> ارسال ایمیل</a>
	@if($invoice->status == 'Unpaid' || $invoice->status == 'Partially_Paid' )
		<a class="btn btn-success btn-xs ajax-modal" data-title="پرداختی دریافت شده" href="{{ url('invoices/create_payment/'.$invoice->id) }}"><i class="far fa-credit-card"></i> ثـبت پــرداخت</a>
	@endif
	
	@if($invoice->status == 'Unpaid')
		<a class="btn btn-info btn-xs" href="{{ route('invoices.mark_as_cancelled',$invoice->id) }}"><i class="fas fa-times"></i> انتخاب لغو شده</a>
	@endif
	
	<a class="btn btn-warning btn-xs" href="{{ action('InvoiceController@edit', $invoice->id) }}"><i class="fas fa-edit"></i> ویرایش</a>
</div>
	