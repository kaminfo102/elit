@extends('layouts.app')

@section('content')

  <span class="panel-title d-none">لیست بسته ها</span>
   
  @php $currency = currency(); @endphp
  <div class="row">
	  <div class="col-md-12 text-center"> 
		 <button class="btn btn-primary btn-xs" id="btn-monthly">ماهانه</button>
	     <button class="btn btn-outline-info btn-xs" id="btn-yearly">سالانه</button>
	  </div>
  </div>
  
  <div class="row mt-2">
  @foreach($packages as $package)
	  <div class="col-lg-4 monthly-package">
			<div class="card">
				<div class="pb-4">
					<div class="pricing-list text-center">
					    <div class="prc-head">
							<h4>{{ $package->package_name }}</h4>
							<h3 class="amount d-inline-block mt-2">{{ decimalPlace($package->cost_per_month, $currency) }}</h3>
							<small class="font-12 text-muted">/ماهانه</small>
                        </div>
					   
						<ul class="text-left p-3">
							<li {{ unserialize($package->staff_limit)['monthly'] != 'خیر' ? 'class=yes-feature' : 'class=no-feature' }}>{{ unserialize($package->staff_limit)['monthly'].' '.' کارمند' }}</li>
							<li {{ unserialize($package->contacts_limit)['monthly'] != 'خیر' ? 'class=yes-feature' : 'class=no-feature' }}>{{ unserialize($package->contacts_limit)['monthly'].' '.'مخاطبان' }}</li>
							<li {{ unserialize($package->invoice_limit)['monthly'] != 'خیر' ? 'class=yes-feature' : 'class=no-feature' }}>{{ unserialize($package->invoice_limit)['monthly'].' '.'فاکتور' }}</li>
							<li {{ unserialize($package->quotation_limit)['monthly'] != 'خیر' ? 'class=yes-feature' : 'class=no-feature' }}>{{ unserialize($package->quotation_limit)['monthly'].' '.'پیش فاکتور' }}</li>
							<li {{ unserialize($package->project_management_module)['monthly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}> مدیریت پروژه </li>
							<li {{ unserialize($package->recurring_transaction)['monthly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}> مدیریت تراکنش ها</li>
							<li {{ unserialize($package->inventory_module)['monthly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}> ماژول انبارداری </li>
							<li {{ unserialize($package->live_chat)['monthly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}>گفتگوی زنده </li>
							<li {{ unserialize($package->file_manager)['monthly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}> مدیریت فایل  </li>
							<li {{ unserialize($package->online_payment)['monthly'] == 'بله'? 'class=yes-feature' : 'class=no-feature' }}>پرداخت آنلاین </li>
						</ul>
						
						<form action="{{ action('PackageController@destroy', $package['id']) }}" method="post">
							<a href="{{ action('PackageController@edit', $package['id']) }}" class="btn btn-outline-dark btn-round">ویرایش</a>
							<a href="{{ action('PackageController@show', $package['id']) }}" data-title="نمایش بسته" class="btn btn-outline-primary btn-round ajax-modal">نمایش</a>
							{{ csrf_field() }}
							<input name="_method" type="hidden" value="DELETE">
							<button class="btn btn-outline-danger btn-round btn-remove" type="submit">حــذف</button>
						</form>							
					</div><!--end pricingTable-->
				</div><!--end card-body-->
			</div> <!--end card-->                                   
		</div>
		
		<!-- Yearly package -->
		<div class="col-lg-4 yearly-package">
			<div class="card">
				<div class="pb-4">
					<div class="pricing-list text-center">
					    <div class="prc-head">
							<h4>{{ $package->package_name }}</h4>
							<h3 class="amount d-inline-block mt-2">{{ decimalPlace($package->cost_per_year, $currency) }}</h3>
							<small class="font-12 text-muted">/سالانه</small>
						</div>
					   
						<ul class="text-left p-3">
							<li {{ unserialize($package->staff_limit)['yearly'] != 'خیر' ? 'class=yes-feature' : 'class=no-feature' }}>{{ unserialize($package->staff_limit)['yearly'].' '.'کارمند' }}</li>
							<li {{ unserialize($package->contacts_limit)['yearly'] != 'خیر' ? 'class=yes-feature' : 'class=no-feature' }}>{{ unserialize($package->contacts_limit)['yearly'].' '.'مخاطب' }}</li>
							<li {{ unserialize($package->invoice_limit)['yearly'] != 'خیر' ? 'class=yes-feature' : 'class=no-feature' }}>{{ unserialize($package->invoice_limit)['yearly'].' '.'فاکتور' }}</li>
							<li {{ unserialize($package->quotation_limit)['yearly'] != 'خیر' ? 'class=yes-feature' : 'class=no-feature' }}>{{ unserialize($package->quotation_limit)['yearly'].' '.'پیش فاکتور' }}</li>
							<li {{ unserialize($package->project_management_module)['yearly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}>{{ 'مدیریت پروژه' }}</li>
							<li {{ unserialize($package->recurring_transaction)['yearly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}>{{ 'مدیریت تراکنش ها' }}</li>
							<li {{ unserialize($package->inventory_module)['yearly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}>{{ 'ماژول انبارداری' }}</li>
							<li {{ unserialize($package->live_chat)['yearly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}>{{ 'گفتگوی زنده' }}</li>
							<li {{ unserialize($package->file_manager)['yearly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}>{{ 'مدیریت فایل' }}</li>
							<li {{ unserialize($package->online_payment)['yearly'] == 'بله' ? 'class=yes-feature' : 'class=no-feature' }}>{{ 'پرداخت آنلاین' }}</li>
						</ul>
						
						<form action="{{ action('PackageController@destroy', $package['id']) }}" method="post">
							<a href="{{ action('PackageController@edit', $package['id']) }}" class="btn btn-outline-dark btn-round">ویرایش</a>
							<a href="{{ action('PackageController@show', $package['id']) }}" data-title="نمایش بسته" class="btn btn-outline-primary btn-round ajax-modal">نمایش</a>
							{{ csrf_field() }}
							<input name="_method" type="hidden" value="DELETE">
							<button class="btn btn-outline-danger btn-round btn-remove" type="submit">حــذف</button>
						</form>							
					</div><!--end pricingTable-->
				</div><!--end card-body-->
			</div> <!--end card-->                                   
		</div>			
	@endforeach	
</div>

@endsection

@section('js-script')

<script>
$(document).on('click','#btn-monthly',function(){
	$(".monthly-package").fadeIn(800);
	$(".yearly-package").css('display','none');
	$(this).removeClass('btn-outline-info').addClass('btn-primary');
	$('#btn-yearly').removeClass('btn-primary').addClass('btn-outline-info');
});

$(document).on('click','#btn-yearly',function(){
	$(".yearly-package").fadeIn(800);
	$(".monthly-package").css('display','none');
	$(this).removeClass('btn-outline-info').addClass('btn-primary');
	$('#btn-monthly').removeClass('btn-primary').addClass('btn-outline-info');
});


</script>
@endsection


