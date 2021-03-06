@extends('layouts.app')

@section('content')
<style type="text/css">
.classic-table{
	width:100%;
	color: #000;
}
.classic-table td{
	color: #000;
}

#invoice-item-table th{
	border: none;
}

#invoice-summary-table td{
	border: none !important;
}

#invoice-payment-history-table{
	margin-bottom: 50px;
}

#invoice-payment-history-table th{
	border: none !important;
}

#quotation-view{
   padding:15px;	
}

.invoice-note{
	margin-bottom: 50px;
}

.table th {
   background-color: #008ae2 !important;
   color: #FFF;
}

.table td {
   color: #2d2d2d;
}

.base_color{
	background-color: #008ae2 !important;
}
	
</style>  

<div class="row">
	<div class="col-12">
		
		@include('backend.accounting.quotation.quotation-actions')
		@php $date_format = get_company_option('date_format','Y-m-d'); @endphp
		
		<div class="card clearfix">
			
			<span class="panel-title d-none">نمایش پیش فاکتور</span>
			
			<div class="card-body">
				<div id="quotation-view">
					<table class="classic-table">
						<tbody>
							 <tr class="top">
								<td colspan="2">
									 <table class="classic-table">
										<tbody>
											 <tr>
												<td>
													<td class="wp-100">
														<img src="{{ get_company_logo() }}" class="wp-100">
													</td>
												</td>
												<td>	
													<div class="text-left">
														<b class="fs-22">{{ get_company_option('company_name') }}</b><br>
														{{ get_company_option('address') }}<br>
														{{ get_company_option('email') }}<br>
														{!! get_company_option('vat_id') != '' ? 'کد اقتصادی'.': '.clean(get_company_option('vat_id')).'<br>' : '' !!}
														{!! get_company_option('reg_no')!= '' ? 'شماره ثبت'.': '.clean(get_company_option('reg_no')).'<br>' : '' !!}
													</div>
												</td>
												<td class="text-right">
													<img src="{{ asset('public/images/modern-quotation-bg.jpg') }}" class="wp-300 d-none d-md-inline">
												</td>
											 </tr>
										</tbody>
									 </table>
								</td>
							 </tr>
							 
							 <tr class="information">
								<td colspan="2" class="pt-5">
									<div class="row">
										<div class="invoice-col-6 pt-3">
											<h5><b>پیش فاکتور برای</b></h5>
											@if($quotation->related_to == 'contacts' && isset($quotation->client))
												 {{ $quotation->client->contact_name }}<br>
												 {{ $quotation->client->contact_email }}<br>
												 {!! $quotation->client->company_name != '' ? clean($quotation->client->company_name).'<br>' : '' !!}
												 {!! $quotation->client->address != '' ? clean($quotation->client->address).'<br>' : '' !!}
												 {!! $quotation->client->vat_id != '' ? 'کد اقتصادی'.': '.clean($quotation->client->vat_id).'<br>' : '' !!}
												 {!! $quotation->client->reg_no != '' ? 'شماره ثبت'.': '.clean($quotation->client->reg_no).'<br>' : '' !!}
											@elseif($quotation->related_to == 'leads' && isset($quotation->lead))	 
												 {{ $quotation->lead->name }}<br>
												 {{ $quotation->lead->email }}<br>
												 {!! $quotation->lead->company_name != '' ? clean($quotation->lead->company_name).'<br>' : '' !!}
												 {!! $quotation->lead->address != '' ? clean($quotation->lead->address).'<br>' : '' !!}
												 {!! $quotation->lead->vat_id != '' ? 'کد اقتصادی'.': '.clean($quotation->lead->vat_id).'<br>' : '' !!}
												 {!! $quotation->lead->reg_no != '' ? 'شماره ثبت'.': '.clean($quotation->lead->reg_no).'<br>' : '' !!}
											 @endif                       
										</div>
														
										<div class="invoice-col-6 pt-3">
											<div class="d-inline-block float-md-right">		
												<h5><b>جزئیات پیش فاکتور</b></h5>
												<b>پیش فاکتور #:</b> {{ $quotation->quotation_number }}<br>
												<b>تاریخ پیش فاکتور:</b> {{ jdate($date_format, strtotime( $quotation->quotation_date)) }}<br>
											</div>
										</div>
									</div>
								</td>
							 </tr>
						</tbody>
					</table>
					<!--End Quotation Information-->
					@php $currency = currency(); @endphp
					<!--Quotation Product-->
					
					<div class="table-responsive"> 
						<table class="table table-bordered mt-2" id="invoice-item-table">
							 <thead class="base_color">
								 <tr>
									 <th>نام</th>
									 <th class="text-center wp-100">تعداد</th>
									 <th class="text-right">قیمت واحد</th>
									 <th class="text-right wp-100">تخفیف</th>
									 <th class="no-print">روش مالیات</th>
									 <th class="text-right">مالیات</th>
									 <th class="text-right">مجموع</th>
								 </tr>
							 </thead>
							 <tbody id="invoice">
								@foreach($quotation->quotation_items as $item)
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
					<!--End Quotation Product-->	
					 
					@php $base_currency = base_currency(); @endphp
					 
					<!--Summary Table-->
					<div class="invoice-summary-right">
						<table class="table table-bordered" id="invoice-summary-table">
							<tbody>
								<tr>
									 <td>مالیات</td>
									 <td class="text-right">
										<span>{{ decimalPlace($quotation->tax_total, $currency) }}</span>
										@if($quotation->related_to == 'contacts' && isset($quotation->client))
											@if($quotation->client->currency != $base_currency)
												<br><span>{{ decimalPlace(convert_currency($base_currency, $quotation->client->currency, $quotation->tax_total), currency($quotation->client->currency)) }}</span>	
											@endif
										@elseif($quotation->related_to == 'leads' && isset($quotation->lead))
											@if($quotation->lead->currency != $base_currency)
												<br><span>{{ decimalPlace(convert_currency($base_currency, $quotation->lead->currency, $quotation->tax_total), currency($quotation->lead->currency)) }}</span>	
											@endif
										@endif
									 </td>
								</tr>
								<tr>
									<td><b>جمع کل</b></td>
									<td class="text-right">
										<b>{{ decimalPlace($quotation->grand_total, $currency) }}</b>
										@if($quotation->related_to == 'contacts' && isset($quotation->client))
											@if($quotation->client->currency != $base_currency)
												<br><b>{{ decimalPlace($quotation->converted_total, currency($quotation->client->currency)) }}</b>
											@endif
										@elseif($quotation->related_to == 'leads' && isset($quotation->lead))
											@if($quotation->lead->currency != $base_currency)
												<br><b>{{ decimalPlace($quotation->converted_total, currency($quotation->lead->currency)) }}</b>
											@endif
										@endif
									</td>
								</tr>
							</tbody>
						</table>
					 </div>
					 <!--End Summary Table-->
					 
					 <div class="clearfix"></div>

					 <!--Quotation Note-->
					 @if($quotation->note  != '')
						<div class="invoice-note">{{ $quotation->note }}</div>
					 @endif
					 <!--End Quotation Note-->
					 
					 <!--Quotation Footer Text-->
					 @if(get_company_option('quotation_footer')  != '')
						<div class="invoice-note">{!! xss_clean(get_company_option('quotation_footer')) !!}</div>
					 @endif
					 <!--End Quotation Note-->
				</div>
			</div>
		</div>
    </div><!--End Modern Quotation Column-->
</div><!--End Modern Quotation Row-->
@endsection
