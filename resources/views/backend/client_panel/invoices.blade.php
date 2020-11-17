@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<span class="panel-title d-none">لیست فاکتورها</span>

			<div class="card-body">

			  <table class="table table-bordered data-table">
				<thead>
				  <tr>
					<th>شماره فاکتور</th>
					<th>نام کسب و کار</th>
					<th>تاریخ سررسید</th>
					<th class="text-right">مجموع کل</th>
					<th class="text-center">وضعیت</th>
					<th class="text-center">نمایش</th>
				  </tr>
				</thead>
				<tbody>

				  @php $date_format = get_option('date_format','Y-m-d'); @endphp	

				  @foreach($invoices as $invoice)
				  <tr id="row_{{ $invoice->id }}">
					<td class='invoice_number'>{{ $invoice->invoice_number }}</td>
					<td class='business_name'>{{ $invoice->client->company->business_name }}</td>
					<td class='due_date'>{{ jdate($date_format, strtotime($invoice->due_date)) }}</td>
					<td class='grand_total text-right'>
					    @php $client_currency = $invoice->client->currency; @endphp
					    @php $currency = $company_currency[$invoice->company_id]; @endphp

						@if($client_currency != $currency)
							<span class='pull-right'>{{ decimalPlace($invoice->grand_total, currency($currency), $client_currency) }}</span><br>
							<span class='pull-right'><b>{{ decimalPlace($invoice->converted_total, currency($client_currency), $client_currency) }}</b></span>
						@else
							<span class='pull-right'>{{ decimalPlace($invoice->grand_total, currency($currency), $client_currency) }}</span>
						@endif
					</td>
					<td class='status text-center'>{!! strip_tags(invoice_status($invoice->status),'<span>') !!}</td>
					<td class='view text-center'><a class="btn btn-primary btn-xs" target="_blank" href="{{ url('client/view_invoice/'.md5($invoice->id)) }}" data-title="نمایش فاکتور" data-fullscreen="true"><i class="fas fa-eye"></i> نمایش </a></td>
				  </tr>
				  @endforeach
				</tbody>
			  </table>
			</div>
		</div>
	</div>
</div>

@endsection


