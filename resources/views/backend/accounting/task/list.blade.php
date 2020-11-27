@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-lg-12">
		<a class="btn btn-primary btn-xs ajax-modal" data-title="وظیفه جدید" href="{{ route('tasks.create') }}">
			<i class="ti-plus"></i> جــدید
		</a>
		<a class="btn btn-secondary btn-xs" href="{{ url('tasks/kanban') }}"><i class="ti-layout-column3"></i> نمایش به صورت کابان</a>
		<div class="card mt-2">

			<span class="panel-title d-none">لیست وظایف</span>
				
			<div class="card-body">
				<div class="row">
					<div class="col-lg-3">
                     	 <label>پروژه</label>
                     	 <select class="form-control select2 select-filter" name="project_id">
                     	 	<option value="">همه پروژه ها</option>
							{{ create_option('projects','id','name','',array('company_id=' => company_id())) }}
                     	 </select>
                     </div>	

                     <div class="col-lg-3">
                     	 <label>اخـتصاص داده شـده</label>
                     	 <select class="form-control select2 select-filter" name="assigned_user_id">
                             <option value="">همه کاربران</option>
                             {{ create_option('users','id','name','',array('company_id=' => company_id())) }}
                     	 </select>
                     </div>	

                     <div class="col-lg-3">
                     	 <label>وضعیت ها</label>
                     	 <select class="form-control select2 select-filter" data-placeholder="همه وضعیت ها" name="task_status_id" multiple="true">
							{{ create_option('task_statuses','id','title','',array('company_id=' => company_id())) }}
                     	 </select>
                     </div>	

                     <div class="col-lg-3">
                     	 <label>ضرب العجل</label>
                     	 <input type="text" class="form-control select-filter" id="date_range" autocomplete="off" name="date_range">
                     </div>	
	
                </div>

                <hr>

				<table id="tasks_table" class="table table-bordered">
					<thead>
					    <tr>
						    <th>عنوان</th>
							<th>پروژه</th>
							<th>اهمیت</th>
							<th>وضعیت</th>
							<th>اختصاص به کاربر</th>
							<th>تاریخ شروع</th>
							<th>تاریخ پایان</th>
							<th>عملیات</th>
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
<script src="{{ asset('public/backend/assets/js/ajax-datatable/tasks.js') }}"></script>
@endsection