@extends('layouts.app')

@section('content')
<style type="text/css">
#invoice-table td:nth-child(5), #invoice-table td:nth-child(6){
	text-align: center !important;
}
</style>

<div class="row">
	<div class="col-12">
	
		<div class="card mt-2">
			<span class="panel-title d-none">لیست فاکتورها </span>

			<div class="card-body">
			  @php $currency = currency() @endphp
			  <table id="invoice-table" class="table table-bordered">
				<thead>
				  <tr>
					<th>شماره فاکتور</th>
					<th>مربوط به</th>
					<th>تاریخ سر رسید</th>
					<th class="text-right">مجموع</th>
					<th class="text-center">وضعیت</th>
					<th class="text-center">عملیات</th>
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
<script>
	(function($) {
        $('#invoice-table').DataTable({
            processing: true,
            serverSide: true,
			ajax: '{{ url('invoices/get_table_data') }}',
			"columns" : [
				{ data : "invoice_number", name : "invoice_number" },
				{ data : "contact_name", name : "contact_name" },
				{ data : "due_date", name : "due_date" },
				{ data : "grand_total", name : "grand_total" },
				{ data : "status", name : "status" },
				{ data : "action", name : "action" },
			],
			responsive: true,
			"bStateSave": true,
			"bAutoWidth":false,	
			"ordering": false,
			"language": {
				"decimal":        "",
				"emptyTable":     "داده ای یافت نشد",
				"info":           "{{ _lang('نمایش') }} _START_ تا _END_ {{ _lang('از') }} _TOTAL_ {{ _lang('ورودی') }}",
				"infoEmpty":      "{{ _lang('نمایش 0 تا 0  از 0 ورودی') }}",
				"infoFiltered":   "(filtered from _MAX_ total entries)",
				"infoPostFix":    "",
				"thousands":      ",",
				"lengthMenu":     "{{ _lang('نمایش') }} _MENU_ {{ _lang('وورودی') }}",
				"loadingRecords": "{{ _lang('بارگزاری ...') }}",
				"processing":     "{{ _lang('پردازش ...') }}",
				"search":         "{{ _lang('جستجو') }}",
				"zeroRecords":    "{{ _lang('ردیف مشابهی پیدا نشد') }}",
				"paginate": {
					"first":      "اول",
					"last":       "آخرین",
					"next":       "بعدی",
					"previous":   "قبلی"
				}
			} 
        });
    })(jQuery);
</script>
@endsection


