@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-6">
	<div class="card">
	<span class="d-none panel-title">ایجاد نوع درآمد/مخارج</span>

	<div class="card-body">
		<form method="post" class="validate" autocomplete="off" action="{{url('chart_of_accounts')}}" enctype="multipart/form-data">
			{{ csrf_field() }}
			
			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">نام</label>						
				<input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
			  </div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">نوع</label>						
				<select class="form-control" name="type" required>
					<option value="">انتخاب کنید</option>
				    <option value="income">درآمد</option>
				    <option value="expense">هزینه</option>
				</select>
			  </div>
			</div>
	
			<div class="form-group">
			  <div class="col-md-12">
				<button type="reset" class="btn btn-danger">از نو</button>
				<button type="submit" class="btn btn-primary">ذخیره</button>
			  </div>
			</div>
		</form>
	</div>
  </div>
 </div>
</div>
@endsection


