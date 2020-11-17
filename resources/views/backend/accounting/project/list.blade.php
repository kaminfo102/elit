@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-lg-12">

		<div class="card mt-2">
			<span class="panel-title d-none">لیست پروژه ها</span>
			<div class="card-body">
				<div class="row">
					 <div class="col-lg-6 mb-2">
                     	 <a class="btn btn-primary btn-xs ajax-modal" data-title="پروژه جدید" href="{{ route('projects.create') }}"><i class="ti-plus"></i> جـــدید</a>
                     </div>	
                     <div class="col-lg-3 mb-2">
                     	 <select class="form-control select2 select-filter" name="client_id">
                             <option value="">همه مشتریان</option>
                             {{ create_option('contacts','id','contact_name','',array('company_id=' => company_id())) }}
                     	 </select>
                     </div>	

                     <div class="col-lg-3">
                     	 <select class="form-control select2 select-filter" data-placeholder="همه وضعیت ها" name="status"
                     	 multiple="true">
                     	 	<option value="not_started">شروع نشده</option>
							<option value="in_progress">در حال پیش رفت</option>
							<option value="on_hold">در انتظار</option>
							<option value="cancelled">لغو شده</option>
							<option value="completed">کامل شده</option>
                     	 </select>
                     </div>		
                </div>

                <hr>


				<table id="projects_table" class="table table-bordered">
					<thead>
					    <tr>
							<th>نام</th>
							<th>کلاینت</th>
							<th>وضعیت</th>
							<th>تاریخ شروع</th>
							<th>تاریخ پایان</th>
							<th>اعضای پروژه</th>
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
<script src="{{ asset('public/backend/assets/js/ajax-datatable/projects.js') }}"></script>
@endsection