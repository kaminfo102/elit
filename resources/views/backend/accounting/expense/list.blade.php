@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
	    <a class="btn btn-primary btn-xs ajax-modal" data-title="{{ _lang('Add Expense') }}" href="{{ route('expense.create') }}"><i class="ti-plus"></i>  جــدید</a>
			
		<div class="card mt-2">
			<span class="d-none panel-title">لیست هزینه ها</span>
			
			<div class="card-body">
				<table id="expense-table" class="table table-bordered">
						<thead>
							<tr>
								<th>تاریخ</th>
								<th>حساب</th>
								<th>نوع هزینه</th>
								<th class="text-right">مبلغ</th>
								<th>روش پرداخت</th>
								<th class="action-col">عملیات</th>
							</tr>
						</thead>
						<tbody>
				
						</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

@endsection

@section('js-script')
<script src="{{ asset('public/backend/assets/js/ajax-datatable/expense.js') }}"></script>
@endsection
