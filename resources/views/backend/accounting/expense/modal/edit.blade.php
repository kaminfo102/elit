<form method="post" id="expense" class="ajax-submit" autocomplete="off" action="{{action('ExpenseController@update', $id)}}" enctype="multipart/form-data">
	{{ csrf_field()}}
	<input name="_method" type="hidden" value="PATCH">				
	
	<div class="col-12">
		<div class="row">
			<div class="col-md-6">
			 <div class="form-group">
				<label class="control-label">تاریخ</label>						
				<input type="text" class="form-control datepicker" name="trans_date" value="{{ $transaction->trans_date }}" required>
			 </div>
			</div>
			
			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('accounts.create') }}" data-reload="false" data-title="{{ _lang('Create Account') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
				<label class="control-label">حساب</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="account_title" data-display2="account_currency" data-table="accounts" data-where="1" name="account_id" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("accounts","id",array("account_title","account_currency"),$transaction->account_id,array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>
			
			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('chart_of_accounts.create') }}" data-reload="false" data-title="{{ _lang('Add Income/Expense Type') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
				<label class="control-label">نوع هزینه</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="chart_of_accounts" data-where="4" name="chart_id" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("chart_of_accounts","id","name",$transaction->chart_id,array("type="=>"expense","AND company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			 <div class="form-group">
				<label class="control-label">{{ _lang('مبلغ')." ".currency() }}</label>						
				<input type="text" class="form-control float-field" name="amount" value="{{ $transaction->amount }}" required>
			 </div>
			</div>

			<div class="col-md-6">
			  <div class="form-group">
				<label class="control-label">مربوط به</label>						
				<select class="form-control select2" name="related_to" id="related_to">
				   <option value="contacts" {{ $transaction->payer_payee_id != '' ? 'selected' : '' }}>مشتری</option>
				   <option value="projects" {{ $transaction->project_id != '' ? 'selected' : '' }}>پروژه</option>
				</select>
			  </div>
			</div>

			<div class="col-md-6 {{ $transaction->payer_payee_id == '' ? 'd-none' : '' }}"  id="contacts">
			  <div class="form-group">
				<a href="{{ route('contacts.create') }}" data-reload="false" data-title="{{ _lang('Add Client') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
				<label class="control-label">مشتری</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="contact_name" data-table="contacts" data-where="1" name="payer_payee_id">
				   <option value="">انتخاب کنید</option>
				   {{ create_option("contacts","id","contact_name",$transaction->payer_payee_id,array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6 {{ $transaction->project_id == '' ? 'd-none' : '' }}" id="projects">
			  <div class="form-group">
				<label class="control-label">انتخاب پروژه</label>						
				<select class="form-control select2" name="project_id">
				   <option value="">انتخاب کنید</option>
				   {{ create_option('projects','id','name', $transaction->project_id, array('company_id=' => company_id())) }}
				</select>
			  </div>
			</div>
			
			<div class="col-md-6">
			  <div class="form-group">
				<a href="{{ route('payment_methods.create') }}" data-reload="false" data-title="{{ _lang('Add Payment Method') }}" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
				<label class="control-label">روش پرداخت</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="payment_methods" data-where="1" name="payment_method_id" required>
				   <option value="">انتخاب کنید</option>
				   {{ create_option("payment_methods","id","name",$transaction->payment_method_id,array("company_id="=>company_id())) }}
				</select>
			  </div>
			</div>

			<div class="col-md-6">
			 <div class="form-group">
				<label class="control-label">مرجـــع</label>						
				<input type="text" class="form-control" name="reference" value="{{ $transaction->reference }}">
			 </div>
			</div>

			<div class="col-md-12">
				<div class="form-group">
				<label class="control-label">سنـــد پیوست</label>						
				<input type="file" class="form-control dropify" name="attachment" data-default-file="{{ $transaction->attachment != "" ? asset('public/uploads/transactions/'.$transaction->attachment) : "" }}">
				</div>
			</div>

			<div class="col-md-12">
			 <div class="form-group">
				<label class="control-label">یادداشــت</label>						
				<textarea class="form-control" name="note">{{ $transaction->note }}</textarea>
			 </div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
				<button type="submit" class="btn btn-primary">بروزرسانی</button>
			  </div>
			</div>
		</div>
	</div>
</form>

<script>
(function($) {
    "use strict";

	$(document).on('change','#related_to',function(){
	   if($(this).val() == 'projects'){
	   	 $("#projects").removeClass('d-none');
	   	 $("#contacts").addClass('d-none');
	   }else{
	   	 $("#projects").addClass('d-none');
	   	 $("#contacts").removeClass('d-none');
	   }
	});
	
})(jQuery);
</script>