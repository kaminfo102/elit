@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-6">
	<div class="card">
	<span class="d-none panel-title">واحد کالای جدید</span>

	<div class="card-body">
		<form method="post" class="validate" autocomplete="off" action="{{url('product_units')}}" enctype="multipart/form-data">
			{{ csrf_field() }}
			
			<div class="col-md-12">
			  <div class="form-group">
				<label class="control-label">نام واحد</label>						
				<input type="text" class="form-control" name="unit_name" value="{{ old('unit_name') }}" required>
			  </div>
			</div>

			<div class="col-md-12">
			  <div class="form-group">
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


