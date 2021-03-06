@extends('layouts.app')

@section('content')
<link rel="stylesheet" href="{{ asset('public/backend/assets/css/jquery-ui.min.css') }}">

<div class="row">
	<div class="col-lg-12">
		<a class="btn btn-primary mb-2 btn-xs ajax-modal" data-title="پیگیری جدید" href="{{ route('leads.create') }}"><i class="ti-plus"></i> جدید</a>
		<a class="btn btn-dark mb-2 btn-xs" href="{{ route('leads.import') }}"><i class="ti-upload"></i> وارد کردن لیست</a>
		<a class="btn btn-secondary mb-2 btn-xs" href="{{ url('leads') }}"><i class="ti-layout-column3"></i> نمایش به صورت لیست</a>
		<div class="card mt-2">
		    
			<span class="panel-title d-none">پیگیری ها</span>
			
			@php $date_format = get_company_option('date_format','Y-m-d'); @endphp	
			
			<div class="card-body overflow-auto">
			    <div id="kanban-view">
					@foreach($lead_status as $status)
					
					<ul class="kanban-col" data-status-id="{{ $status->id }}">
					    <li>
							<p class="kanban-title" style="background:{{ $status->color }}">{{ $status->title }}</p>
							<div class="cards">
								<ul class="status lead-status" data-lead-status-id="{{ $status->id }}">
								
								    @foreach($status->leads->take(20) as $lead)
									<li data-lead-id="{{ $lead->id }}">
										<div class="card">
											<div class="card-body">
												<img src="{{ asset('public/uploads/profile/'.$lead->assigned_user->profile_picture) }}" class="kanban-avatar" data-toggle="tooltip" data-placement="top" title="{{ $lead->assigned_user->name }}">
												<a href="{{ action('LeadController@show', $lead->id) }}" data-title="نمایش جزئیات لــید"  class="lead-title ajax-modal">{{ $lead->id.'#- '.$lead->name }}</a>
												<div class="mt-2">
													<small>منبع: {{ $lead->lead_source->title }}</small><br>
													<small>ایجاد شده در تاریخ: {{ jdate($date_format, strtotime($lead->created_at)) }}</small>
												</div>
											</div>	
										</div>
									</li>			
									@endforeach	

								</ul>
								@if( isset($lead) )								
								<button data-status-id="{{ $status->id }}" data-lead-id="{{ $lead->id }}" class="btn btn-info btn-block load-more">بیــــشتر</button>
							    @endif
							</div>
						</li>
					</ul>
					
					@endforeach
				
				</div>
			</div>
		</div>
	</div>
</div>

@endsection

@section('js-script')
<script src="{{ asset('public/backend/assets/js/jquery-ui.min.js') }}"></script>
<script src="{{ asset('public/backend/assets/js/leads.js') }}"></script>
@endsection