@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
		<div class="d-none panel-title">تعریف بسته جدید</div>

			<div class="card-body">
			  	<form method="post" class="validate" autocomplete="off" action="{{ route('packages.store') }}" enctype="multipart/form-data">
					{{ csrf_field() }}
					<div class="row">
						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">نام بسته</label>
							<input type="text" class="form-control" name="package_name" value="{{ old('package_name') }}" required>
						  </div>
						</div>
						
						<div class="col-md-6">
						  <div class="form-group">
							<label class="control-label">ویژگی ها</label>
							<select class="form-control" name="is_featured">
							   <option value="0">خیر</option>
							   <option value="1">بله</option>
							</select>
						  </div>
						</div>
						
						<div class="col-md-12">
							<table class="table table-bordered">
								<thead class="thead-dark">
								   <th class="w-50">محدودیت ماهانه</th>
								   <th class="w-50">محدودیت سالانه</th>
								</thead>
								<tbody>
									<tr>
										<td>
											<div>
											  <div class="form-group">
												<label class="control-label">کارمندان</label>
												<select class="form-control select2" name="staff_limit[monthly]" required>
													<option value="خیر">خیر</option>
													<option value="نامحدود">نا محدود</option>
													@for( $i = 1; $i <= 30; $i++ )
														<option value="{{ $i }}">{{ $i }}</option>
													@endfor
												</select>
											  </div>
											</div>
										</td>
										<td>
											<div>
											  <div class="form-group">
												<label class="control-label">کارمندان</label>
												<select class="form-control select2" name="staff_limit[yearly]" required>
													<option value="خیر">خیر</option>
													<option value="نامحدود">نامحدود</option>
													@for( $i = 1; $i <= 30; $i++ )
														<option value="{{ $i }}">{{ $i }}</option>
													@endfor
												</select>
											  </div>
											</div>
										</td>
									</tr>
									
									<tr>
										<td>
											<div>
											  <div class="form-group">
												<label class="control-label">مخاطبان</label>
												<select class="form-control select2" name="contacts_limit[monthly]" required>
													<option value="خیر">خیر</option>
													<option value="نامحدود">نامحدود</option>
													@for( $i = 1; $i <= 100; $i++ )
														<option value="{{ $i }}">{{ $i }}</option>
													@endfor
												</select>
											  </div>
											</div>
										</td>
										<td>
											<div>
											  <div class="form-group">
												<label class="control-label">مخاطبان</label>
												<select class="form-control select2" name="contacts_limit[yearly]" required>
													<option value="خیر">خیر</option>
													<option value="نامحدود">نامحدود</option>
													@for( $i = 1; $i <= 100; $i++ )
														<option value="{{ $i }}">{{ $i }}</option>
													@endfor
												</select>
											  </div>
											</div>
										</td>
									</tr> 

									<tr>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">فاکتور</label>
												<select class="form-control select2" name="invoice_limit[monthly]" required>
													<option value="خیر">خیر</option>
													<option value="نامحدود">نامحدود</option>
													@for( $i = 1; $i <= 500; $i++ )
														<option value="{{ $i }}">{{ $i }}</option>
													@endfor
												</select>
											  </div>
											</div>
										</td>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">فاکتور</label>
												<select class="form-control select2" name="invoice_limit[yearly]" required>
													<option value="خیر">خیر</option>
													<option value="نامحدود">نامحدود</option>
													@for( $i = 1; $i <= 500; $i++ )
														<option value="{{ $i }}">{{ $i }}</option>
													@endfor
												</select>
											  </div>
											</div>
										</td>
									</tr>	
									
									<tr>
										<td>
											<div>
											  <div class="form-group">
												<label class="control-label">پیش فاکتور</label>
												<select class="form-control select2" name="quotation_limit[monthly]" required>
													<option value="خیر">خیر</option>
													<option value="نامحدود">نامحدود</option>
													@for( $i = 1; $i <= 500; $i++ )
														<option value="{{ $i }}">{{ $i }}</option>
													@endfor
												</select>
											  </div>
											</div>
										</td>
										<td>
											<div>
											  <div class="form-group">
												<label class="control-label">پیش فاکتور</label>
												<select class="form-control select2" name="quotation_limit[yearly]" required>
													<option value="خیر">خیر</option>
													<option value="نامحدود">نامحدود</option>
													@for( $i = 1; $i <= 500; $i++ )
														<option value="{{ $i }}">{{ $i }}</option>
													@endfor
												</select>
											  </div>
											</div>
										</td>
									</tr>


									<tr>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">مدیریت پروژه</label>
												<select class="form-control select2" name="project_management_module[monthly]" required>
													<option value="بله">بله</option>
													<option value="خیر">خیر</option>
												</select>
											  </div>
											</div>
										</td>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">مدیریت</label>
												<select class="form-control select2" name="project_management_module[yearly]" required>
													<option value="بله">بله</option>
													<option value="خیر">خیر</option>
												</select>
											  </div>
											</div>
										</td>
									</tr>	

									<tr>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">مدیریت تراکنش ها</label>
												<select class="form-control select2" name="recurring_transaction[monthly]" required>
													<option value="بله">بله</option>
													<option value="خیر">خیر</option>
												</select>
											  </div>
											</div>
										</td>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">مدیریت تراکنش ها</label>
												<select class="form-control select2" name="recurring_transaction[yearly]" required>
													<option value="بله">بله</option>
													<option value="خیر">خیر</option>
												</select>
											  </div>
											</div>
										</td>
									</tr>
									
									<tr>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">ماژول انبارداری</label>
												<select class="form-control select2" name="inventory_module[monthly]" required>
													<option value="بله">بله</option>
													<option value="خیر">خیر</option>
												</select>
											  </div>
											</div>
										</td>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">ماژول انبارداری</label>
												<select class="form-control select2" name="inventory_module[yearly]" required>
													<option value="بله">بله</option>
													<option value="خیر">خیر</option>
												</select>
											  </div>
											</div>
										</td>
									</tr>
									
									<tr>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">گفتگوی زنده</label>
												<select class="form-control select2" name="live_chat[monthly]" required>
													<option value="خیر">خیر</option>
													<option value="بله">بله</option>
												</select>
											  </div>
											</div>
										</td>
										<td>				
											<div>
											  <div class="form-group">
												<label class="control-label">گفتگوی زنده</label>
												<select class="form-control select2" name="live_chat[yearly]" required>
													<option value="خیر">خیر</option>
													<option value="بله">بله</option>
												</select>
											  </div>
											</div>
										</td>
									</tr>	
									
									<tr>
										<td>								
											<div>
											  <div class="form-group">
												<label class="control-label">مدیریت فایل</label>
												<select class="form-control select2" name="file_manager[monthly]" required>
													<option value="خیر">خیر</option>
													<option value="بله">بله</option>
												</select>
											  </div>
											</div>
										</td>
										<td>								
											<div>
											  <div class="form-group">
												<label class="control-label">مدیریت فایل</label>
												<select class="form-control select2" name="file_manager[yearly]" required>
													<option value="خیر">خیر</option>
													<option value="بله">بله</option>
												</select>
											  </div>
											</div>
										</td>
									</tr>
									
									<tr>
										<td>								
											<div>
											  <div class="form-group">
												<label class="control-label">پرداخت آنلاین</label>
												<select class="form-control select2" name="online_payment[monthly]" required>
													<option value="خیر">خیر</option>
													<option value="بله">بله</option>
												</select>
											  </div>
											</div>
										</td>
										<td>								
											<div>
											  <div class="form-group">
												<label class="control-label">پرداخت آنلاین</label>
												<select class="form-control select2" name="online_payment[yearly]" required>
													<option value="خیر">خیر</option>
													<option value="بله">بله</option>
												</select>
											  </div>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div>
											  <div class="form-group">
												<label class="control-label">{{ 'قمت هر ماه'.' '.currency() }}</label>
												<input type="text" class="form-control float-field" name="cost_per_month" value="{{ old('cost_per_month') }}" required>
											  </div>
											</div>
										</td>
										
										<td>
											<div>
											  <div class="form-group">
												<label class="control-label">{{ 'قیمت هر سال'.' '.currency() }}</label>
												<input type="text" class="form-control float-field" name="cost_per_year" value="{{ old('cost_per_year') }}" required>
											  </div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>

							
						<div class="col-md-12">
						  <div class="form-group">
							<button type="reset" class="btn btn-danger">از نـــو</button>
							<button type="submit" class="btn btn-primary">ذخـــیره</button>
						  </div>
						</div>
					</div>
			  	</form>
			</div>
	  	</div>
 	</div>
</div>
@endsection


