<style>
#main_modal .modal-lg {
    max-width: 800px;
}

#main_modal .modal-body {
    overflow: visible !important;
}
</style>

<form method="post" class="ajax-submit" autocomplete="off" action="{{ route('projects.store') }}" enctype="multipart/form-data">
	{{ csrf_field() }}
	
	<dv class="row">
	    <div class="col-md-12">
			<div class="form-group">
				<label class="control-label">پروژه جدید</label>
				<input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label">کلاینت</label>
				<select class="form-control select2" name="client_id"  required>
					<option value="">انتخاب کنید</option>
					{{ create_option('contacts','id','contact_name',old('client_id'),array('company_id='=>company_id())) }}
				</select>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label">وضعیت</label>
				<select class="form-control" name="status" >
					<option value="not_started">شروع نشده</option>
					<option value="in_progress">در حال پیشرفت</option>
					<option value="on_hold">در انتظار</option>
					<option value="cancelled">لغو شده</option>
					<option value="completed">کامل شده</option>
				</select>
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label class="control-label">اعضاء</label>
				<select class="form-control select2" name="members[]" multiple="true">
					{{ create_option('users','id','name','',array('company_id=' => company_id())) }}
				</select>
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label class="control-label">پیشرفت (<span id="progress-value">{{ old('progress',0) }}</span>%)</label>
				<input type="range" min="0" max="100" class="d-block w-100" id="progress" name="progress" value="{{ old('progress',0) }}">
			</div>
		</div>


		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label">نوع صورتحساب</label>
				<select class="form-control" name="billing_type" id="billing_type" required>
					<option value="">انتخاب کنید</option>
					<option value="fixed">نرخ ثابت</option>
					<option value="hourly">نرخ ساعتی</option>
				</select>
			</div>
		</div>
		

		<div class="col-md-6" id="fixed_rate">
			<div class="form-group">
				<label class="control-label">نرخ ثابت</label>
				<input type="text" class="form-control float-field" name="fixed_rate" value="{{ old('fixed_rate') }}">
			</div>
		</div>

		<div class="col-md-6 d-none" id="hourly_rate">
			<div class="form-group">
				<label class="control-label">نرخ ساعتی</label>
				<input type="text" class="form-control float-field" name="hourly_rate" value="{{ old('hourly_rate') }}">
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label">تاریخ شروع</label>

				<input type="text" class="form-control datepicker" name="start_date" value="{{ old('start_date') }}">
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label">تاریخ پایان</label>
				<input type="text" class="form-control datepicker" name="end_date" value="{{ old('end_date') }}">
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label class="control-label">توضیحات</label>
				<textarea class="form-control summernote" name="description">{{ old('description') }}</textarea>
			</div>
		</div>
		
		<div class="col-md-12">
		    <div class="form-group">
		        <button type="reset" class="btn btn-danger">از نو</button>
			    <button type="submit" class="btn btn-primary">ذخیره</button>
		    </div>
		</div>
	</div>
</form>

<script>
(function($) {
    "use strict";

	$(document).on('change','#billing_type',function(){
	   if($(this).val() == 'hourly'){
	   	  $("#fixed_rate").addClass('d-none');
	   	  $("#hourly_rate").removeClass('d-none');
	   }else{
	 	  $("#hourly_rate").addClass('d-none');
	   	  $("#fixed_rate").removeClass('d-none');
	   }
	});

	//Progress bar
	var slider = document.getElementById("progress");
	var output = document.getElementById("progress-value");
	output.innerHTML = slider.value;

	slider.oninput = function() {
	  output.innerHTML = this.value;
	}
	
})(jQuery);	
</script>