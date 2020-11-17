@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-12">
	<div class="card">
	<span class="panel-title d-none">ســرویس جــدید</span>

	<div class="card-body">
		  <form method="post" class="validate" autocomplete="off" action="{{ url('services') }}" enctype="multipart/form-data">
			{{ csrf_field() }}
			<div class="row">
				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">نام سرویس</label>						
					<input type="text" class="form-control" name="item_name" value="{{ old('item_name') }}" required>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">{{ 'قیمت سرویس'.' '.currency() }}</label>						
					<input type="text" class="form-control" name="cost" value="{{ old('cost') }}" required>
				  </div>
				</div>


				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">روش مالیات</label>						
					<select class="form-control" name="tax_method" required>
					  <option value="exclusive">شامل نمی شود</option>
					  <option value="inclusive">شامل می شود</option>
					</select>	
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">درصد مالیات</label>						
					<select class="form-control select2" name="tax_id">
						<option value="">بدون مالیات</option>
						@foreach(App\Tax::where("company_id",company_id())->get() as $tax)
							 <option value="{{ $tax->id }}">{{ $tax->tax_name }} - {{ $tax->type =='percent' ? $tax->rate.' %' : $tax->rate }}</option>
						@endforeach
					 </select>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">توضیحات</label>						
					<textarea class="form-control" name="description">{{ old('description') }}</textarea>
				  </div>
				</div>

					
				<div class="col-md-12">
				  <div class="form-group">
					<button type="reset" class="btn btn-danger">از نــو</button>
					<button type="submit" class="btn btn-primary">ذخــیره</button>
				  </div>
				</div>
			</div>
		</form>
	</div>
  </div>
 </div>
</div>
@endsection


