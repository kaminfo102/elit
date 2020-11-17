@extends('layouts.app')

@section('content')

@php $language_list = get_language_list(); @endphp

<div class="row">
	<div class="col-lg-12">
	<div class="card">
		<div class="card-body">
		  <h4 class="panel-title d-none">ویژگی جدید</h4>
			<div class="row">
				<div class="col-md-12">
				  <ul class="nav nav-tabs">
						@foreach($language_list as $language)
							<li class="nav-item">
							   <a class="nav-link {{ $loop->first ? 'active' : '' }}" data-toggle="tab" href="#feature-{{ $loop->index + 1 }}">{{ $language }}</a>
							</li>
						@endforeach
					</ul>
					<br>
				</div>
			</div>

		  <form method="post" class="validate" autocomplete="off" action="{{ route('features.store') }}" enctype="multipart/form-data">
		  	    <div class="tab-content">

					@foreach($language_list as $language)
					<div class="tab-pane {{ $loop->first ? 'active' : '' }}" id="feature-{{ $loop->index + 1 }}">
						{{ csrf_field() }}
                        <div class="row">
							<div class="col-md-8">
							  <div class="form-group">
								<label class="control-label">عنوان</label>
								<input type="text" class="form-control" name="title[{{ $language }}]" value="{{ old('title.'.$language) }}" required>
							  </div>
							</div>

							<div class="col-md-4">
							  <div class="form-group">
								<a href="https://lineicons.com/icons" class="btn-link float-right" _target="_blank">آیکن مرجع</a>
								<label class="control-label">آیکن</label>
								<input type="text" class="form-control" name="icon[{{ $language }}]" value="{{ old('icon.'.$language) }}" required>
							  </div>
							</div>

							<div class="col-md-12">
							  <div class="form-group">
								<label class="control-label">محتوا</label>
								<textarea class="form-control" name="content[{{ $language }}]" required>{{ old('content.'.$language) }}</textarea>
							  </div>
							</div>

						
							<div class="col-md-12">
							  <div class="form-group">
								<button type="reset" class="btn btn-danger">از نو</button>
								<button type="submit" class="btn btn-primary">ذخیره</button>
							  </div>
							</div>
						</div>						
					</div>
					@endforeach
				</div>
		    </form>
		</div>
    </div>
 </div>
</div>
@endsection


