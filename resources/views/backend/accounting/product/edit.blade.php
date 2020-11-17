@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<span class="d-none panel-title">بروزرسانی کالا</span>

			<div class="card-body">
				<form method="post" class="validate" autocomplete="off" action="{{action('ProductController@update', $id)}}" enctype="multipart/form-data">
					{{ csrf_field()}}
					<input name="_method" type="hidden" value="PATCH">				
                    <div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label class="control-label">نام کالا</label>
								<input type="text" class="form-control" name="item_name" value="{{ $item->item_name }}" required>
							</div>
						</div>
						
						<div class="col-md-6">
						  <div class="form-group">
							<a href="{{ route('suppliers.create') }}" data-reload="false" data-title="تامین کننده جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جدید</a>
							<label class="control-label">{{ _lang('Supplier') }}</label>						
							<select class="form-control select2-ajax" data-value="id" data-display="supplier_name" data-table="suppliers" data-where="1" name="supplier_id">
								{{ create_option("suppliers","id","supplier_name",$item->product->supplier_id,array("company_id="=>company_id())) }}
							</select>
						  </div>
						</div>

						<div class="col-md-6">
						<div class="form-group">
							<label class="control-label">{{ _lang('قیمت خرید').' '.currency() }}</label>
							<input type="text" class="form-control" name="product_cost" value="{{ $item->product->product_cost }}" required>
						</div>
						</div>

						<div class="col-md-6">
						<div class="form-group">
							<label class="control-label">{{ _lang('قیمت فروش').' '.currency() }}</label>
							<input type="text" class="form-control" name="product_price" value="{{ $item->product->product_price }}" required>
						</div>
						</div>
						
						<div class="col-md-6">
						  <div class="form-group">
							<a href="{{ route('product_units.create') }}" data-reload="false" data-title="واحد کالای جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جدید</a>
							<label class="control-label">واحد کالا</label>
							<select class="form-control select2-ajax" data-value="unit_name" data-display="unit_name" data-table="product_units" data-where="1" name="product_unit" required>
								{{ create_option("product_units","unit_name","unit_name",$item->product->product_unit,array("company_id="=>company_id())) }}
							</select>
						  </div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">مالیات</label>
								<select class="form-control" name="tax_method" required>
									<option value="ندارد" {{ $item->product->tax_method == 'exclusive' ? 'selected' : '' }}>شامل مالیات نمی شود</option>
									<option value="دارد" {{ $item->product->tax_method == 'inclusive' ? 'selected' : '' }}>شامل مالیات می شود</option>
								</select>	
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label class="control-label">درصد مالیات</label>
								<select class="form-control select2" name="tax_id">
									<option value="">بدون مالیات</option>
									@foreach(App\Tax::where("company_id",company_id())->get() as $tax)
										<option value="{{ $tax->id }}" {{ $item->product->tax_id==$tax->id ? 'selected' : '' }}>{{ $tax->tax_name }} - {{ $tax->type =='percent' ? $tax->rate.' %' : $tax->rate }}</option>
									@endforeach
								</select>
							</div>
						</div>

						<div class="col-md-12">
							<div class="form-group">
								<label class="control-label">توضیحات</label>
								<textarea class="form-control" name="description">{{ $item->product->description }}</textarea>
							</div>
						</div>
		
						<div class="col-md-12">
						  <div class="form-group">
							<button type="submit" class="btn btn-primary">بروزرسانـــــی</button>
						  </div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

@endsection


