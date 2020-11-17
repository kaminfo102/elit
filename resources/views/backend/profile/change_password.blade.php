@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<h5 class="card-header bg-primary text-white mt-0 panel-title">تغییر کلمه عبور</h5>
			<div class="card-body">
				<div class="row">
					<div class="col-md-6">
						<form action="{{ url('profile/update_password') }}" class="form-horizontal form-groups-bordered validate" enctype="multipart/form-data" method="post" accept-charset="utf-8">
							@csrf
							<div class="form-group">
								<label class="control-label">کلمه عبور فعلی</label>
								<input type="password" class="form-control" name="oldpassword" required>
							</div>
							<div class="form-group">
								<label class="control-label">کلمه عبور جدید</label>
								<input type="password" class="form-control" name="password" required>
							</div>
							<div class="form-group">
								<label class="control-label">تایید کلمه عبور جدید</label>
								<input type="password" class="form-control" id="password-confirm" name="password_confirmation" required>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary">بروزرسانی </button>
							</div>
						</form>
					</div>
                </div>				
			</div>
		</div>
	</div>
</div>
@endsection

