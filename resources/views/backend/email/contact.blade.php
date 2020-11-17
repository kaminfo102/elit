<!DOCTYPE html>
<html dir="rtl" lang="fa">
<head>
    <title>{{ $content->subject }}</title>
	<style type="text/css">
	   .g-container{
		   padding: 15px 30px;
	   }
	</style>
</head>
<body>
    <div class="g-container">
		<p>{{ _lang('پیام مخاطب جدیدی از طرف شما دریافت شده است') }} : {{ $content->name }}</p>
		<p>{{ _lang('جزئیات پیام در زیر آمده است') }}:</p>

		<p>{{ _lang('نام') }}: {{ $content->name }}<br>
		{{ _lang('ایمیل') }}: {{ $content->email }}<br>
		{{ _lang('پیغام') }}: {{ $content->message }}</p>

		<br>
		<p>{{ _lang('با تشکر') }}</p>
	</div>
</body>
</html>
