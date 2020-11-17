@extends('layouts.app')

@section('content')

@php 

$currency = currency();
$base_currency = base_currency();
$date_format = get_company_option('date_format','Y-m-d');

@endphp

<div class="row">

	<div class="col-lg-3 mb-3">
   		<div class="card">
			<div class="seo-fact sbg2">
				<div class="p-4">
					<div class="seofct-icon">
					    <i class="ti-briefcase"></i> 
						<span class="float-right">مجموع پروژه ها</span>
					</div>
					<h2 class="text-right">
						{{ $total_project }}
					</h2>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-3 mb-3">
   		<div class="card">
			<div class="seo-fact sbg1">
				<div class="p-4">
					<div class="seofct-icon">
					    <i class="ti-file"></i> 
						<span class="float-right">مقدار فاکتور ها</span>
					</div>
					<h2 class="text-right">
						{{ decimalPlace($invoice_value->grand_total, $currency) }}
					</h2>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-3 mb-3">
   		<div class="card">
			<div class="seo-fact sbg2">
				<div class="p-4">
					<div class="seofct-icon">
					    <i class="ti-check-box"></i> 
						<span class="float-right">مجموع پرداختی</span>
					</div>
					<h2 class="text-right">
						{{ decimalPlace($invoice_value->paid, $currency) }}
					</h2>
				</div>
			</div>
		</div>
	</div>

	<div class="col-lg-3 mb-3">
   		<div class="card">
			<div class="seo-fact sbg3">
				<div class="p-4">
					<div class="seofct-icon">
					    <i class="ti-info-alt"></i> 
						<span class="float-right">مجموع بدهی</span>
					</div>
					<h2 class="text-right">
						{{ decimalPlace(($invoice_due_amount->grand_total - $invoice_due_amount->paid), $currency) }}
					</h2>
				</div>
			</div>
		</div>
	</div>

</div>

<div class="row">

<div class="col-lg-12">
	<div class="card">
		<div class="card-body">
			<h4 class="header-title mt-0 mb-3">پروژه های اخیر</h4>
		  	<div class="table-responsive">
			  	<table class="table table-bordered">
				      <thead>
					    <tr>
							<th>نام</th>
							<th>تاریخ شروع</th>
							<th>تاریخ پایان</th>
							<th>وضعیت</th>
							<th>پیشرفت</th>
							<th class="text-center">عملیات</th>
					    </tr>
					</thead>
					<tbody>
						@foreach($recent_projects as $project)
							<tr>
								<td><a href="{{ action('ClientController@view_project', $project->id) }}">{{ $project->name }}</a></td>
								<td>{{ date($date_format,strtotime($project->start_date)) }}</td>
								<td>{{ date($date_format,strtotime($project->end_date)) }}</td>
								<td>{!! clean(project_status($project->status)) !!}</td>
								<td>
									<div class="progress">
									  <div class="progress-bar" role="progressbar" style="width: {{ $project->progress }}%;" aria-valuenow="{{ $project->progress }}" aria-valuemin="0" aria-valuemax="100">{{ $project->progress }}%</div>
									</div>
								</td>
								<td class="text-center">
									<a href="{{ action('ClientController@view_project', $project->id) }}" class="btn btn-primary btn-xs"><i class="ti-eye"></i></a>
								</td>
							</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

  <!-- Panel 2 -->
  <div class="col-lg-12">
	 <div class="card">

		<div class="card-body">
		    <h4 class="header-title mt-0 mb-3">فاکتور های اخیر</h4>
		    <div class="table-responsive">
				<table class="table table-bordered">
					<thead>
					  <tr>
						<th>شماره فاکتور</th>
						<th>نام کسب و کار</th>
						<th>تاریخ پرداخت</th>
						<th class="text-right">جمع کل</th>
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
						<td class='due_date'>{{ date($date_format,strtotime($invoice->due_date)) }}</td>
						<td class='grand_total text-right'>{{ decimalPlace($invoice->grand_total, currency($company_currency[$invoice->company_id]), $invoice->client->currency) }}</td>
						<td class='status text-center'>{!! clean(invoice_status($invoice->status)) !!}</td>
						<td class='view text-center'><a class="btn btn-primary btn-xs" target="_blank" href="{{ url('client/view_invoice/'.md5($invoice->id)) }}" data-title="نمایش فاکتور" data-fullscreen="true"><i class="fas fa-eye"></i> نمایش</a></td>
					  </tr>
					  @endforeach
					</tbody>
				</table>
			</div>
		</div>
	 </div>
  </div>
  <!-- End Panel 2 -->

  <!-- Panel 3 -->
  <div class="col-lg-12">
	 <div class="card panel-default">

		<div class="card-body">
		   <h4 class="header-title mt-0 mb-3">تراکنش های اخیر</h4>
		   <div class="table-responsive">
			   <table class="table table-bordered">
					<thead>
						<tr>
							<th>تاریخ</th>
							<th>حساب</th>
							<th>دسته</th>
							<th>DR/CR</th>
							<th class="text-right">مبلغ</th>
							<th>روش پرداخت</th>
							<th class="action-col">نمایش جزئیات</th>
						</tr>
					</thead>
					<tbody>
						@foreach($transactions as $transaction)
						 <tr>
							<td>{{ date($date_format,strtotime($transaction->trans_date)) }}</td>
							<td>{{ isset($transaction->account) ? $transaction->account->account_title : '' }}</td>
							<td>{{ isset($transaction->expense_type->name) ? $transaction->expense_type->name : 'تراکنش' }}</td>
							<td>{{ $transaction->dr_cr == 'dr' ? 'CR' : 'DR'}}</td>
							<td class="text-right">{{ decimalPlace($transaction->amount, currency($company_currency[$transaction->company_id]), $transaction->payer->currency) }}</td>
							<td>{{ isset($transaction->payment_method) ? $transaction->payment_method->name : '' }}</td>
							<td class="text-center"><a href="{{ url('client/view_transaction/'.$transaction->id) }}" data-title="نمایش جزئیات تراکنش" class="btn btn-primary btn-xs ajax-modal"><i class="fas fa-eye"></i> نمایش</a></td>
						</tr>
						@endforeach
					</tbody>
				</table>
			</div>
		</div>
	 </div>
  </div>
  <!-- End Panel 3 -->

</div>
@endsection