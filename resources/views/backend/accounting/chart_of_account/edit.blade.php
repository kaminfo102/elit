@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-6">
		<div class="card">
			<span class="d-none panel-title">ویرایش درآمد/مخارج</span>

			<div class="card-body">
				<form method="post" class="validate" autocomplete="off" action="{{action('ChartOfAccountController@update', $id)}}" enctype="multipart/form-data">
					{{ csrf_field()}}
					<input name="_method" type="hidden" value="PATCH">				
					
					<div class="col-md-12">
					 <div class="form-group">
						<label class="control-label">نام</label>						
						<input type="text" class="form-control" name="name" value="{{ $chartofaccount->name }}" required>
					 </div>
					</div>

					<div class="col-md-12">
					  <div class="form-group">
						<label class="control-label">نوع</label>						
						<select class="form-control auto-select" data-selected="{{ $chartofaccount->type }}" name="type" id="type" required>
							<option value="income">درآمد</option>
							<option value="expense">هزینه</option>
						</select>
					  </div>
					</div>

				
					<div class="form-group">
					  <div class="col-md-12">
						<button type="submit" class="btn btn-primary">بروزرسانی</button>
					  </div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

@endsection

