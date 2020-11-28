@extends('layouts.app')

@section('content')
<style type="text/css">
#quotation-table td:nth-child(5){
	text-align: center !important;
}
</style>
<div class="row">
	<div class="col-12">
	
		<div class="card mt-2">
			<span class="d-none panel-title">لیست پیش فاکتورها</span>

			<div class="card-body">
			  @php $currency = currency() @endphp
			  <table id="quotation-table" class="table table-bordered">
				<thead>
				  <tr>
					<th>شماره پیش فاکتور</th>
					<th>پیش فاکتور برای</th>
					<th>تاریخ</th>
					<th class="text-right">جمع کل</th>
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
	$(function() {
        $('#quotation-table').DataTable({
            processing: true,
            serverSide: true,
			ajax: '{{ url('quotations/get_table_data') }}',
			"columns" : [
				{ data : "quotation_number", name : "quotation_number" },
				{ data : "contact_name", name : "contact_name" },
				{ data : "quotation_date", name : "quotation_date" },
				{ data : "grand_total", name : "grand_total" },
				{ data : "action", name : "action" },
			],
			responsive: true,
			"bStateSave": true,
			"bAutoWidth":false,	
			"ordering": false,
			"language": {
				"decimal":        "",
				"emptyTable":     "داده ای یافت نشد",
				"info":           "نمایش _START_  تا _END_  از _TOTAL_  ورودی",
				"infoEmpty":      "نمایش 0 تا 0 از 0 ورودی",
				"infoFiltered":   "(filtered from _MAX_ total entries)",
				"infoPostFix":    "",
				"thousands":      ",",
				"lengthMenu":     "نمایش _MENU_ ورودی ها",
				"loadingRecords": "بارگزاری...",
				"processing":     "پردازش ...",
				"search":         "جــستجو",
				"zeroRecords":    "هیچ رکورد مشابهی پیدا نشد",
				"paginate": {
					"first":      "اول",
					"last":       "آخرین",
					"next":       "بعدی",
					"previous":   "قبلی"
				}
			} 
        });
    });
</script>
@endsection




