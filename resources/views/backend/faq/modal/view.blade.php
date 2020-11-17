 <table class="table table-bordered">
	<tr><td>سوالات</td><td>{{ get_array_data($faq->question, get_option('language')) }}</td></tr>
	<tr><td>جواب ها</td><td>{!! clean(get_array_data($faq->answer,get_option('language'))) !!}</td></tr>
</table>

