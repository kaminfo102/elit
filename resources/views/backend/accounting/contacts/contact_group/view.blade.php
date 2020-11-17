@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-12">
	<div class="panel panel-default">
	<div class="panel-heading">نمایش گروه مشتریان</div>

	<div class="panel-body">
	  <table class="table table-bordered">
		<tr><td>گروه</td><td>{{ $contactgroup->group }}</td></tr>
		<tr><td>یادداشت</td><td>{{ $contactgroup->note }}</td></tr>
	  </table>
	</div>
  </div>
 </div>
</div>
@endsection


