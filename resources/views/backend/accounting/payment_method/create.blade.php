@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-6">
	<div class="card">
	<span class="d-none panel-title">روش پــرداخت جــدید</span>

	<div class="card-body">
		<form method="post" class="validate" autocomplete="off" action="{{ url('payment_methods') }}" enctype="multipart/form-data">
			{{ csrf_field() }}
			
			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">نام</label>						
				<input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
			  </div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
				<button type="reset" class="btn btn-danger">از نــو</button>
				<button type="submit" class="btn btn-primary">ذخــیره</button>
			  </div>
			</div>
		</form>
	</div>
  </div>
 </div>
</div>
@endsection


