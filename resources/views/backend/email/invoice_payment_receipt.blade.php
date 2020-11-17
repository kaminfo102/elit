<!DOCTYPE html>
<html>
	<head>
		<title>{{ $content->subject }}</title>
	</head>
	
	<style type="text/css">
	    body{background-color:#e2e2e2;}#container{max-width:600px;padding:40px 60px;margin:auto;background:#f3f3f3;border-top:4px solid #34495e}#company-name{display:inline-block;font-size:32px}.heading{font-size:42px;font-weight:300}#receipt{font-size:18px}#receipt td{padding:4px 10px 4px 0}#footer{max-width:600px;padding:30px 50px;margin:auto;background:#d4d4d4;color:#545454}#footer p{line-height:12px}.btn-view{background:#ff9800;text-decoration:none;padding:8px 15px;color:#fff;border-radius:5px;margin-top:10px;display:inline-block;font-size:16px}.f-12{font-size:12px}
	</style>
	<body>
	   
	   <div id="container">
			<h2 id="company-name">{{ get_company_field($content->invoice->company_id,'company_name') }}</h2>
			
			<h2 class="heading">با تشکر از پرداخت شما</h2>
			<p>رسید پرداختی به این ایمیل پیوست می باشد</p>
			<table id="receipt">
			    <tr>
				  <td><b>شماره فاکتور# : </b></td><td>{{ $content->invoice->invoice_number }}</td>
				</tr>
				<tr>				
				  <td><b>مبلغ : </b></td><td>{{ $content->currency.$content->transaction->amount }}</td>
				</tr>
				<tr> 
				  <td><b>روش پرداخت : </b></td><td>{{ $content->method }}</td>
			    </tr>
			</table>
			
			<a href="{{ url('client/view_invoice/'.md5($content->invoice->id)) }}" class="btn-view">نمایش فاکتور</a>
		</div>
		
		<div id="footer">
			<h2>{{ get_company_field($content->invoice->company_id,'company_name') }}</h2>
			<p>این ایمیل از طرف ارسال شده است {{ get_company_field($content->invoice->company_id,'company_name') }}</p>
			<p>{{ get_company_field($content->invoice->company_id,'address') }}</p>
		</div>
		
		<div id="container">
			<p class="f-12">اگر با کلیک کردن روی دکمه مشاهده فاکتور مشکل دارید ، URL زیر را در مرورگر وب خود کپی و پیست کنید:<br>
			{{ url('client/view_invoice/'.md5($content->invoice->id)) }}</p>
        </div>
	</body>
</html>