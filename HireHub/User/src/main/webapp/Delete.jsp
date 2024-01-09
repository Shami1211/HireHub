 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="CSS/detail.css" rel="stylesheet">
</head>
<body>

	<%
	 String id = request.getParameter("id");
    String username = request.getParameter("username");
	String email = request.getParameter("email");  
	String password = request.getParameter("password");
   %>
	
	
	<div class="container">


	<h1>Account Delete Confirmation</h1>

	<form action="delete" method="post">
	 
        <div class="form-group">
        
           <label for="id">Email</label>
            <input type="text"  name="cusid" value= "<%= id %>" readonly/>
            
            <label for="email">Email</label>
            <input type="text"  name="email" value= "<%= email %>" readonly/>
          
         
            <label for="username">User Name</label>
            <input type="text"  name="uname" value= "<%= username %>" readonly />
          </div><br>
          
          
	<button class="dlt">Delete Account</button><br><br>
	</form>
	
</div>
</body>
</html>