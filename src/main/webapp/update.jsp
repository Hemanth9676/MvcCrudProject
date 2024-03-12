<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
        <div style="height: 100vh; width:100vw;">
		<h1>Update Deatails</h1>
		<form action="updateuser" method="post">
			<input type="hidden" value="${u.getId() }" name="id">
			<br> <br> 
			Name : <input type="text" value="${u.getName() }" name="name"placeholder="Enrter Name"><br> <br>
				 Email :<input type="text" name="email" value="${u.getEmail() }" placeholder="Enrter Email"><br>
			<br>
			<button type="submit">Update</button>
		</form>
	</div>

	<h1>Record Updated..</h1>
</body>
</html>