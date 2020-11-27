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
		<p>پیام مخاطب جدیدی از طرف شما دریافت شده است : {{ $content->name }}</p>
		<p>جزئیات پیام در زیر آمده است:</p>

		<p>نام:  {{ $content->name }}<br>
		ایمیل: {{ $content->email }}<br>
		پیغام: {{ $content->message }}</p>

		<br>
		<p>با تشکر</p>
	</div>
</body>
</html>
