@extends('layouts.app')

@section('content')

<div class="row">
	<div class="col-12">
	    <a class="btn btn-primary btn-xs ajax-modal" data-title="حساب جدید" href="{{ route('accounts.create') }}"><i class="ti-plus"></i> حساب جدید</a>
			
		<div class="card mt-2">
			<span class="d-none panel-title">لیست حساب ها</span>

			<div class="card-body">
				<table class="table table-bordered data-table">
					<thead>
					  <tr>
						<th>عنوان حساب</th>
						<th>تاریخ افتتاح</th>
						<th>شماره حساب</th>
						<th>واحد پول</th>
						<th class="text-right">موجودی اولیه</th>
						<th class="action-col">عملیات</th>
					  </tr>
					</thead>
					<tbody>
					  @php $currency = currency(); @endphp
					  @php $date_format = get_company_option('date_format','Y-m-d'); @endphp	

					  @foreach($accounts as $account)
					  <tr id="row_{{ $account->id }}">
						<td class='account_title'>{{ $account->account_title }}</td>
						<td class='opening_date'>{{ jdate($date_format, strtotime($account->opening_date)) }}</td>
						<td class='account_number'>{{ $account->account_number }}</td>
						<td class='account_currency'>{{ $account->account_currency }}</td>
						<td class='opening_balance text-right'>{{ decimalPlace($account->balance, currency($account->account_currency)) }}</td>
						<td class="text-center">
						  <form action="{{ action('AccountController@destroy', $account->id) }}" method="post">
							<a href="{{ action('AccountController@edit', $account->id) }}" data-title="edite" class="btn btn-warning btn-xs ajax-modal"><i class="ti-pencil"></i></a>
							<a href="{{ action('AccountController@show', $account->id) }}" data-title="View" class="btn btn-primary btn-xs ajax-modal"><i class="ti-eye"></i></a>
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
</div>

@endsection


