@extends('layouts.app')

@section('content')
<div class="row">
<div class="col-12">
<form method="post" class="validate" autocomplete="off" action="{{ route('products.import') }}" enctype="multipart/form-data">
	<div class="row">
		<div class="col-md-6">
			<div class="card">
				<div class="card-header bg-primary text-white">
				   <h5 class="panel-title">وارد کردن لیست کالاها</h5>
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
							<button type="submit" class="btn btn-primary btn-xs">وارد کردن لیست کالاها</button>
						  </div>
						</div>
					</div>
				</div>
			</div>
	    </div>
		
	    <div class="col-md-6">
			<div class="card">
			    <div class="card-header bg-primary text-white">
				   <h5>ستورالعمل</h5>
				</div>
			    <div class="card-body">
				   <ol class="pl-3">
				      <li>فقط فایل با پسوند XLSX مجاز می باشد.</li>
				      <li>ردیف اول را خالی بگذارید یا به عنوان نام ستون ها استفاده شود.</li>
				      <li>مواردی که الزامی می باشد را حتما تکمیل کنید.</li>
				      <li><a href="{{ asset('public/xlsx_sample/products.xlsx') }}">دانلود فایل نمــــونه</a></li>
				   </ol>
				</div>
			</div>
		</div>	
    </div>
 </form>
</div>
</div>
@endsection

