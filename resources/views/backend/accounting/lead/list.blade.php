@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-lg-12">
		<a class="btn btn-primary btn-xs mb-2 ajax-modal" data-title="{{ _lang('Create New Lead') }}" href="{{ route('leads.create') }}"><i class="ti-plus"></i> جــدید</a>
		<a class="btn btn-dark btn-xs mb-2" href="{{ route('leads.import') }}"><i class="ti-upload"></i> وارد کردن لیست</a>
		<a class="btn btn-secondary btn-xs mb-2" href="{{ url('leads/kanban') }}"><i class="ti-layout-column3"></i> نمای کابان</a>
		<div class="card mt-2">
		    
			<span class="panel-title d-none">لیست پیگیری</span>
				
			<div class="card-body">
                <div class="row">
                     <div class="col-lg-3">
                     	 <label>مربوط به</label>
                     	 <select class="form-control select2 select-filter" name="assigned_user_id">
                             <option value="">همه</option>
                             {{ create_option('users','id','name','',array('company_id=' => company_id())) }}
                     	 </select>
                     </div>	

                     <div class="col-lg-3">
                     	 <label>وضعیت پیگیری</label>
                     	 <select class="form-control select2 select-filter" data-placeholder="همه" name="lead_status_id" multiple="true">
							{{ create_option('lead_statuses','id','title','',array('company_id=' => company_id())) }}
                     	 </select>
                     </div>	

                     <div class="col-lg-3">
                     	 <label>منبع پیگیری</label>
                     	 <select class="form-control select2 select-filter" name="lead_source_id">
                     	 	<option value="">همه</option>
							{{ create_option('lead_sources','id','title','',array('company_id=' => company_id())) }}
                     	 </select>
                     </div>	

                      <div class="col-lg-3">
                     	 <label>کشور</label>
                     	 <select class="form-control select2 select-filter" name="country">
                     	 	<option value="">همه</option>
							{{ get_country_list() }}
                     	 </select>
                     </div>		
                </div>

                <hr>

				<table id="leads_table" class="table table-striped">
					<thead>
					  <tr>
						<th>نام</th>
						<th>شرکت</th>
						<th>ایمیل</th>
						<th>تلفن</th>
						<th>وضعیت</th>
						<th>منبع</th>
						<th>مربوط به</th>
						<th class="text-center">عملیات</th>
					  </tr>
					</thead>
					<tbody>  
					    
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

@endsection

@section('js-script')
<script src="{{ asset('public/backend/assets/js/ajax-datatable/leads.js') }}"></script>
@endsection