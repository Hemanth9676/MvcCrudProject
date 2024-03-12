<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1
{
  font-style: italic;
}
body {
	text-align: center;
	margin-top: 200px;
	background-image: url("https://img.freepik.com/free-photo/blurred-abstract-background-smooth-colors_58702-1548.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}
.name
{
  width:250px;
 display: flex;
  justify-content: space-between;
  margin-left: 620px;
}
.password
{
    width:250px;
 display: flex;
  justify-content: space-between;
  margin-left: 620px;
}
.phone
{
width:250px;
 display: flex;
  justify-content: space-between;
  margin-left: 620px;
}
.email
{
width:250px;
 display: flex;
  justify-content: space-between;
  margin-left: 620px;
}
.submit
{
     border-radius: 20px;
     color: white;
     padding: 10px 20px;
     background-color: #3498db;
     border: none;
     font-size: 20px;
     cursor: pointer;
     
}
</style>
</head>
<body>
	<form action="save" method="post">
		<h1 class="h1"> Instagram </h1>
		    <div class="name">
			Name : <input type="text" name="name" placeholder="Enter Your Name">
			</div>
			<br>
			
			<div class="email">
			Email : <input type="text" name="email"
				placeholder="Enter Your Email"> 
				</div> 
			<br>
			
			<div class="password">
			Password : <input type="text" name="password"
				placeholder="Enter Your Password"> 
				</div>
			<br> 
			
			<div class="phone">
			Phone : <input type="text" name="phone"
				placeholder="Enter Your Phone">
				</div>
			<br>
			
			<button type="submit" class="submit">Signin</button>
			<button type="submit" class="submit"><a href="index.jsp"> Back</a></button>
			

	</form>
</body>
</html>