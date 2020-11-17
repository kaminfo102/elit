<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="{{ get_favicon() }}">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ get_option('مدیریت کسب وکار', 'فناورآن هوشمند') }}</title>
	
   	<!-- Styles -->
    <link href="{{ asset('public/login_asset/css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <main class="py-4">
            @yield('content')
        </main>
    </div>
	
	@yield('js-script')
</body>
</html>
