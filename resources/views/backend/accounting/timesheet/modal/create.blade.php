<form method="post" class="ajax-screen-submit" autocomplete="off" action="{{ route('timesheets.store') }}" enctype="multipart/form-data">
	{{ csrf_field() }}
	
	<div class="row p-2">
	    <div class="col-md-6">
			<div class="form-group">
				<label class="control-label">تاریخ شروع</label>
				<input type="text" class="form-control datetimepicker" name="start_time" value="{{ old('start_time') }}" required>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label">تاریخ پایان</label>
				<input type="text" class="form-control datetimepicker" name="end_time" value="{{ old('end_time') }}" required>
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label class="control-label">کاربر</label>
				<select class="form-control select2" name="user_id"  required>
					<option value="">انتخاب کنید</option>
					{{ create_option('users','id','name',old('user_id'), array('company_id='=>company_id())) }}
				</select>
			</div>
		</div>

		<input type="hidden" name="project_id" value="{{ $_GET['project_id'] }}" required>

		<div class="col-md-12">
			<div class="form-group">
				<label class="control-label">وظیفه</label>
				<select class="form-control select2" name="task_id"  required>
					<option value="">انتخاب کنید</option>
					{{ create_option('tasks','id','title',old('task_id'), array('project_id=' => $_GET['project_id'],'AND company_id='=>company_id())) }}
				</select>
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label class="control-label">یادداشت</label>
				<textarea class="form-control" name="note">{{ old('note') }}</textarea>
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
