@extends('layouts.app')


@section('content')

<div class="row">
	<div class="col-md-12">
		<a href="{{ route('faqs.create') }}" class="btn btn-primary btn-xs"><i class="ti-plus"></i> جــدید</a>
		<div class="card mt-2">
			<div class="card-body">
			 <div class="panel-title d-none">لیست پرسش و پاسخ</div>
				
			 <table class="table table-bordered data-table">
				<thead>
				  <tr>
					<th>سوالات</th>
					<th class="text-center">عملیات</th>
				  </tr>
				</thead>
				<tbody>
				  @php $language = get_option('language'); @endphp
				  @foreach($faqs as $faq)
				  <tr id="row_{{ $faq->id }}">
					<td class='question'>{{ get_array_data($faq->question, $language) }}</td>
					<td class="text-center">
						<div class="dropdown">
						  <button class="btn btn-primary dropdown-toggle btn-xs" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						  عملیات <i class="fa fa-angle-down"></i>
						  </button>
						  <form action="{{ action('FaqController@destroy', $faq['id']) }}" method="post">
							{{ csrf_field() }}
							<input name="_method" type="hidden" value="DELETE">
							
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a href="{{ action('FaqController@edit', $faq['id']) }}" class="dropdown-item"><i class="ti-pencil-alt"></i> ویرایش</a>
								<a href="{{ action('FaqController@show', $faq['id']) }}" class="dropdown-item ajax-modal"><i class="ti-eye"></i> نمایش</a>
								<button class="btn-remove dropdown-item" type="submit"><i class="ti-trash"></i> حذف</button>
							</div>
						  </form>
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


