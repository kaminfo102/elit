
@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
	    <a class="btn btn-primary btn-xs" href="{{ route('contacts.create') }}"><i class="ti-plus"></i> مخاطب جدید</a>

	    <a class="btn btn-dark btn-xs" href="{{ route('contacts.import') }}"><i class="ti-import"></i> وارد کردن لیست مخاطبین</a>
			
		<div class="card mt-2">
			<span class="panel-title d-none">لیست مخاطبین</span>
			<div class="card-body">
			<table id="contacts-table" class="table table-bordered ">
			<thead>
			  <tr>
				<th>تصویر</th>
				<th>نام</th>
				<th>نوع پروفایل</th>
				<th>ایمیل</th>
				<th>تلفن</th>
				<th>گروه</th>
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
<script src="{{ asset('public/backend/assets/js/ajax-datatable/contacts.js') }}"></script>
@endsection


