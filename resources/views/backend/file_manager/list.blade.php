@extends('layouts.app')

@section('content')

@php $date_format = get_company_option('date_format','Y-m-d'); @endphp	
@php $time_format = get_company_option('time_format',24) == '24' ? 'H:i' : 'h:i A'; @endphp	

<div class="row">
	<div class="col-12">
	    <a class="btn btn-primary btn-xs ajax-modal" data-title="فایل جدید" href="{{ url('file_manager/create/'.request()->route('parent_id')) }}"><i class="fas fa-cloud-upload-alt"></i> فایل جدید</a>&nbsp;
		<a class="btn btn-primary btn-xs ajax-modal" data-title="پوشه جدید" href="{{ url('file_manager/create_folder/'.request()->route('parent_id')) }}"><i class="fas fa-folder-plus"></i> پوشه جدید</a>
		@if($back == true) 
			<a class="btn btn-warning btn-xs" href="javascript:history.back();"><i class="far fa-arrow-alt-circle-left"></i> برگشت</a>
			<a class="btn btn-success btn-xs" href="{{ url('file_manager') }}"><i class="fas fa-sitemap"></i> ریشه</a>
		@endif	
			
		<div class="card mt-2 clearfix">
			<span class="d-none panel-title">مدیریت فایل</span>

			<div class="card-body">
			 <table class="table table-striped file-manager-table data-table">
				<thead>
				  <tr>
					<th>فایل</th>
					<th>ایجاد شده</th>
					<th>ویرایش شده</th>
					<th class="text-center">عملیات</th>
				  </tr>
				</thead>
				<tbody>
				  
				  @foreach($filemanagers as $filemanager)
				  <tr id="row_{{ $filemanager->id }}">
					@if($filemanager->is_dir == 'yes')
						<td class='name'><i class="far fa-folder"></i> <a href="{{ url('file_manager/directory/'.encrypt($filemanager->id)) }}">{{ $filemanager->name }}</a></td>
					@else
						<td class='name'><i class="far {{ file_icon($filemanager->mime_type) }}"></i> {{ $filemanager->name }}</td>
					@endif
					<td class='created_at'>{{ date("$date_format $time_format", strtotime($filemanager->created_at)) }}</td>
					<td class='updated_at'>{{ date("$date_format $time_format", strtotime($filemanager->updated_at)) }}</td>
					
					<td class="text-center">
					    <div class="dropdown">
						    <button class="btn btn-primary btn-xs dropdown-toggle" type="button" data-toggle="dropdown">عملیات
							<i class="fa fa-angle-down"></i></button>
							<div class="dropdown-menu">
								@if($filemanager->is_dir == 'no')
									<a href="{{ action('FileManagerController@edit', $filemanager['id']) }}" data-title="بروزرسانی فایل" class="ajax-modal dropdown-item"><i class="far fa-edit"></i> ویرایش</a></li>
									<a class="dropdown-item" href="{{ asset('public/uploads/file_manager/'.$filemanager->file) }}" target="_blank"><i class="fas fa-cloud-download-alt"></i> دانــلود</a></li>
								@else
									<a href="{{ action('FileManagerController@edit_folder', $filemanager['id']) }}" data-title="بروزرسانی پوشه" class="ajax-modal dropdown-item"><i class="far fa-edit"></i> ویرایش</a></li>
									<a class="dropdown-item" href="{{ url('file_manager/directory/'.encrypt($filemanager->id)) }}"><i class="fas fa-binoculars"></i> نمایش</a></li>
								@endif
								
								<form action="{{ action('FileManagerController@destroy', $filemanager['id']) }}" method="post">									
									{{ csrf_field() }}
									<input name="_method" type="hidden" value="DELETE">
									<button class="button-link btn-remove" type="submit"><i class="fas fa-trash-alt"></i> حــذف</button>
								</form>
								
							</div>
						</div>
					
					</td>
				  </tr>
				  @endforeach
				</tbody>
			  </table>
			</div>
		</div>
	</div>
</div>

@endsection


