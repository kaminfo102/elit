@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<div class="d-none panel-title">نمایش فایل</div>

	<div class="card-body">
	    <table class="table table-bordered">
			<tr><td>نام</td><td>{{ $filemanager->name }}</td></tr>
			<tr><td>نوع مایم</td><td>{{ $filemanager->mime_type }}</td></tr>
			<tr><td>فایل</td><td>{{ $filemanager->file }}</td></tr>
			<tr><td>ایجاد شده توسط</td><td>{{ $filemanager->created_by }}</td></tr>
	    </table>
	</div>
  </div>
 </div>
</div>
@endsection


