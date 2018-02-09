<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="cache-control" content="private, max-age=0, no-cache">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="expires" content="0">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

	<link rel="stylesheet" href="{{ asset('/temp/assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css') }}">
	<link rel="stylesheet" href="{{ asset('/temp/assets/css/font-icons/entypo/css/entypo.css') }}">
	<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
	<link rel="stylesheet" href="{{ asset('/temp/assets/css/bootstrap.css') }}">
	<link rel="stylesheet" href="{{ asset('/temp/assets/css/neon-core.css') }}">
	<link rel="stylesheet" href="{{ asset('/temp/assets/css/neon-theme.css') }}">
	<link rel="stylesheet" href="{{ asset('/temp/assets/css/neon-forms.css') }}">
	<link rel="stylesheet" href="{{ asset('/temp/assets/css/custom.css') }}">
  
</head>
<body class="page-body login-page login-form-fall" data-url="http://neon.dev">
    
        @yield('content')
   

    <!-- Scripts -->
	<script src="{{ asset('assets/vendor/jquery/jquery-3.2.1.min.js') }}"></script>
		<!-- Bottom scripts (common) -->
	<script src="{{ asset('/temp/assets/js/gsap/TweenMax.min.js') }}"></script>
	<script src="{{ asset('/temp/assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js') }}"></script>
	<script src="{{ asset('/temp/assets/js/bootstrap.js') }}"></script>
	<script src="{{ asset('/temp/assets/js/joinable.js') }}"></script>
	<script src="{{ asset('/temp/assets/js/resizeable.js') }}"></script>
	<script src="{{ asset('/temp/assets/js/neon-api.js') }}"></script>
	<script src="{{ asset('/temp/assets/js/jquery.validate.min.js') }}"></script>
	<script src="{{ asset('/temp/assets/js/neon-login.js') }}"></script>


	<!-- JavaScripts initializations and stuff -->
	<script src="{{ asset('/temp/assets/js/neon-custom.js') }}"></script>


</html>
