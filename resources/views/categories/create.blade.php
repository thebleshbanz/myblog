@extends('main')

@section('title', '| Create Categories')

@section('content')

	<div class="row">
		<div class="col-md-8">
			<h2>Create New Category</h2>
				<div class="col-md-8">
					<div class="well">
						{!! Form::open(['route' => 'categories.store', 'method' => 'POST']) !!}
							<h2>New Category</h2>
							{{ Form::label('name', 'Name:') }}
							{{ Form::text('name', null, ['class' => 'form-control']) }}

							{{ Form::submit('Create New Category', ['class' => 'btn btn-primary btn-block btn-h1-spacing']) }}
						
						{!! Form::close() !!}
					</div>
				</div>
		</div>
	</div>

@endsection