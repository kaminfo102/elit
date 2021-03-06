@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-md-12">

		<div class="card">
			<span class="d-none panel-title">لیست پیش فاکتورها</span>

			<div class="card-body">
			  @php $currency = currency() @endphp
			  <table class="table table-bordered data-table">
				<thead>
				  <tr>
					<th>شماره پیش فاکتور</th>
					<th>کلاینت</th>
					<th>تاریخ</th>
					<th class="text-right">مجموع کل</th>
					<th class="text-center">نمایش</th>
				  </tr>
				</thead>
				<tbody>

				  @php $date_format = get_option('date_format','Y-m-d'); @endphp
				  @foreach($quotations as $quotation)
				  <tr id="row_{{ $quotation->id }}">
					<td class='quotation_number'>{{ $quotation->quotation_number }}</td>
					<td class='client_id'>{{ $quotation->client->contact_name }}</td>
					<td class='due_date'>{{ jdate($date_format, strtotime($quotation->quotation_date)) }}</td>
					<td class='grand_total text-right'>
					    @php $client_currency = $quotation->client->currency; @endphp
					    @php $currency = $company_currency[$quotation->company_id]; @endphp

						@if($client_currency != $currency){
							<span class='pull-right'>{{ decimalPlace($quotation->grand_total, currency($currency), $client_currency) }}</span><br>
							<span class='pull-right'><b>{{ decimalPlace($quotation->converted_total, currency($client_currency), $client_currency) }}</b></span>
						@else
							<span class='pull-right'>{{ decimalPlace($quotation->grand_total, currency($currency), $client_currency) }}</span>
						@endif
					</td>
					<td class="view text-center">
						<a class="btn btn-primary btn-xs btn-xs" target="_blank" href="{{ url('client/view_quotation/'.md5($quotation->id)) }}"><i class="fas fa-eye"></i> klhda</a>				
					</td>
				  </tr>
				  @endforeach
				</tbody>
			  </table>
			</div>
		</div>
	</div>
</div>

@endsection


