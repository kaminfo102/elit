@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<span class="d-none panel-heading">نمایش روش پرداختی</span>

	<div class="card-body">
	  <table class="table table-bordered">
		<tr><td>نام</td><td>{{ $paymentmethod->name }}</td></tr>	
	  </table>
	</div>
  </div>
 </div>
</div>
@endsection


