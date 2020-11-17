@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="panel-title d-none">قالب های ایمیل</span>

			<div class="card-body">
			<table class="table table-bordered data-table">
			<thead>
			  <tr>
				<th>نام</th>
				<th>موضوع</th>
				<th>عملیات</th>
			  </tr>
			</thead>
			<tbody>
			  
			  @foreach($emailtemplates as $emailtemplate)
			  <tr id="row_{{ $emailtemplate->id }}">
				<td class='name'>{{ ucwords(str_replace('_',' ',$emailtemplate->name)) }}</td>
				<td class='subject'>{{ $emailtemplate->subject }}</td>
				<td>
					<a href="{{action('EmailTemplateController@edit', $emailtemplate['id'])}}" class="btn btn-warning btn-xs">ویرایش</a>
					<a href="{{action('EmailTemplateController@show', $emailtemplate['id'])}}" class="btn btn-primary btn-xs">نمایش</a>
				</td>

			  </tr>
			  @endforeach
			</tbody>
		  </table>
			</div>
		</div>
	</div>
</div>

@endsection


