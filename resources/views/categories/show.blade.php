@extends('main')

@section('title', '| Create Categories')

@section('content')

	<div class="row">
		<div class="col-md-8">
			<h2>View Category</h2>
				<div class="col-md-8">
					<div class="well">
							<h2>View Category</h2>
							{{ Form::label('name', 'Name:') }}
							<!-- {{ Form::text('name', $category->name, ['class' => 'form-control']) }} -->
							<input disabled type="text" class="form-control" value="{{ $category->name }}">
							<a class="btn btn-sm btn-danger" href="{{ route('categories.index') }}">Back</a>
					</div>
				</div>
		</div>
	</div>

@endsection