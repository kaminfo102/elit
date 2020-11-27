@php $date_format = get_company_option('date_format','Y-m-d'); @endphp
<table class="table table-bordered">
	<tr><td>عنوان</td><td>{{ $task->title }}</td></tr>
	<tr><td>پروژه</td><td>{{ $task->project->name }}</td></tr>
	<tr><td>نقطه عطف</td><td>{{ $task->milestone->title }}</td></tr>
	<tr><td>اهمیت</td><td>{{ ucwords($task->priority) }}</td></tr>
	<tr>
		<td>وضعیت</td>
		<td><span class="badge badge-primary" style="background:{{ $task->status->color }}">{{ $task->status->title }}</span></td>
	</tr>
	<tr>
		<td>اختصاص کاربر</td>
		<td>{{ $task->assigned_user->name }}</td>
	</tr>
	<tr><td>تاریخ شروع</td><td>{{ jdate("$date_format",strtotime($task->start_date)) }}</td></tr>
	<tr><td>تاریخ پایان</td><td>{{ jdate("$date_format",strtotime($task->end_date)) }}</td></tr>
	<tr>
		<td colspan="2">
			<h4>توضیحات</h4><hr>
			<p>{{ $task->description }}</p>
		</td>
	</tr>
</table>

