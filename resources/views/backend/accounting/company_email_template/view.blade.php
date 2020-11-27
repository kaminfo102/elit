@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<div class="panel-title d-none">نمایش قالب ایمیل</div>

	<div class="card-body">
	  <table class="table table-bordered">
		<tr><td>مربوط به</td><td>{{ ucwords($companyemailtemplate->related_to) }}</td></tr>
		<tr><td>نام</td><td>{{ $companyemailtemplate->name }}</td></tr>
		<tr><td>موضوع</td><td>{{ $companyemailtemplate->subject }}</td></tr>
		<tr><td>متن</td><td>{!! clean($companyemailtemplate->body) !!}</td></tr>
	  </table>
	</div>
  </div>
 </div>
</div>
@endsection


