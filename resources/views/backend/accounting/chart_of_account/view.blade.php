@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-12">
	<div class="panel panel-default">
	<div class="panel-heading">نمایش نوع درآمد/هزینه</div>

	<div class="panel-body">
	  <table class="table table-bordered">
		<tr><td>نام</td><td>{{ $chartofaccount->name }}</td></tr>
		<tr><td>نوع</td><td>{{ ucwords($chartofaccount->type) }}</td></tr>
	  </table>
	</div>
  </div>
 </div>
</div>
@endsection


