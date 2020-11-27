@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<span class="d-none panel-heading">نمایش مالیات</span>

	<div class="card-body">
	    <table class="table table-bordered">
			<tr><td>نام</td><td>{{ $tax->tax_name }}</td></tr>
			<tr><td>نرخ</td><td>{{ $tax->rate }}</td></tr>
			<tr><td>نوع</td><td>{{ ucwords($tax->type) }}</td></tr>
	    </table>
	</div>
  </div>
 </div>
</div>
@endsection


