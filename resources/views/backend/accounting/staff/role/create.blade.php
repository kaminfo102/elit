@extends('layouts.app')

@section('content')
<div class="row">
	<div class="col-lg-12">
		<div class="card">
			<div class="card-header bg-primary text-white">
				<span class="panel-title">سمت جدید</span>
			</div>
			<div class="card-body">
			    <form method="post" class="validate" autocomplete="off" action="{{ route('roles.store') }}" enctype="multipart/form-data">
					{{ csrf_field() }}
					<div class="row">
						<div class="col-md-6">
						    <div class="col-md-12">
						        <div class="form-group">
							        <label class="control-label">عنوان</label>
							        <input type="text" class="form-control" name="name" value="{{ old('name') }}" required>
						        </div>
						    </div>

							<div class="col-md-12">
							    <div class="form-group">
								    <label class="control-label">توضیحات</label>
								    <textarea class="form-control" name="description">{{ old('description') }}</textarea>
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
			    </form>
			</div>
		</div>
    </div>
</div>
@endsection


