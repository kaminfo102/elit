@extends('layouts.app')
@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
		    <h5 class="card-header bg-primary text-white mt-0 panel-title">تنظیمات پروفایل</h5>
			<div class="card-body">
				<div class="row">
					<div class="col-md-6">
						<form action="{{ url('profile/update')}}" autocomplete="off" class="form-horizontal form-groups-bordered validate" enctype="multipart/form-data" method="post">
							@csrf
							<div class="form-group">
								<label class="control-label">نام</label>
								<input type="text" class="form-control" name="name" value="{{$profile->name}}" required>
							</div>

							<div class="form-group">
								<label class="control-label">ایمیل</label>
								<input type="text" class="form-control" name="email" value="{{ $profile->email }}" required>
							</div>

							<div class="form-group">
								<label class="control-label">زبان</label>
								<select class="form-control select2" name="language">
									<option value="">انتخاب کنید</option>
									{{ load_language( $profile->language ) }}
								</select>
							</div>

							<div class="form-group">
								<label class="control-label">تصویر 300*400</label>
								<input type="file" class="form-control dropify" data-default-file="{{ $profile->profile_picture != "" ? asset('public/uploads/profile/'.$profile->profile_picture) : '' }}" name="profile_picture" data-allowed-file-extensions="png jpg jpeg PNG JPG JPEG">
							</div>

							<div class="form-group">
								<button type="submit" class="btn btn-primary">بروزرسانی پروفایل</button>
							</div>
						</form>
					</div>	

                    @if(Auth::user()->user_type == 'user')
	                    <div class="col-md-6">
	                    	 <table class="table table-striped table-bordered">
						    	<tr>
						    		<td colspan="2" class="text-center"><b>{{ $profile->company->package->package_name.' '.'جزئیات بسته' }}</b></td>
						    	</tr>
						    	<tr>
						    		<td><b>ویژگی ها</b></td>
						    		<td class="text-center"><b>محدودیت ها</b></td>
						    	</tr>
						    	<tr>
						    		<td>کارمند</td>
						    		<td class="text-center">{{ $profile->company->staff_limit }}</td>
						    	</tr>
						    	<tr>
						    		<td>مخاطب</td>
						    		<td class="text-center">{{ $profile->company->contacts_limit }}</td>
						    	</tr>
						    	<tr>
						    		<td>فاکتور</td>
						    		<td class="text-center">{{ $profile->company->invoice_limit }}</td>
						    	</tr>
						    	<tr>
						    		<td>پیش فاکتور</td>
						    		<td class="text-center">{{ $profile->company->quotation_limit }}</td>
						    	</tr>
								<tr>
						    		<td>مدیریت پروژه</td>
						    		<td class="text-center">{{ $profile->company->project_management_module }}</td>
						    	</tr>
						    	<tr>
						    		<td>تراکنش های دوره ای</td>
						    		<td class="text-center">{{ $profile->company->recurring_transaction }}</td>
						    	</tr>
								<tr>
									<td>ماژول انبارداری</td>
									<td class="text-center">{{ $profile->company->inventory_module }}</td>
								</tr>
						    	<tr>
						    		<td>گفتگوی زنده</td>
						    		<td class="text-center">{{ $profile->company->live_chat }}</td>
						    	</tr>
						    	<tr>
						    		<td>مدیریت فایل</td>
						    		<td class="text-center">{{ $profile->company->file_manager }}</td>
						    	</tr>
						    	<tr>
						    		<td>پرداخت آنلاین</td>
						    		<td class="text-center">{{ $profile->company->online_payment }}</td>
						    	</tr>
						    </table>
	                    </div>
                    @endif


				</div>	
			</div>
		</div>
	</div>
</div>
@endsection

