@extends('layouts.app')

@section('content')
<div class="row">
<div class="col-12">
<form method="post" class="validate" autocomplete="off" action="{{ route('services.import') }}" enctype="multipart/form-data">
	<div class="row">
		<div class="col-md-6">
			<div class="card">
				<div class="card-header bg-primary text-white">
				   <h5 class="panel-title">وارد کردن لیست سرویس ها</h5>
				</div>
				<div class="card-body">
					{{ csrf_field() }}

					<div class="row">
						<div class="col-md-12">
						  <div class="form-group">
							<label class="control-label">آپلود فایل XLSX</label>						
							<input type="file" class="dropify" name="file" data-allowed-file-extensions="xlsx" required>
						  </div>
						</div>

						<div class="col-md-12">
						  <div class="form-group">
							<button type="submit" class="btn btn-primary btn-xs">وارد کردن محصولات</button>
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
				      <li>قسمت های الزامی حتما باید وارد شوند.</li>
				      <li><a href="{{ asset('public/xlsx_sample/services.xlsx') }}">دانــلود فــایل نـــمونه</a></li>
				   </ol>
				</div>
			</div>
		</div>	
    </div>
 </form>
</div>
</div>
@endsection


