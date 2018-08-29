<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <title>Email</title>
</head>
<body>
Hallo terimakasih telah mendaftar ! <br><br>
<br><br>
Klik link berikut untuk mengaktivasi akun Anda
<a href="{{ url('/api/register/activate/'. $activation_token) }}">
{{ url('/api/register/activate/'. $activation_token) }}
</a><br><br><br><br><br>
Best Regard,<br><br>
<p style="color:red;">Asrini.</p>
</body>
</html>