@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="d-none panel-title">بروزرســانی بــسته</div>

			<div class="card-body">
			  <form method="post" class="validate" autocomplete="off" action="{{ action('PackageController@update', $id) }}" enctype="multipart/form-data">
				
				{{ csrf_field() }}
				
				<input name="_method" type="hidden" value="PATCH">				
								
				<div class="row">
					<div class="col-md-6">
					  <div class="form-group">
						<label class="control-label">نام بــسته</label>
						<input type="text" class="form-control" name="package_name" value="{{ $package->package_name }}" required>
					  </div>
					</div>
					
					<div class="col-md-6">
					  <div class="form-group">
						<label class="control-label">ویژه است</label>
						<select class="form-control" name="is_featured">
						   <option value="0" {{ $package->is_featured == 0 ? 'selected' : '' }}>خیر</option>
						   <option value="1" {{ $package->is_featured == 1 ? 'selected' : '' }}>بله</option>
						</select>
					  </div>
					</div>
					
					<div class="col-md-12">
						<table class="table table-bordered">
							<thead class="thead-dark">
							   <th class="w-50">مدودیت ماهانه</th>
							   <th class="w-50">محدودیت سالانه</th>
							</thead>
							<tbody>
								<tr>
									<td>
										<div>
										  <div class="form-group">
											<label class="control-label">کارمند</label>
											<select class="form-control select2" name="staff_limit[monthly]" id="staff_limit_monthly" required>
												<option value="خیر">خیر</option>
												<option value="نامحدود">نامحدود</option>
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
											<label class="control-label">کارمند</label>
											<select class="form-control select2" name="staff_limit[yearly]" id="staff_limit_yearly" required>
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
											<label class="control-label">مخاطب</label>
											<select class="form-control select2" name="contacts_limit[monthly]" id="contacts_limit_monthly" required>
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
											<label class="control-label">مخاطب</label>
											<select class="form-control select2" name="contacts_limit[yearly]" id="contacts_limit_yearly" required>
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
											<select class="form-control select2" name="invoice_limit[monthly]" id="invoice_limit_monthly" required>
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
											<select class="form-control select2" name="invoice_limit[yearly]" id="invoice_limit_yearly" required>
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
											<select class="form-control select2" name="quotation_limit[monthly]" id="quotation_limit_monthly" required>
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
											<select class="form-control select2" name="quotation_limit[yearly]" id="quotation_limit_yearly" required>
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
											<select class="form-control select2" name="project_management_module[monthly]" id="project_management_module_monthly" required>
												<option value="بله">بله</option>
												<option value="خیر">خیر</option>
											</select>
										  </div>
										</div>
									</td>
									<td>				
										<div>
										  <div class="form-group">
											<label class="control-label">مدیریت پروژه</label>
											<select class="form-control select2" name="project_management_module[yearly]" id="project_management_module_yearly" required>
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
											<select class="form-control select2" name="recurring_transaction[monthly]" id="recurring_transaction_monthly" required>
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
											<select class="form-control select2" name="recurring_transaction[yearly]" id="recurring_transaction_yearly" required>
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
											<select class="form-control select2" name="inventory_module[monthly]" id="inventory_module_monthly" required>
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
											<select class="form-control select2" name="inventory_module[yearly]" id="inventory_module_yearly" required>
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
											<select class="form-control select2" name="live_chat[monthly]" id="live_chat_monthly" required>
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
											<select class="form-control select2" name="live_chat[yearly]" id="live_chat_yearly" required>
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
											<select class="form-control select2" name="file_manager[monthly]" id="file_manager_monthly" required>
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
											<select class="form-control select2" name="file_manager[yearly]" id="file_manager_yearly" required>
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
											<select class="form-control select2" name="online_payment[monthly]" id="online_payment_monthly" required>
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
											<select class="form-control select2" name="online_payment[yearly]" id="online_payment_yearly" required>
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
											<label class="control-label">{{ 'ماهانه'.' '.currency() }}</label>
											<input type="text" class="form-control float-field" name="cost_per_month" value="{{ $package->cost_per_month }}" required>
										  </div>
										</div>
									</td>
									
									<td>
										<div>
										  <div class="form-group">
											<label class="control-label">{{ 'سالانه'.' '.currency() }}</label>
											<input type="text" class="form-control float-field" name="cost_per_year" value="{{ $package->cost_per_year }}" required>
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


@section('js-script')
<script>
(function($) {
    "use strict"

	$("#staff_limit_monthly").val("{{ unserialize($package->staff_limit)['monthly'] }}").trigger('change');
	$("#staff_limit_yearly").val("{{ unserialize($package->staff_limit)['yearly'] }}").trigger('change');

	$("#contacts_limit_monthly").val("{{ unserialize($package->contacts_limit)['monthly'] }}").trigger('change');
	$("#contacts_limit_yearly").val("{{ unserialize($package->contacts_limit)['yearly'] }}").trigger('change');

	$("#invoice_limit_monthly").val("{{ unserialize($package->invoice_limit)['monthly'] }}").trigger('change');
	$("#invoice_limit_yearly").val("{{ unserialize($package->invoice_limit)['yearly'] }}").trigger('change');

	$("#quotation_limit_monthly").val("{{ unserialize($package->quotation_limit)['monthly'] }}").trigger('change');
	$("#quotation_limit_yearly").val("{{ unserialize($package->quotation_limit)['yearly'] }}").trigger('change');

	$("#project_management_module_monthly").val("{{ unserialize($package->project_management_module)['monthly'] }}").trigger('change');
	$("#project_management_module_yearly").val("{{ unserialize($package->project_management_module)['yearly'] }}").trigger('change');

	$("#recurring_transaction_monthly").val("{{ unserialize($package->recurring_transaction)['monthly'] }}").trigger('change');
	$("#recurring_transaction_yearly").val("{{ unserialize($package->recurring_transaction)['yearly'] }}").trigger('change');

	$("#inventory_module_monthly").val("{{ unserialize($package->inventory_module)['monthly'] }}").trigger('change');
	$("#inventory_module_yearly").val("{{ unserialize($package->inventory_module)['yearly'] }}").trigger('change');

	$("#live_chat_monthly").val("{{ unserialize($package->live_chat)['monthly'] }}").trigger('change');
	$("#live_chat_yearly").val("{{ unserialize($package->live_chat)['yearly'] }}").trigger('change');

	$("#file_manager_monthly").val("{{ unserialize($package->file_manager)['monthly'] }}").trigger('change');
	$("#file_manager_yearly").val("{{ unserialize($package->file_manager)['yearly'] }}").trigger('change');

	$("#online_payment_monthly").val("{{ unserialize($package->online_payment)['monthly'] }}").trigger('change');
	$("#online_payment_yearly").val("{{ unserialize($package->online_payment)['yearly'] }}").trigger('change');

})(jQuery);	
</script>
@endsection

