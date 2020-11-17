<div class="row">
	<div class="col-md-12">
		<div class="card">
			<div class="card-body">
			  <form method="post" class="validate" autocomplete="off" action="{{ url('client/select_business') }}">
				{{ csrf_field() }}

				<div class="row">
					<div class="col-md-12">
						<div class="alert alert-info">
							<span>
								{{ _lang('این فقط برای ویجت چت کار می کند. اگر با چندین شغل مرتبط هستید ، می توانید برای نمایش ویجت چت مشاغلی را انتخاب کنید. از آنجا که برخی از تجارت اجازه نمی دهد ویجت چت') }}
							</span>
						</div>
					</div>

					<div class="col-md-12">
						<div class="form-group">
						   <label class="control-label">نام کسب و کار</label>						
						   <select class="form-control select2" name="company_id" required>
							<option value="">انتخاب کنید</option>
							@foreach(Auth::user()->client as $client)
							   <option value="{{ $client->company->id }}" {{ session('company_id') == $client->company->id ? 'selected' : '' }}>{{ $client->company->business_name }}</option>
							@endforeach
						   </select>
						</div>
					</div>
					
					<div class="col-md-12">
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-block">ذخیره</button>
						</div>
					</div>
				</div>
			  </form>
			</div>
	    </div>
    </div>
</div>



