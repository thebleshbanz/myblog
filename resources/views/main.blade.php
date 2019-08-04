<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- start partials._head include -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Laravel Blog @yield('title')</title> <!-- CHANGE THIS TITLE FOR EACH PAGE -->

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    {{ Html::style('css/styles.css') }}

    <!-- @yield('stylesheets') -->
      <!-- start stylesheets yield -->
        {!! Html::style('css/parsley.css') !!}
        {!! Html::style('css/select2.min.css') !!}
        <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>

        <script>
          tinymce.init({
            selector: 'textarea',
            plugins: 'link code',
            menubar: false
          });
        </script>
      <!-- end stylesheets yield -->
    <!-- end partials._head include -->
  </head>
  
  <body>

    @include('partials._nav')

    <div class="container">
      <!-- @include('partials._messages') -->
      <!-- start alert message -->
        @if (Session::has('success'))
    
          <div class="alert alert-success" role="alert">
            <strong>Success:</strong> {{ Session::get('success') }}
          </div>

        @endif

        @if (count($errors) > 0)

          <div class="alert alert-danger" role="alert">
            <strong>Errors:</strong>
            <ul>
            @foreach ($errors->all() as $error)
              <li>{{ $error }}</li>
            @endforeach  
            </ul>
          </div>

        @endif
      <!-- end alert message -->

      @yield('content')

      @include('partials._footer')

    </div> <!-- end of .container --> 

        @include('partials._javascript')

        @yield('scripts')

  </body>
</html>
