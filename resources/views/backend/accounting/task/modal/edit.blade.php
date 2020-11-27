<form method="post" class="ajax-submit" autocomplete="off" action="{{ action('TaskController@update', $id) }}" enctype="multipart/form-data">
	{{ csrf_field()}}
	<input name="_method" type="hidden" value="PATCH">				
	
	<div class="row p-2">
		<div class="col-md-12">
			<div class="form-group">
			   <label class="control-label">عنوان</label>						
			   <input type="text" class="form-control" name="title" value="{{ $task->title }}" required>
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
			   <label class="control-label">توضیحات</label>						
			   <textarea class="form-control" name="description">{{ $task->description }}</textarea>
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label class="control-label">پروژه</label>						
				<select class="form-control select2" name="project_id" id="project_id" required>
					<option value="">انتخاب کنید</option>
					{{ create_option('projects','id', 'name', $task->project_id, array('company_id=' => company_id())) }}
				</select>
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<label class="control-label">نقطه عطف</label>						
				<select class="form-control select2" name="milestone_id" id="milestone_id">
					<option value="">انتخاب کنید</option>
					{{ create_option('project_milestones','id','title',$task->milestone_id, array('project_id=' => $task->project_id)) }}
				</select>
			</div>
		</div>

		<div class="col-md-12">
			<div class="form-group">
				<a href="{{ route('task_statuses.create') }}" data-reload="false" data-title="وضعیت جدید" class="ajax-modal-2 select2-add"><i class="ti-plus"></i> جــدیـد</a>
				<label class="control-label">وضعیت</label>						
				<select class="form-control select2-ajax" data-value="id" data-display="title" data-table="task_statuses" data-where="1" name="task_status_id" required>
					<option value="">انتخاب کنید</option>
					{{ create_option('task_statuses', 'id', 'title', $task->task_status_id, array('company_id=' => company_id())) }}
				</select>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label">اهمیت</label>						
				<select class="form-control auto-select" data-selected="{{ $task->priority }}" name="priority"  required>
					<option value="">انتخاب کنید</option>
					<option value="low">کم</option>
					<option value="medium">متوسط</option>
					<option value="high">زیاد</option>
				</select>
			</div>
		</div>


		<div class="col-md-6">
			<div class="form-group">
				<label class="control-label">اختصاص به کاربر</label>						
				<select class="form-control select2" name="assigned_user_id">
					<option value="">انتخاب کنید</option>
					{{ create_option('users','id','name',$task->assigned_user_id,array('company_id=' => company_id())) }}
				</select>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
			   <label class="control-label">تاریخ شروع</label>						
			   <input type="text" class="form-control datepicker" name="start_date" value="{{ $task->start_date }}" required>
			</div>
		</div>

		<div class="col-md-6">
			<div class="form-group">
			   <label class="control-label">تاریخ پایان</label>						
			   <input type="text" class="form-control datepicker" name="end_date" value="{{ $task->end_date }}">
			</div>
		</div>

						
	    <input type="hidden" name="related_to" value="projects">
		
		<div class="form-group">
		    <div class="col-md-12">
			    <button type="submit" class="btn btn-primary">بــروزرسانی</button>
		    </div>
		</div>
	</div>
</form>

<script>
$(document).on('change','#project_id',function(){
	if($(this).val() == ''){
		return;
	}

    var project_id = $(this).val();
    var link = "{{ url('project_milestones/get_milestones') }}/" + project_id;
    $.ajax({
    	url: link,
    	beforeSend: function(){
    		$("#preloader").fadeIn();
    	},success: function(data){
    		$("#preloader").fadeOut();
    		var json = JSON.parse(data);

    		var rows = '<option value="">{{ _lang('Select Milestone') }}</option>';
    		$("#milestone_id").html("");
    		$.each(json, function(index, element) {
				rows += `<option value="${element.id}">${element.title}</option>`;
    		});

			$("#milestone_id").html(rows);
    	}
    });
});
</script>	

