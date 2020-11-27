@php $date_format = get_company_option('date_format','Y-m-d'); @endphp	
@php $time_format = get_company_option('time_format',24) == '24' ? 'H:i' : 'h:i A'; @endphp	

<table class="table table-bordered">
	<tr><td>کاربر</td><td>{{ $timesheet->user->name }}</td></tr>
	<tr><td>وظیفه</td><td>{{ $timesheet->task->title }}</td></tr>
	<tr><td>تاریخ شروع</td><td>{{ jdate("$date_format $time_format",strtotime($timesheet->start_time)) }}</td></tr>
	<tr><td>تاریخ پایان</td><td>{{ jdate("$date_format $time_format",strtotime($timesheet->end_time)) }}</td></tr>
	<tr><td>مجموع ساعات</td><td>{{ $timesheet->total_hour }}</td></tr>
	<tr><td>یادداشت</td><td>{{ $timesheet->note }}</td></tr>
</table>

