@extends('layouts.app')

@section('content')
<style type="text/css">
@media all {
	.classic-table{
		width:100%;
		color: #000;
	}
	.classic-table td{
		color: #000;
	}
	
	#invoice-item-table th, #invoice-item-table td{
		border: 1px solid #000;
	}
	
	#invoice-summary-table td{
		border: 1px solid #000 !important;
	}
	
	#invoice-payment-history-table{
		margin-bottom: 50px;
	}
	
	#invoice-payment-history-table th, #invoice-payment-history-table td{
		border: 1px solid #000 !important;
	}
	
	#invoice-view{
	   padding:15px;	
	}
	
	.invoice-note{
		margin-bottom: 50px;
	}
	
	.table th {
	   background-color: whitesmoke !important;
	   color: #000;
	}
	
	.table td {
	   color: #2d2d2d;
	}
	
	.base_color{
		background-color: whitesmoke !important;
	}
	
}
</style>  

<div class="row">
	<div class="col-12">
		
		@include('backend.accounting.invoice.invoice-actions')
		@php $date_format = get_company_option('date_format','Y-m-d'); @endphp	

		@if($invoice->related_to == 'contacts' && isset($invoice->client))
			@php $client_currency = $invoice->client->currency; @endphp
			@php $client = $invoice->client; @endphp
		@else 
			@php $client_currency = $invoice->project->client->currency; @endphp
			@php $client = $invoice->project->client; @endphp
		@endif
		
		<div class="card clearfix">
			
			<span class="panel-title d-none">نمایش فاکتور</span>
			
			<div class="card-body">
				<div id="invoice-view">
					<table class="classic-table">
						<tbody>
							 <tr class="top">
								<td colspan="2">
									 <table class="classic-table">
										<tbody>
											 <tr>
												<td>
													<h3><b>{{ get_company_option('company_name') }}</b></h3>
													{{ get_company_option('address') }}<br>
													{{ get_company_option('email') }}<br>
													{!! get_company_option('vat_id') != '' ? 'VAT ID'.': '.clean(get_company_option('vat_id')).'<br>' : '' !!}
													{!! get_company_option('reg_no')!= '' ? 'REG NO'.': '.clean(get_company_option('reg_no')).'<br>' : '' !!}
												</td>
												<td class="float-right">
													<img src="{{ get_company_logo() }}" class="wp-100">
												</td>
											 </tr>
										</tbody>
									 </table>
								</td>
							 </tr>
							 
							 <tr class="information">
								<td colspan="2" class="pt-4">
									<div class="row">
										<div class="invoice-col-6 pt-3">
											 <h5><b>فاکتور برای</b></h5>
											 {{ $client->contact_name }}<br>
											 {{ $client->contact_email }}<br>
											 {!! $client->company_name != '' ? clean($client->company_name).'<br>' : '' !!}
											 {!! $client->address != '' ? clean($client->address).'<br>' : '' !!}
											 {!! $client->vat_id != '' ?'VAT ID'.': '.clean($client->vat_id).'<br>' : '' !!}
											 {!! $client->reg_no != '' ? 'REG NO'.': '.clean($client->reg_no).'<br>' : '' !!}      
										</div>
											
										<!--Company Address-->
										<div class="invoice-col-6 pt-3">	
											<div class="d-inline-block float-md-right">
												<h5><b>جزئیات فاکتور</b></h5>
												
												<b>فاکتور #:</b> {{ $invoice->invoice_number }}<br>
												
												<b>تاریخ فاکتور:</b> {{ jdate($date_format,strtotime( $invoice->invoice_date)) }}<br>
																								
												<b>تاریخ سر رسید:</b> {{ jdate($date_format,strtotime( $invoice->due_date)) }}<br>							
												
												<b>وضعیت پرداختی:</b> {{ _dlang(str_replace('_',' ',$invoice->status)) }}<br>
											</div>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!--End Invoice Information-->
					
					@php $currency = currency(); @endphp
					@php $base_currency = base_currency(); @endphp
					
					<!--Invoice Product-->
					<div class="table-responsive">
						<table class="table table-bordered mt-2" id="invoice-item-table">
							 <thead class="base_color">
								 <tr>
									 <th>نام</th>
									 <th class="text-center wp-100">تعداد</th>
									 <th class="text-right">قیمت</th>
									 <th class="text-right wp-100">تخفیف</th>
									 <th class="no-print">روش مالیات</th>
									 <th class="text-right">مالیات</th>
									 <th class="text-right">مجموع</th>
								 </tr>
							 </thead>
							 <tbody id="invoice">
								 @foreach($invoice->invoice_items as $item)
									<tr id="product-{{ $item->item_id }}">
										<td>
											<b>{{ $item->item->item_name }}</b><br>{{ $item->description }}
										</td>
										<td class="text-center">{{ $item->quantity }}</td>
										<td class="text-right">{{ decimalPlace($item->unit_cost, $currency) }}</td>
										<td class="text-right">{{ decimalPlace($item->discount, $currency) }}</td>
										<td class="no-print">{{ strtoupper($item->tax_method) }}</td>
										<td class="text-right">{{ decimalPlace($item->tax_amount, $currency) }}</td>
										<td class="text-right">{{ decimalPlace($item->sub_total, $currency) }}</td>
									</tr>
								 @endforeach
							 </tbody>
						</table>
					</div>
					<!--End Invoice Product-->	
					 
					 
					<!--Summary Table-->
					<div class="invoice-summary-right">
						<table class="table table-bordered" id="invoice-summary-table">
							 <tbody>
									<tr>
										 <td>مالیات</td>
										  <td class="text-right">
											<span>{{ decimalPlace($invoice->tax_total, $currency) }}</span>
											@if($client_currency != $base_currency)
												<br><span>{{ decimalPlace(convert_currency($base_currency, $client_currency, $invoice->tax_total), currency($client_currency)) }}</span>	
											@endif
										 </td>
									</tr>
									<tr>
										 <td><b>جمع کل</b></td>
										 <td class="text-right">
											 <b>{{ decimalPlace($invoice->grand_total, $currency) }}</b>
											 @if($client_currency != $base_currency)
												<br><b>{{ decimalPlace($invoice->converted_total, currency($client_currency)) }}</b>
											 @endif
										 </td>
									</tr>
									<tr>
										 <td>مجموع پرداختی</td>
										 <td class="text-right">
											<span>{{ decimalPlace($invoice->paid, $currency) }}</span>
											@if($client_currency != $base_currency)
												<br><span>{{ decimalPlace(convert_currency($base_currency, $client_currency, $invoice->paid), currency($client_currency)) }}</span>	
											@endif
										 </td>
									</tr>
									@if($invoice->status != 'Paid')
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
					    <div class="table-responsive">
							<table class="table table-bordered" id="invoice-payment-history-table">
								<thead class="base_color">
									<tr>
									   <td colspan="4" class="text-center"><b>تاریخچه پرداختی</b></td>
									</tr>
									<tr>
										<th>تاریخ</th>
										<th>حساب</th>
										<th>مبلغ</th>
										<th>روش پرداخت</th>
									</tr>
								</thead>
								<tbody>  
								    @foreach($transactions as $transaction)
										<tr id="transaction-{{ $transaction->id }}">
											<td>{{ jdate($date_format, strtotime($transaction->trans_date)) }}</td>
											<td>{{ $transaction->account->account_title.' - '.$transaction->account->account_currency }}</td>
											<td class="text-right">{{ decimalPlace($transaction->amount, currency($transaction->account->account_currency)) }}</td>
											<td>{{ $transaction->payment_method->name }}</td>
										</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					@endif
					<!--END Related Transaction-->		
					 
					<!--Invoice Note-->
					@if($invoice->note  != '')
						<div class="invoice-note">{{ $invoice->note }}</div>
					@endif
					<!--End Invoice Note-->
					 
					<!--Invoice Footer Text-->
					@if(get_company_option('invoice_footer')  != '')
						<div class="invoice-note">{!! xss_clean(get_company_option('invoice_footer')) !!}</div>
					@endif
					<!--End Invoice Note-->
				</div>
			</div>
		</div>
    </div><!--End Classic Invoice Column-->
</div><!--End Classic Invoice Row-->
@endsection



