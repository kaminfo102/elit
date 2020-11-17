@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-md-12">
		<div class="card">
			<span class="d-none panel-title">لیست تراکنش ها</span>

			<div class="card-body">
				<table class="table table-bordered data-table">
					<thead>
						<tr>
							<th>تاریخ</th>
							<th>حساب</th>
							<th>دسته</th>
							<th class="text-right">مبلغ</th>
							<th>روش پرداخت</th>
							<th class="action-col">نمایش جزئیات</th>
						</tr>
					</thead>
					<tbody>
						@php $date_format = get_option('date_format','Y-m-d'); @endphp
						@foreach($transactions as $transaction)
						 <tr>
							<td>{{ jdate($date_format,strtotime($transaction->trans_date)) }}</td>
							<td>{{ isset($transaction->account) ? $transaction->account->account_title : 'حساب' }}</td>
							<td>{{ isset($transaction->expense_type->name) ? $transaction->expense_type->name : 'انتقال' }}</td>
							<td class="text-right">{{ decimalPlace($transaction->amount, currency($transaction->account->account_currency), $transaction->payer->currency) }}</td>
							<td>{{ isset($transaction->payment_method) ? $transaction->payment_method->name : '' }}</td>
							<td class="text-center"><a href="{{ url('client/view_transaction/'.$transaction->id) }}" data-title="جزئیات معامله" class="btn btn-primary btn-xs ajax-modal">نمایش</a></td>
						</tr>
						@endforeach
					</tbody>
			  </table>
			</div>
		</div>
	</div>
</div>

@endsection