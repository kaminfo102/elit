@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="d-none panel-title">بروزرسانی فاکتور</span>

			<div class="card-body">
				<form method="post" class="validate" autocomplete="off" action="{{ action('InvoiceController@update', $id) }}" enctype="multipart/form-data">
					{{ csrf_field()}}
					<input name="_method" type="hidden" value="PATCH">				
					
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label">شماره فاکتور</label>
								<input type="text" class="form-control" name="invoice_number" value="{{ $invoice->invoice_number }}" required>
							</div>
						</div>


						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label">مربوط به</label>
								<select class="form-control select2 auto-select" data-selected="{{ $invoice->related_to }}" name="related_to" id="related_to">
								   <option value="contacts">مشتری</option>
								   <option value="projects">پروژه</option>
								</select>
							</div>
						</div>
				
						<div class="col-md-4 {{ $invoice->related_to == 'contacts' ? '' : 'd-none' }}" id="contacts">
							<div class="form-group">
								<a href="{{ route('contacts.create') }}" data-reload="false" data-title="کلاینت جدید" class="ajax-modal select2-add"><i class="ti-plus"></i> جــدید</a>
								<label class="control-label">انتخاب کلاینت</label>
								<select class="form-control select2-ajax" data-value="id" data-display="contact_name" data-table="contacts" data-where="1" name="client_id" id="client_id">
									<option value="">انتخاب کنید</option>
									{{ create_option("contacts","id","contact_name", $invoice->related_id, array("company_id="=>company_id())) }}
								</select>
							</div>
						</div>

						<div class="col-md-4 {{ $invoice->related_to == 'projects' ? '' : 'd-none' }}" id="projects">
							<div class="form-group">
								<label class="control-label">انتخاب پروژه</label>
								<select class="form-control select2" id="project_id" name="project_id">
								   <option value="">انتخاب کنید</option>
								   {{ create_option('projects','id','name', $invoice->related_id, array('company_id=' => company_id())) }}
								</select>
							</div>
						</div>
				
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label">تاریخ فاکتور</label>
								<input type="text" class="form-control datepicker" name="invoice_date" value="{{ $invoice->invoice_date }}" required>
							</div>
						</div>
				
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label">تاریخ سر رسید</label>
								<input type="text" class="form-control datepicker" name="due_date" value="{{ $invoice->due_date }}" required>
							</div>
						</div>
						
						<div class="col-md-4">
							<div class="form-group">
								<label class="control-label">قالب فاکتور</label>
								<select class="form-control select2" name="template">
								   @foreach(get_invoice_templates() as $key => $value)
										<option value="{{ $key }}" {{ $invoice->template == $key ? 'selected' : '' }}>{{ $value }}</option>
								   @endforeach
								</select>
							</div>
						</div>
						
						<div class="col-md-6">
							<div class="form-group select-product-container">
								<a href="{{ route('products.create') }}" data-reload="false" data-title="محصول جدید" class="ajax-modal select2-add"><i class="ti-plus"></i> جــدید</a>
								<label class="control-label">انتخاب محصول</label>
								<select class="form-control select2-ajax" data-value="id" data-display="item_name" data-table="items" data-where="2" name="product" id="product">
									<option value="">انتخاب محصول</option>
								</select>
							</div>
						</div>
						
						<div class="col-md-6">
							<div class="form-group select-product-container">
								<a href="{{ route('services.create') }}" data-reload="false" data-title="سرویس جدید" class="ajax-modal select2-add"><i class="ti-plus"></i> جــدید</a>
								<label class="control-label">انتخاب سرویس</label>
								<select class="form-control select2-ajax" data-value="id" data-display="item_name" data-table="items" data-where="5" name="service" id="service">
									<option value="">انتخاب سرویس</option>
								</select>
							</div>
						</div>
						
						<!--Order table -->
						@php $currency = currency(); @endphp
						
						<div class="col-md-12">
							<div class="table-responsive">
								<table id="order-table" class="table table-bordered">
									<thead>
										<tr>
											<th>نام</th>
											<th class="text-center wp-100">تعداد</th>
											<th class="text-right">قیمت {{ (currency()) }}</th>
											<th class="text-right wp-100">تخفیف {{ (currency()) }}</th>
											<th class="text-right">روش مالیات</th>
											<th class="text-right">مالیات {{ (currency()) }}</th>
											<th class="text-right">Sub Total {{ (currency()) }}</th>
											<th class="text-center">عملیات</th>
										</tr>
									</thead>
									<tbody>
										@foreach($invoice->invoice_items as $item)
											<tr id="product-{{ $item->item_id }}">
												<td>
													<b>{{ $item->item->item_name }}</b><br>
													<span class="description">{{ $item->description }}</span>
												</td>
												<td class="text-center quantity">{{ $item->quantity }}</td>
												<td class="text-right unit-cost">{{ $item->unit_cost }}</td>
												<td class="text-right discount">{{ $item->discount }}</td>
												<td class="text-right tax-method">{{ strtoupper($item->tax_method)  }}</td>
												<td class="text-right tax">{{ $item->tax_amount }}</td>
												<td class="text-right sub-total">{{ $item->sub_total }}</td>
												<td class="text-center">
													<button type="button" class="btn btn-success btn-xs edit-product"><i class="fas fa-edit"></i></button>
													<button type="button" class="btn btn-danger btn-xs remove-product"><i class='fa fa-trash'></i></button>
												</td>
												<input type="hidden" name="product_id[]" value="{{ $item->item_id }}">
												<input type="hidden" name="product_description[]" class="input-description" value="{{ $item->description }}">
												<input type="hidden" name="quantity[]" class="input-quantity" value="{{ $item->quantity }}">
												<input type="hidden" name="unit_cost[]" class="input-unit-cost" value="{{ $item->unit_cost }}">
												<input type="hidden" name="discount[]" class="input-discount" value="{{ $item->discount }}">
												<input type="hidden" name="tax_method[]" class="input-tax-method" value="{{ $item->tax_method }}">
												<input type="hidden" name="tax_amount[]" class="input-tax" value="{{ $item->tax_amount }}">
												<input type="hidden" name="tax_id[]" class="input-tax-id" value="{{ $item->tax_id }}">
												<input type="hidden" name="unit_tax[]" class="input-unit-tax" value="{{ $item->tax_amount/$item->quantity }}">
												<input type="hidden" name="sub_total[]" class="input-sub-total" value="{{ $item->sub_total }}">
											</tr>
										@endforeach
									</tbody>
									<tfoot class="tfoot active">
										<tr>
											<th>مجموع</th>
											<th class="text-center" id="total-qty">0</th>
											<th></th>
											<th class="text-right" id="total-discount">0.00</th>
											<th></th>
											<th class="text-right" id="total-tax">0.00</th>
											<th class="text-right" id="total">0.00</th>
											<th class="text-center"></th>
											<input type="hidden" name="product_total" id="product_total" value="0">
											<input type="hidden" name="tax_total" id="tax_total" value="0">
										</tr>
									</tfoot>
								</table>
								
								<table class="table table-striped">
								   <thead class="thead-light">
									  <tr>
										 <th>
											مبلغ تبدیل شده واحد پول کلاینت - <span class="client_currency">{{ base_currency() }}</span>)
											&emsp;<span id="converted_amount">{{ $currency }} 0.00</span>
										 </th>
									  </tr>
								   </thead>
								</table>	
							</div>
						</div>
				
						<!--End Order table -->
				
						<div class="col-md-12">
							<div class="form-group">
								<label class="control-label">یادداشت</label>
								<textarea class="form-control" rows="4" name="note">{{ $invoice->note }}</textarea>
							</div>
						</div>
				
						<div class="col-md-12">
							<div class="form-group">
								<button type="submit" class="btn btn-primary">بروزرسانی</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
@endsection
			
@section('js-script')
<script>
	var client_id = "{{ $invoice->client_id }}";
	var client_currency = "{{ $invoice->client->currency }}";
</script>

<script src="{{ asset('public/backend/assets/js/invoice/edit.js?v=1.1') }}"></script>

<script>
(function($) {
    "use strict";

    $(document).on('click', '.edit-product', function() {
	    var tr = $(this).parent().parent();
	    current_row = tr;

	    //Get current value
	    var quantity = parseFloat($(tr).find(".quantity").html());
	    var c_unit_cost = parseFloat($(tr).find(".unit-cost").html());
	    var c_sub_total = parseFloat($(tr).find(".sub-total").html());
	    var c_discount = parseFloat($(tr).find(".discount").html());
	    var c_description = $(tr).children("td:first").find(".description").html().trim();
	    //var c_tax_amount = parseFloat($(tr).find(".tax").html());
	    var c_tax_method = $(tr).find(".input-tax-method").val();
	    var c_tax_id = $(tr).find(".input-tax-id").val();

	    var form = `<div class="col-md-12">
						<div class="form-group">
							<label class="control-label">روش مالیات</label>
							<select class="form-control float-field" id="modal-tax_method">
	                            <option value="">بدون مالیات</option>
	                            <option value="inclusive">شامل می شود</option>
	                            <option value="exclusive">شامل نمی شود</option>
							</select>
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label class="control-label">واحد قیمت</label>
							<input type="number" class="form-control" value="${ c_tax_method == 'exclusive' ? c_unit_cost : c_sub_total }" id="modal-unit_cost">
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label class="control-label">تعداد</label>
							<input type="number" class="form-control" value="${quantity}" id="modal-quantity">
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label class="control-label">تخفیف {{ (currency()) }}</label>
							<input type="text" class="form-control float-field" value="${c_discount}" id="modal-discount">
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							<label class="control-label">مالیات</label>
							<select class="form-control" id="modal-tax_id">
	                            <option value="">بدون مالیات</option>
								@foreach(App\Tax::where("company_id",company_id())->get() as $tax)
									 <option value="{{ $tax->id }}" data-tax-type="{{ $tax->type }}" data-tax-rate="{{ $tax->rate }}">{{ $tax->tax_name }} - {{ $tax->type =='percent' ? $tax->rate.' %' : $tax->rate }}</option>
								@endforeach
							</select>
						</div>
					</div>

					<div class="col-md-12">
						<div class="form-group">
							<label class="control-label">توضیحات</label>						
							<textarea class="form-control" id="modal-description">${c_description}</textarea>
						</div>
					</div>

					<div class="col-md-12">
						<div class="form-group">
							<button type="button" id="update-product" class="btn btn-primary">ذخیره</button>
						</div>
					</div>`;

	    $("#main_modal .modal-title").html("بروزرسانی کالا");
	    $("#main_modal .modal-body").html(form);
	    $("#modal-tax_method").val(c_tax_method);
	    $("#modal-tax_id").val(c_tax_id);
	    $("#main_modal").modal("show");

	    $(document).on('change','#modal-tax_method',function(){
	        if($(this).val() == 'inclusive'){
	            $("#modal-unit_cost").val(c_sub_total);
	        }else if($(this).val() == 'exclusive'){
				$("#modal-unit_cost").val(c_unit_cost);
	        }
	    });


	});

})(jQuery);

</script>
@endsection
				  
				  
				  
				  