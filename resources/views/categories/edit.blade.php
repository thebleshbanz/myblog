@extends('main')

@section('title', '| Edit Categories')

@section('content')

	<div class="row">
		<div class="col-md-8">
			<h2>Edit Category</h2>
				<div class="col-md-8">
					<div class="well">
						<!-- {!! Form::open(['route' => 'categories.store', 'method' => 'POST']) !!} -->
						{!! Form::model($category, ['route' => ['categories.update', $category->id], 'method' => 'PUT']) !!}
							<h2>Edit Category</h2>
							{{ Form::label('name', 'Name:') }}
							{{ Form::text('name', $category->name, ['class' => 'form-control']) }}

							{{ Form::submit('Edit Category', ['class' => 'btn btn-primary btn-block btn-h1-spacing']) }}
							<a class="btn btn-sm btn-danger" href="{{ route('categories.index') }}">Back</a>
						
						{!! Form::close() !!}
					</div>
				</div>
		</div>
	</div>

@endsection