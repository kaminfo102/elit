@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="panel-title d-none">نمایش تامین کننده</span>

			<div class="card-body">
			  <table class="table table-bordered">
				<tr><td>نام</td><td>{{ $supplier->supplier_name }}</td></tr>
				<tr><td>شرکت</td><td>{{ $supplier->company_name }}</td></tr>
				<tr><td>کد اقتصادی</td><td>{{ $supplier->vat_number }}</td></tr>
				<tr><td>ایمیل</td><td>{{ $supplier->email }}</td></tr>
				<tr><td>تلفن</td><td>{{ $supplier->phone }}</td></tr>
				<tr><td>آدرس</td><td>{{ $supplier->address }}</td></tr>
				<tr><td>کشور</td><td>{{ $supplier->country }}</td></tr>
				<tr><td>شهر</td><td>{{ $supplier->city }}</td></tr>
				<tr><td>منطقه</td><td>{{ $supplier->state }}</td></tr>
				<tr><td>کد پستی</td><td>{{ $supplier->postal_code }}</td></tr>
			  </table>
			</div>
	  	</div>
	</div>
</div>
@endsection


