@extends('layouts.public')

@section('content')
<style type="text/css">
@media all {
	.table th {
		background-color: #2a77d6 !important;
		color: #ffffff;
	}
	
	.base_color{
		background: #2a77d6 !important;
	}
}
</style> 

<div class="row">
	<div class="col-md-12">

		@include('backend.client_panel.invoice_template.invoice_actions')
		
		<div class="btn-group mb-1">
			<a class="btn btn-primary btn-round print" href="#" data-print="invoice-view"> چــاپ فــاکتور</a>
			<a class="btn btn-danger btn-round" href="{{ url('invoices/download_pdf/'.encrypt($invoice->id)) }}" >تبدیل به PDF</a>
	    </div>	
		
	<div class="card clearfix">
	
	@php $base_currency = get_company_field( $invoice->company_id, 'base_currency', 'IRR' ); @endphp
	@php $date_format = get_company_field($invoice->company_id, 'date_format','Y-m-d'); @endphp	
	@php $currency = currency($base_currency); @endphp

	@if($invoice->related_to == 'contacts' && isset($invoice->client))
		@php $client_currency = $invoice->client->currency; @endphp
		@php $client = $invoice->client; @endphp
	@else 
		@php $client_currency = $invoice->project->client->currency; @endphp
		@php $client = $invoice->project->client; @endphp
	@endif
	
	<div class="card-body">
		<div class="invoice-box" id="invoice-view">
			 <table cellpadding="0" cellspacing="0">
					<tbody>
						 <tr class="top">
								<td colspan="2">
									 <table>
										<tbody>
											 <tr>
												<td>
													 <b>فاکتور #:</b>  {{ $invoice->invoice_number }}<br>
													 <b>تاریخ ایجاد: </b>{{ jdate($date_format, strtotime( $invoice->invoice_date)) }}<br>
													 <b>تاریخ سر رسید: </b>{{ jdate($date_format, strtotime( $invoice->due_date)) }}
													 <div class="invoice-status {{ strtolower($invoice->status) }}">{{ _dlang(str_replace('_',' ',$invoice->status)) }}</div>
												</td>
												<td class="invoice-logo">
													 <img src="{{ get_company_logo($invoice->company_id) }}" class="wp-100">
												</td>
											 </tr>
										</tbody>
									 </table>
								</td>
						 </tr>
						 <tr class="information">
							<td colspan="2">
	                            <div class="row">
									<div class="invoice-col-6 pt-3">
										 <h5><b>فاکتور برای</b></h5>
										 {{ $client->contact_name }}<br>
										 {{ $client->contact_email }}<br>
										 {!! $client->company_name != '' ? clean($client->company_name).'<br>' : '' !!}
										 {!! $client->address != '' ? clean($client->address).'<br>' : '' !!}
										 {!! $client->vat_id != '' ? 'شماره مالیاتی'.': '.clean($client->vat_id).'<br>' : '' !!}
										 {!! $client->reg_no != '' ? 'شماره ثبت'.': '.clean($client->reg_no).'<br>' : '' !!}
					                         
									</div>
									<!--Company Address-->
									<div class="invoice-col-6 pt-3">
										 <div class="d-inline-block float-md-right">
											 <h5><b>جزئیات شرکت</b></h5>
											 {{ get_company_field($invoice->company_id,'company_name') }}<br>
											 {{ get_company_field($invoice->company_id,'address') }}<br>
											 {{ get_company_field($invoice->company_id,'email') }}<br>
											 {!! get_company_field($invoice->company_id,'vat_id') != '' ? 'شماره مالیاتی'.': '.clean(get_company_field($invoice->company_id,'vat_id')).'<br>' : '' !!}
											 {!! get_company_field($invoice->company_id,'reg_no')!= '' ? 'شماره ثبت'.': '.clean(get_company_field($invoice->company_id,'reg_no')).'<br>' : '' !!}
											 <br>
											 <!--Invoice Payment Information-->
											 <h4>فاکتور برای: &nbsp;{{ decimalPlace($invoice->grand_total, $currency) }}</h4>
											 @if($invoice->client->currency != $base_currency)
												<h4>{{ decimalPlace($invoice->converted_total, currency($invoice->client->currency)) }}</h4>	
											 @endif
										 </div>
									</div>
								</div>
							</td>
						 </tr>
					</tbody>
			 </table>
			 <!--End Invoice Information-->
			 
			 <!--Invoice Product-->
			 <div class="table-responsive">
				<table class="table">
					 <thead class="base_color">
						 <tr>
							 <th>نام</th>
							 <th class="text-center wp-100">تعداد</th>
							 <th class="text-right">قیمت واحد</th>
							 <th class="text-right wp-100">تخفیف</th>
							 <th class="no-print">روش پرداخت</th>
							 <th class="text-right">درصد مالیات</th>
							 <th class="text-right">مجموع</th>
						 </tr>
					 </thead>
					 <tbody  id="invoice">
						 @foreach($invoice->invoice_items as $item)
							 <tr id="product-{{ $item->item_id }}">
								 <td>
									<b>{{ $item->item->item_name }}</b><br>{{ $item->description }}
								 </td>
								 <td class="text-center">{{ $item->quantity }}</td>
								 <td class="text-right">{{ decimalPlace($item->unit_cost, $currency) }}</td>
								 <td class="text-right">{{ decimalPlace($item->discoun, $currency) }}</td>
								 <td class="no-print">{{ isset($item->item->product) ? strtoupper($item->item->product->tax_method) : strtoupper($item->item->service->tax_method)  }}</td>
								 <td class="text-right">{{ decimalPlace($item->tax_amount, $currency) }}</td>
								 <td class="text-right">{{ decimalPlace($item->sub_total, $currency) }}</td>
							 </tr>
						 @endforeach
					 </tbody>
				</table>
			</div>
			 <!--End Invoice Product-->
			 
			 <!--Summary Table-->
			 <div class="col-md-4 pull-right">
				<table class="table table-bordered">
					<tbody>
						<tr>
							 <td>درصد مالیات</td>
							 <td class="text-right">
								<span>{{ decimalPlace($invoice->tax_total, $currency) }}</span>
								@if($client_currency != $base_currency)
									<br><span>{{ decimalPlace(convert_currency($base_currency, $client_currency, $invoice->tax_total), currency($client_currency)) }}</span>	
								@endif
							 </td>
						</tr>
						<tr>
							 <td><b>مجموع کل</b></td>
							 <td class="text-right">
								 <b>{{ decimalPlace($invoice->grand_total, $currency) }}</b>
								 @if($client_currency != $base_currency)
									<br><b>{{ decimalPlace($invoice->converted_total, currency($client_currency)) }}</b>
								 @endif
							 </td>
						</tr>
						<tr>
							 <td>جمع پرداختی</td>
							 <td class="text-right">
								<span>{{ decimalPlace($invoice->paid, $currency) }}</span>
								@if($client_currency != $base_currency)
									<br><span>{{ decimalPlace(convert_currency($base_currency, $client_currency, $invoice->paid), currency($client_currency)) }}</span>	
								@endif
							 </td>
						</tr>
						@if($invoice->status != 'پرداخت')
							<tr>
								 <td>مبلغ سر رسید</td>
								 <td class="text-right">
									<span>{{ decimalPlace(($invoice->grand_total - $invoice->paid), $currency) }}</span>
									@if($client_currency != $base_currency)
									<br><span>{{ decimalPlace(convert_currency($base_currency, $client_currency, ($invoice->grand_total - $invoice->paid)), currency($client_currency)) }}</span>	
									@endif
								 </td>
							</tr>
						@endif
					</tbody>
				</table>
			 </div>
			 <!--End Summary Table-->
			 <div class="clearfix"></div>
			 <!--Related Transaction-->
			 @if( ! $transactions->isEmpty() )
				<div class="col-md-12">
					<div class="table-responsive">
						<table class="table table-bordered mt-2">
							<thead class="base_color">
								<tr>
								   <th colspan="5" class="text-center">تاریخچه پرداخت</th>
								</tr>
								<tr>
									<th>تاریخ</th>
									<th>حساب</th>
									<th class="text-right">مبلغ</th>
									<th class="text-right">مبلغ پایه</th>
									<th>روش پرداخت</th>
								</tr>
							</thead>
							<tbody>
								@foreach($transactions as $transaction)
									<tr id="transaction-{{ $transaction->id }}">
										<td>{{ date($date_format, strtotime($transaction->trans_date)) }}</td>
										<td>{{ $transaction->account->account_title.' - '.$transaction->account->account_currency }}</td>
										<td class="text-right">{{ currency($transaction->account->account_currency).' '.decimalPlace($transaction->amount) }}</td>
										<td class="text-right">{{ $currency.' '.decimalPlace($transaction->amount) }}</td>
										<td>{{ $transaction->payment_method->name }}</td>
									</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			 @endif
			 <!--END Related Transaction-->	
			 
			 <!--Invoice Note-->
			 @if($invoice->note  != '')
				<div class="col-md-12">
			        <div class="invoice-note">{{ $invoice->note }}</div>
				</div> 
			 @endif
			 <!--End Invoice Note-->
			 
			 <!--Invoice Footer Footer-->
			 @if(get_company_field($invoice->company_id,'invoice_footer')  != '')
				<div class="col-md-12">
					<div class="invoice-note">{!! xss_clean(get_company_field($invoice->company_id,'invoice_footer')) !!}</div>
			    </div> 
			 @endif
			 <!--End Footer Text-->
			 
		</div>
	 </div>
  </div>
 </div>
</div>
@endsection


