 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
   <link rel="stylesheet" href="CSS/detailss.css">
</head>
<body>

	<%
	 String id = request.getParameter("id");

	String name = request.getParameter("name");  
    String number = request.getParameter("number");
    String description = request.getParameter("description");
   %>
	
	

 <div class="right-half">
	<h1>Vehicle Details Delete</h1>

	<form action="delete" method="post">
	 
        <div class="form-group">
        
           <label for="id">ID</label>
            <input type="text"  name="cusid" value= "<%= id %>" readonly/>
            
            <label for="email">Vehicle name</label>
            <input type="text"  name="name" value= "<%= name %>" readonly/>
          
         
            <label for="username">Vehicle Number</label>
            <input type="text"  name="number" value= "<%= number %>" readonly />
            
            <label for="username">Vehicle Description</label>
            <input type="text"  name="description" value= "<%= description %>" readonly />
          </div><br>
          
          
	 <button type="submit" class="dlt">Delete</button>
	</form>
</div>
</body>
</html>