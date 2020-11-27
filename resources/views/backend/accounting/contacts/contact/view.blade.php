@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-md-3">
		<div class="card">
			<div class="d-none panel-title">نمایش مخاطب</div>

			<div class="card-body p-3">
				<div class="row">
					<div class="col-lg-12 align-self-center">
						<div class="contact-profile text-center">
							<div class="contact-profile-image">
								<img src="{{ asset('public/uploads/contacts/'.$contact->contact_image) }}" alt="" class="thumb-contact rounded-circle">
							</div>
							<div class="contact-profile-detail">
								<h4 class="mt-2">{{ $contact->contact_name }}</h4>                                             
								<p class="mb-0">{{ $contact->group->name }}</p>
							</div>
						</div>                                                
					</div><!--end col-->
				</div><!--end row-->                                                                              
			</div><!--end card-body-->
			
			<div class="card-body p-3">
			  <ul class="nav flex-column nav-tabs settings-tab">
				  <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#general-info" aria-expanded="true"><i class="far fa-user"></i> عمومی</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#projects" aria-expanded="false"><i class="fas fa-briefcase"></i> پروژه ها</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#invoices" aria-expanded="false"><i class="fas fa-file-invoice-dollar"></i> فاکتورها</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#quotations" aria-expanded="false"><i class="fas fa-file-invoice"></i> پیش فاکتورها</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#transactions" aria-expanded="false"><i class="fas fa-credit-card"></i> تراکنش ها</a></li>
				  <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#email" aria-expanded="false"><i class="far fa-envelope-open"></i> ایمیل</a></li>
				  <li class="nav-item"><a class="nav-link" href="{{ action('ContactController@edit', $contact['id']) }}"><i class="far fa-edit"></i> ویرایش</a></li>
			  </ul>
			</div><!--end card-body-->
		</div><!--end card-->
	</div><!--end col-->

	@php 

	$currency = currency();
	$base_currency = base_currency();
    $date_format = get_company_option('date_format','Y-m-d');
    
    @endphp
	  
	<div class="col-md-9">	  
	  <div class="tab-content" id="crm-tab">
	
	      <div id="general-info" class="tab-pane active">
			  <div class="card">
				  <div class="card-body">

                    <div class="row">

						<div class="col-lg-6 mb-3">
                       		<div class="card">
								<div class="seo-fact sbg2">
									<div class="p-4">
										<div class="seofct-icon">
										    <i class="ti-briefcase"></i> 
											<span class="float-right">تعداد پروژه </span>
										</div>
										<h2 class="text-right">
											{{ $total_project }}
										</h2>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-6 mb-3">
                       		<div class="card">
								<div class="seo-fact sbg1">
									<div class="p-4">
										<div class="seofct-icon">
										    <i class="ti-file"></i> 
											<span class="float-right">ارزش فاکتور</span>
										</div>
										<h2 class="text-right">
											{{ decimalPlace($invoice_value->grand_total, $currency) }}
										</h2>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-6 mb-3">
                       		<div class="card">
								<div class="seo-fact sbg2">
									<div class="p-4">
										<div class="seofct-icon">
										    <i class="ti-check-box"></i> 
											<span class="float-right">مجموع پرداختی ها</span>
										</div>
										<h2 class="text-right">
											{{ decimalPlace($invoice_value->paid, $currency) }}
										</h2>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-6 mb-3">
                       		<div class="card">
								<div class="seo-fact sbg3">
									<div class="p-4">
										<div class="seofct-icon">
										    <i class="ti-info-alt"></i> 
											<span class="float-right">مجموع  بدهی ها</span>
										</div>
										<h2 class="text-right">
											{{ decimalPlace(($invoice_due_amount->grand_total - $invoice_due_amount->paid), $currency) }}
										</h2>
									</div>
								</div>
							</div>
						</div>


					</div>

					<table class="table table-striped">
						<thead>
						    <th colspan="2"><h5>اطلاعات عمومی</h5></th>
						</thead>
						<tbody>
							<tr><td>نوع پروفایل</td><td><b>{{ $contact->profile_type }}</b></td></tr>
							<tr><td>نام شرکت</td><td><b>{{ $contact->company_name }}</b></td></tr>
							<tr><td>نام مشتری</td><td><b>{{ $contact->contact_name }}</b></td></tr>
							<tr><td>گروه</td><td><b>{{ $contact->group->name }}</b></td></tr>
							<tr><td>شماره ارزش افزوده</td><td><b>{{ $contact->vat_id }}</b></td></tr>
							<tr><td>شماره ثبت</td><td><b>{{ $contact->reg_no }}</b></td></tr>
							<tr><td>ایمیل</td><td><b>{{ $contact->contact_email }}</b></td></tr>
							<tr><td>تلفن</td><td><b>{{ $contact->contact_phone }}</b></td></tr>
							<tr><td>کشور</td><td><b>{{ $contact->country }}</b></td></tr>
							<tr><td>واحد پول</td><td><b>{{ $contact->currency }} ({!! clean(get_currency_symbol( $contact->currency )) !!})</b></td></tr>
							<tr><td>شهر</td><td><b>{{ $contact->city }}</b></td></tr>
							<tr><td>منطقه</td><td><b>{{ $contact->state }}</b></td></tr>
							<tr><td>کد پستی</td><td><b>{{ $contact->zip }}</b></td></tr>
							<tr><td>آدرس</td><td><b>{{ $contact->address }}</b></td></tr>
							<tr><td>اینستاگرام</td><td><b>{{ $contact->facebook }}</b></td></tr>
							<tr><td>تلگرام</td><td><b>{{ $contact->twitter }}</b></td></tr>
							<tr><td>واتس آپ</td><td><b>{{ $contact->linkedin }}</b></td></tr>
							<tr><td>ملاحضات</td><td><b>{{ $contact->remarks }}</b></td></tr>
						</tbody>
					</table>
				  </div>
			  </div>
		  </div>

		  <div id="projects" class="tab-pane fade"> 
		  	<div class="card">
				<div class="card-body">
				  	<table class="table table-bordered data-table">
					      <thead>
						    <tr>
								<th>نام</th>	
								<th>تاریخ شروع</th>
								<th>تاریخ پایان</th>
								<th>وضعیت</th>
								<th>پیشرفت</th>
								<th class="text-center">عملیات</th>
						    </tr>
						</thead>
						<tbody>
							@foreach($contact->projects as $project)
								<tr>
									<td><a href="{{ action('ProjectController@show', $project->id) }}">{{ $project->name }}</a></td>
									<td>{{ jdate($date_format,strtotime($project->start_date)) }}</td>
									<td>{{ jdate($date_format,strtotime($project->end_date)) }}</td>
									<td>{!! clean(project_status($project->status)) !!}</td>
									<td>
										<div class="progress">
										  <div class="progress-bar" role="progressbar" style="width: {{ $project->progress }}%;" aria-valuenow="{{ $project->progress }}" aria-valuemin="0" aria-valuemax="100">{{ $project->progress }}%</div>
										</div>
									</td>
									<td>
										<form action="{{ action('ProjectController@destroy', $project['id']) }}" class="text-center" method="post">
											<a href="{{ action('ProjectController@show', $project['id']) }}" class="btn btn-primary btn-xs"><i class="ti-eye"></i></a>
											<a href="{{ action('ProjectController@edit', $project['id']) }}" data-title="'. 'بروزرسانی پروژه' .'" class="btn btn-warning btn-xs ajax-modal"><i class="ti-pencil"></i></a>
											{{ csrf_field() }}
											<input name="_method" type="hidden" value="DELETE">
											<button class="btn btn-danger btn-xs btn-remove" type="submit"><i class="ti-eraser"></i></button>
										</form>
									</td>
								</tr>
							@endforeach
						</tbody>
					</table>
				</div>
			</div>
		  </div>

		  <div id="invoices" class="tab-pane fade"> 
			  <div class="card">
				    <div class="card-body">
					  <table class="table table-bordered data-table">
						<thead>
						  <tr>
							<th>شماره فاکتور</th>
							<th>تاریخ سر رسید</th>
							<th class="text-right">جمع کل</th>
							<th class="text-right">پرداخت شده</th>
							<th class="text-center">وضعیت</th>
							<th class="text-center">عملیات</th>
						  </tr>
						</thead>
						<tbody>
						  
						  @foreach($invoices as $invoice)
						  <tr id="row_{{ $invoice->id }}">
							<td class='invoice_number'>{{ $invoice->invoice_number }}</td>
							<td class='due_date'>{{ jdate($date_format,strtotime($invoice->due_date)) }}</td>
							<td class='grand_total text-right'>{{ decimalPlace($invoice->grand_total, $currency) }}</td>
							<td class='paid text-right'>{{ decimalPlace($invoice->paid, $currency) }}</td>
							<td class='status text-center'>{!! strip_tags(invoice_status($invoice->status),'<span>') !!}</td>
							<td class="text-center">

								<div class="dropdown">
									<button class="btn btn-primary btn-xs dropdown-toggle" type="button" data-toggle="dropdown">عملیات
									<i class="fa fa-angle-down"></i></button>
									<ul class="dropdown-menu">
										<a class="dropdown-item" href="{{ action('InvoiceController@edit', $invoice->id) }}"><i class="fas fa-edit"></i> ویرایش</a>
										<a class="dropdown-item" href="{{ action('InvoiceController@show', $invoice->id) }}" data-title="نمایش فاکتور" data-fullscreen="true"><i class="fas fa-eye"></i> نمایش</a>
										<a class="dropdown-item ajax-modal" href="{{ url('invoices/create_payment/'.$invoice->id) }}" data-title="پرداخت"><i class="fas fa-credit-card"></i> پرداخت</a>
										<a class="dropdown-item ajax-modal" href="{{ url('invoices/view_payment/'.$invoice->id) }}" data-title="مشاهده پرداختی" data-fullscreen="true"><i class="fas fa-credit-card"></i> مشاهده پرداختی</a>
										
										<form action="{{action('InvoiceController@destroy', $invoice['id'])}}" method="post">									
											{{ csrf_field() }}
											<input name="_method" type="hidden" value="DELETE">
											<button class="button-link btn-remove" type="submit"><i class="fas fa-trash-alt"></i> حـــذف</button>
										</form>
											
									</ul>
								</div>
							</td>
						  </tr>
						  @endforeach
						</tbody>
					  </table>
				    </div>
			    </div>
		  </div>
		  
		  <div id="quotations" class="tab-pane fade">
		      @php $currency = currency() @endphp
			  <div class="card">
				    <div class="card-body">
					  <table class="table table-bordered data-table">
						<thead>
						  <tr>
							<th>شماره پیش فاکتور</th>
							<th>تاریخ</th>
							<th class="text-right">جمع کل</th>
							<th class="text-center">عملیات</th>
						  </tr>
						</thead>
						<tbody>
						  
						  @foreach($quotations as $quotation)
						  <tr id="row_{{ $quotation->id }}">
							<td class='invoice_number'>{{ $quotation->quotation_number }}</td>
							<td class='due_date'>{{ jdate($date_format, strtotime($quotation->quotation_date)) }}</td>
							<td class='grand_total text-right'>{{ decimalPlace($quotation->grand_total, $currency) }}</td>
							<td class="text-center">

								<div class="dropdown">
									<button class="btn btn-primary btn-xs dropdown-toggle" type="button" data-toggle="dropdown">عملیات
									<i class="fa fa-angle-down"></i></button>
									<ul class="dropdown-menu">
										<a class="dropdown-item" href="{{ action('QuotationController@edit', $quotation->id) }}"><i class="fas fa-edit"></i> ویرایش</a>
										<a class="dropdown-item" href="{{ action('QuotationController@show', $quotation->id) }}" data-title="نمایش فاکتور" data-fullscreen="true"><i class="fas fa-eye"></i> نمایش</a>
										<a class="dropdown-item" href="{{ action('QuotationController@convert_invoice', $quotation->id) }}"><i class="fas fa-credit-card"></i> تبدیل به فاکتور</a>
										
										<form action="{{action('QuotationController@destroy', $quotation->id)}}" method="post">									
											{{ csrf_field() }}
											<input name="_method" type="hidden" value="DELETE">
											<button class="button-link btn-remove" type="submit"><i class="fas fa-trash-alt"></i> حــذف</button>
										</form>
										
									</ul>
								</div>
							</td>
						  </tr>
						  @endforeach
						</tbody>
					  </table>
				    </div>
			    </div>
		  </div>
		  
		  <div id="transactions" class="tab-pane fade">
			<div class="card">
				<div class="card-body">	
					<table class="table table-bordered data-table">
						<thead>			
							<th>تاریخ</th>
							<th>حساب</th>
							<th>دسته</th>
							<th class="text-right">مبلغ</th>
							<th>روش پرداخت</th>
						</thead>
						<tbody>
						   @foreach($transactions as $transaction)
							 <tr>
								<td>{{ jdate($date_format, strtotime($transaction->trans_date)) }}</td>
								<td>{{ isset($transaction->account) ? $transaction->account->account_title : '' }}</td>
								<td>{{ $transaction->income_type->name }}</td>
								<td class="text-right">{{ decimalPlace($transaction->amount, $currency) }}</td>
								<td>{{ isset($transaction->payment_method) ? $transaction->payment_method->name : '' }}</td>
							</tr>
						   @endforeach
						</tbody>
				   </table>
				</div>
			 </div>
		  </div>
		  
		  <div id="email" class="tab-pane fade">
		    <div class="card">
				<div class="card-body">	
					<form action="{{ url('contacts/send_email/'.$contact->id) }}" class="validate" method="post">
						{{ csrf_field() }}
						<div class="col-md-12">
						  <div class="form-group">
							<label class="control-label">موضوع ایمیل</label>						
							<input type="text" class="form-control" name="email_subject" value="{{ old('email_subject') }}" required>
						  </div>
						</div>
						<div class="col-md-12">
						  <div class="form-group">
							<label class="control-label">متن ایمیل *</label>						
							<textarea class="form-control summernote" name="email_message">{{ old('email_message') }}</textarea>
						  </div>
						</div>
						<div class="col-md-12">
						  <div class="form-group">
							<button type="submit" class="btn btn-primary">ارســـــال </button>
						  </div>
						</div>
					</form>
			     </div>
			  </div>
		  </div>
 
	  </div> <!--End TAB-->
	</div><!--End Col-->
</div><!--End Row-->
@endsection


@section('js-script')
<script>
(function($) {
    "use strict";
    
	$('.nav-tabs a').on('shown.bs.tab', function(event){
		var tab = $(event.target).attr("href");
		var url = "{{ url('contacts/'.$contact->id) }}";
	    history.pushState({}, null, url + "?tab=" + tab.substring(1));
	});

	@if(isset($_GET['tab']))
	   $('.nav-tabs a[href="#{{ $_GET['tab'] }}"]').tab('show')
	@endif

})(jQuery);
</script>
@endsection


