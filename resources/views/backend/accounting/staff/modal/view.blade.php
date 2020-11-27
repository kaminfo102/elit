<div class="card">
<div class="card-body">
    <table class="table table-bordered">
		<tr><td colspan="2" class="text-center"><img class="thumb-xl rounded" src="{{ $user->profile_picture != "" ? asset('public/uploads/profile/'.$user->profile_picture) : asset('public/images/avatar.png') }}"></td></tr>
		<tr><td>نام</td><td>{{ $user->name }}</td></tr>
		<tr><td>ایمیل</td><td>{{ $user->email }}</td></tr>
		<tr><td>نوع کاربر</td><td>{{ ucwords($user->user_type) }}</td></tr>
		<tr><td>سمت</td><td>{{ $user->role->name }}</td></tr>
    </table>
</div>
</div>
