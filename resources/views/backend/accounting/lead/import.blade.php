@extends('layouts.app')

@section('content')
<div class="row">
<div class="col-12">
<form method="post" class="validate" autocomplete="off" action="{{ route('leads.import') }}" enctype="multipart/form-data">
	<div class="row">
		<div class="col-md-6">
			<div class="card">
				<div class="card-header bg-primary text-white">
				   <h5 class="panel-title">وارد کردن لیست پیگیری ها</h5>
				</div>
				<div class="card-body">
					{{ csrf_field() }}

					<div class="row">
						<div class="col-md-6">
					        <div class="form-group">
					        	<a href="{{ route('lead_statuses.create') }}" data-reload="false" data-title="ایجاد وضعیت جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جدید</a>
						        <label class="control-label">وضعیت پیگیری</label>
						        <select class="form-control select2-ajax" data-value="id" data-display="title" data-table="lead_statuses" data-where="1" name="lead_status_id" required>
					                <option value="">انتخاب کنید</option>
								</select>
							</div>
					    </div>

						<div class="col-md-6">
					        <div class="form-group">
					        	<a href="{{ route('lead_sources.create') }}" data-reload="false" data-title="منبع جدبد" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
						        <label class="control-label">منبع پیگیری</label>
						        <select class="form-control select2-ajax" data-value="id" data-display="title" data-table="lead_sources" data-where="1" name="lead_source_id" required>
					                <option value="">امتخاب کنید</option>
								</select>
							</div>
					    </div>

						<div class="col-md-12">
					        <div class="form-group">
						        <label class="control-label">مربوط به</label>
						        <select class="form-control select2" name="assigned_user_id"  required>
					                <option value="">امتخاب کنید</option>
									{{ create_option('users','id','name',old('assigned_user_id'), array("company_id="=>company_id())) }}
								</select>
							</div>
					    </div>

						<div class="col-md-12">
						  <div class="form-group">
							<label class="control-label">آپلود فایل XLSX</label>
							<input type="file" class="dropify" name="file" data-allowed-file-extensions="xlsx" required>
						  </div>
						</div>

						<div class="col-md-12">
						  <div class="form-group">
							<button type="submit" class="btn btn-primary btn-xs">وارد کردن لیست</button>
						  </div>
						</div>
					</div>
				</div>
			</div>
	    </div>
		
	    <div class="col-md-6">
			<div class="card">
			    <div class="card-header bg-primary text-white">
				   <h5>دستورالعمل ها</h5>
				</div>
			    <div class="card-body">
				   <ol class="pl-3">
				      <li>فقط فایل XLSX مجاز است.</li>
				      <li>ردیف اول باید خالی نگه داشته شود یا فقط برای نام ستون استفاده شود.</li>
				      <li>قسمت های الزامی حتما باید تکمیل شود</li>
				      <li><a href="{{ asset('public/xlsx_sample/leads.xlsx') }}">دانــلود فایل نمــونه</a></li>
				   </ol>
				</div>
			</div>
		</div>	
    </div>
 </form>
</div>
</div>
@endsection


