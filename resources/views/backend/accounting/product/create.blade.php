@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
	<div class="card">
	<span class="panel-title d-none">کالای جدید</span>

	<div class="card-body">
	  <form method="post" class="validate" autocomplete="off" action="{{ url('products') }}" enctype="multipart/form-data">
		{{ csrf_field() }}
		    <div class="row">
				<div class="col-md-12">
				  <div class="form-group">
					<label class="control-label">نام کالا</label>
					<input type="text" class="form-control" name="item_name" value="{{ old('item_name') }}" required>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<a href="{{ route('suppliers.create') }}" data-reload="false" data-title="تامین کننده جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جدید</a>
					<label class="control-label">تامین کننده</label>
					<select class="form-control select2-ajax" data-value="id" data-display="supplier_name" data-table="suppliers" data-where="1" name="supplier_id">
						<option value="">انتخاب کنید</option>
					</select>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">{{ _lang('قیمت خرید').' '.currency() }}</label>
					<input type="text" class="form-control" name="product_cost" value="{{ old('product_cost') }}" required>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">{{ _lang('قیمت فروش') .' '.currency() }}</label>
					<input type="text" class="form-control" name="product_price" value="{{ old('product_price') }}" required>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<a href="{{ route('product_units.create') }}" data-reload="false" data-title="واحد کالای جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جدید</a>
					<label class="control-label">واحد کالا</label>
					<select class="form-control select2-ajax" data-value="unit_name" data-display="unit_name" data-table="product_units" data-where="1" name="product_unit" required>
						<option value="">انتخاب واحد کالا</option>
					</select>
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">مالیات</label>
					<select class="form-control" name="tax_method" required>
						<option value="ندارد">شامل مالیات نمیشود</option>
						<option value="دارد">شامل مالیات می شود</option>
					</select>	
				  </div>
				</div>

				<div class="col-md-6">
				  <div class="form-group">
					<label class="control-label">مالیات</label>
					<select class="form-control select2" name="tax_id">
							<option value="">بدون مالیات</option>
							@foreach(App\Tax::where("company_id",company_id())->get() as $tax)
								 <option value="{{ $tax->id }}">{{ $tax->tax_name }} - {{ $tax->type =='percent' ? $tax->rate.' %' : $tax->rate }}</option>
							@endforeach
					 </select>
				  </div>
				</div>

				<div class="col-md-12">
				  <div class="form-group">
					<label class="control-label">توضیحات</label>
					<textarea class="form-control" name="description">{{ old('description') }}</textarea>
				  </div>
				</div>

				
				<div class="col-md-12">
				  <div class="form-group">
					<button type="reset" class="btn btn-danger">از نو</button>
					<button type="submit" class="btn btn-primary">ذخیره</button>
				  </div>
				</div>
			</div>
	    </form>
	</div>
  </div>
 </div>
</div>
@endsection


