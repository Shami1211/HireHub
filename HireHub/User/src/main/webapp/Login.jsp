<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login Page</title>
      <link href="CSS/log.css" rel="stylesheet">
  </head>
  <body>
      <br /><br /><br /><br /><br /><br><br><br>
    <div class="container">
    <div class="right-half">
      
        <h1>Login Here..</h1>
        <form action="login" method="post">
		<label>User Name</label> <input type="text" name="username" class="form-group" placeholder="Enter your username"><br><br>
		<label>Password</label> <input type="password" name="password" class="form-group" placeholder="Enter your password"><br>
		<button>Login</button>
	</form>
	 <p>Don't have an account? <a href="http://localhost:8090/User/Register.jsp">Register here</a></p>
      </div>
    </div>
  </body>
</html>
