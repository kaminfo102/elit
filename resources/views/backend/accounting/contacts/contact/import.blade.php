@extends('layouts.app')

@section('content')
<div class="row">
<div class="col-12">
<form method="post" class="validate" autocomplete="off" action="{{ route('contacts.import') }}" enctype="multipart/form-data">
	<div class="row">
		<div class="col-md-6">
			<div class="card">
				<div class="card-header bg-primary text-white">
				   <h5 class="panel-title">وارد کردن مخاطبین</h5>
				</div>
				<div class="card-body">
					{{ csrf_field() }}

					<div class="row">
					    <div class="col-md-12">
						  <div class="form-group">
							<a href="{{ route('contact_groups.create') }}" data-reload="false" data-title="گروه کخاطبین جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدید</a>
							<label class="control-label">گروه</label>
							<select class="form-control select2-ajax" data-value="id" data-display="name" data-table="contact_groups" data-where="1" name="group_id" required>
								<option value="">انتخاب گروه</option>
							</select>
						 </div>
						</div>
				
						<div class="col-md-12">
						  <div class="form-group">
							<label class="control-label">آپلود فایل XLXS</label>
							<input type="file" class="dropify" name="file" data-allowed-file-extensions="xlsx" required>
						  </div>
						</div>

						<div class="col-md-12">
						  <div class="form-group">
							<button type="submit" class="btn btn-primary btn-xs">وارد کردن مخاطبین</button>
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
				      <li>فقط فایل با فرمت XLSX مجاز می باشد.</li>
				      <li>باید سطر اول باید خالی یا عنوان ستون ها باشد.</li>
				      <li>مخاطب با ایمیل تکراری وارد ننمایید.</li>
				      <li>فیلدهای ضروری حتما باید تکمیل شوند.</li>
				      <li><a href="{{ asset('public/xlsx_sample/contacts.xlsx') }}">دانــلود نمونه فایل</a></li>
				   </ol>
				</div>
			</div>
		</div>	
    </div>
 </form>
</div>
</div>
@endsection



