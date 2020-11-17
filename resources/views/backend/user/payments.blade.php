@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="panel-title d-none">تاریخچه پرداختی ها</span>
			<div class="card-body">
			  <table class="table table-bordered data-table">
				<thead>
					<tr>
						<th>تاریخ</th>
						<th>شرکت</th>
						<th>بسته</th>
						<th>نوع پرداختی</th>
						<th class="text-right">مبلغ</th>
					</tr>
				</thead>
				<tbody>

				  @php $date_format = get_option('date_format','Y-m-d'); @endphp
				  @php $time_format = get_option('time_format',24) == '24' ? 'H:i' : 'h:i A'; @endphp
				  
				  @foreach($payment_history as $history)
					<tr>
						<td>{{ jdate("$date_format $time_format",strtotime($history->created_at)) }}</td>
						<td>{{ $history->company->business_name }}</td>
						<td>{{ $history->title }}</td>
						<td>{{ $history->method }}</td>					
						<td class="text-right"><b>{{ decimalPlace($history->amount, currency($history->currency)) }}</b></td>			
					</tr>
				  @endforeach
				</tbody>
			  </table>
			  
			  <div class="pull-right">
				 {{ $payment_history->links() }}
			  </div>
			</div>
		</div>
	</div>
</div>

@endsection


