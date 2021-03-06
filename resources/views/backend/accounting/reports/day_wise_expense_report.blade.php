@extends('layouts.app')

@section('content')
<style>
  .btn{margin-bottom: 2px !important;}
</style>
<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="d-none panel-title">گزارش جزئیات هزینه ها</span>

			<div class="card-body">
			
				<div class="report-params">
					<form class="validate" method="post" action="{{ url('reports/day_wise_expense/view') }}">
						<div class="row">
              				{{ csrf_field() }}
							
							<div class="col-md-3">
								<div class="form-group">
								<label class="control-label">انتخاب حساب</label>						
								  <select class="form-control select2" name="account" required>
										<option value="">انتخاب کنید</option>
										{{ create_option("accounts","id","account_title",isset($account) ? $account : old('account'),array("company_id="=>company_id())) }}
								  </select>
								</div>
							</div>

						    <div class="col-md-3">
								<div class="form-group">
									<label class="control-label">از</label>					
									<input type="text" class="form-control datepicker" name="date1" id="date1" value="{{ isset($date1) ? $date1 : old('date1') }}" readOnly="true" required>  
								</div>
							</div>

							<div class="col-md-3">
								<div class="form-group">
									<label class="control-label">تا</label>
									<input type="text" class="form-control datepicker" name="date2" id="date2" value="{{ isset($date2) ? $date2 : old('date2') }}" readOnly="true" required>							
								</div>
							</div>
							
							<div class="col-md-3">
								<button type="submit" class="btn btn-primary btn-xs btn-block mt-26">نمایش گزارش</button>
							</div>
						</form>

					</div>
				</div><!--End Report param-->
                
				@php $date_format = get_company_option('date_format','Y-m-d'); @endphp
			
				<div class="report-header">
				   <h4>{{ isset($account) ? 'گزارش جزئیات هزینه ها از'.' '.$acc->account_title : 'گزارش جزئیات هزینه ها' }}</h4>
				   <h5>{{ isset($date1) ? jdate($date_format, strtotime($date1)).' '.'از'.' '.date($date_format, strtotime($date2)) : '-------------  '.'تا'.'  -------------' }}</h5>
				</div>

				<table class="table table-bordered report-table">
					<thead>
						<th>تاریخ</th>
						<th>نوع هزینه</th>
						<th>یادداشت</th>
						<th>حساب</th>    
						<th class="text-right">مبلغ</th>       
					</thead>
					<tbody>
					 
					@if(isset($report_data))
					   @php $currency = currency($acc->account_currency); @endphp
					   
					   @foreach($report_data as $report) 
						<tr>
						   <td>{{ $report->trans_date != '' ? jdate($date_format, strtotime($report->trans_date)) : '' }}</td>
						   <td>{{ $report->expense_type }}</td>
						   <td>{{ $report->note }}</td>
						   <td>{{ $report->account }}</td>
						   <td class="text-right">{{ decimalPlace($report->amount, $currency)  }}</td>
						</tr>
					    @endforeach
					@endif
				    </tbody>
				</table>
			</div>
		</div>
	</div>
</div>

@endsection

@section('js-script')
<script>
(function($) {
	"use strict";

	document.title = $(".panel-title").html();

})(jQuery);	
</script>
@endsection


