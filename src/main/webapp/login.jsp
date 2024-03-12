<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
body {
	text-align: center;
	margin-top: 300px;
	background-image: url("https://t4.ftcdn.net/jpg/06/55/50/69/360_F_655506911_1p13PsGKM93SuCePkLUcd75TW1Bzu4jg.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}

.email {
	width: 250px;
	display: flex;
	justify-content: space-between;
	display: flex;
	margin-left: 620px;
}
.password {
	width: 250px;
	display: flex;
	justify-content: space-between;
	display: flex;
	margin-left: 620px;
}
.submit {
   border-radius: 10px;
   padding: 10px 20px;
   background-color: #3498db;
   color: white;
   border: none;
   cursor: pointer;
   font-size: 20px;
   
	
}
</style>
</head>

<body>
      ${msg }
	<h1>Login Here</h1>
	
	<div class="one">
		<form action="login" method="post">
			<div class="email">
				Email : <input type="text" name="email" placeholder="Enter Email">
			</div>
			<br> <br>
			<div class="password">
				Password : <input type="text" name="password"
					placeholder="Enter Password">
			</div>
			<br> <br>
			<button type="submit" class="submit">Login</button>
			<button type="submit" class="submit"><a href="index.jsp"></a> Back</button>
			
	</div>
	</form>
</body>
</html>