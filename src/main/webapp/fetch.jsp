<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>

<style>
.table {
	margin-left: 300px;
	margin-top: 50px;
    
    
}
.h1
{
   font-style: italic;
   text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
   text-align: center;
   margin-top: 150px;
}
body {
	background-image: url("https://img.freepik.com/free-photo/abstract-yellow-concrete-textures_74190-6993.jpg?t=st=1710253038~exp=1710256638~hmac=7bc6b38a1afdd3d122edb2a4b7fe1c48f5fe9c450494655ef683ae38b40e513e&w=1060");
	background-repeat: no-repeat;
	background-size: cover;
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
<h1 class="h1">  All Users </h1>
         <table border="2" cellpadding="10" cellspacing="10" class="table">
            
            <tr>
                <td>Id</td>
                <td>Name</td>
                <td>Email</td>
                <td>Password</td>
                <td>Phone</td>
                <th>Update</th>
                <th>Delete</th>
            </tr>  
            <c:forEach var="user" items="${users }">
			<tr>
				<td>${user.getId() }</td>
				<td>${user.getName() }</td>
				<td>${user.getEmail() }</td>
				<td>${user.getPassword() }</td>
				<td>${user.getPhone() }</td>
				<td><a href="update?id=${user.getId() }"><button type="button">Update</button></a> </button></td>
				<td><a href="delete?id=${user.getId() }"><button type="button">Delete</button></a> </button></td>
			</tr>
		</c:forEach>
         </table>
         <button type="submit" class="submit"> <a href="index.jsp"> Back </a></button>
         
</body>
</html>