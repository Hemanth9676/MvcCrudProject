<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
          <div style="height: 100vh; width:100vw;">
		<h1>Update Deatails</h1>
		<form action="delete" method="post">
			<input type="hidden" value="${u.getId() }" name="id">
			<br>
			<button type="submit">Delete</button>
		</form>
	</div>
          <h1> Record Deleted..</h1>
</body>
</html>