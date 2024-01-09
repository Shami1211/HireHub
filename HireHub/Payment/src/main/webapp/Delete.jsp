 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link href="CSS/dlt.css" rel="stylesheet">
</head>
<body>

    <br /><br /><br />

     <h1>Payment Details Delete Confirmation</h1>
  
    
   <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String email = request.getParameter("email");  
	String phone = request.getParameter("phone");
	String packages = request.getParameter("packages");
	String amount = request.getParameter("amount");
	String method = request.getParameter("method");
	
%>

 
  
    
   
        <form  action="delete" method="post">
        
            <label for="username">ID</label>
            <input type="text" id="id" name="id" required value="<%= id %>" readonly /><br><br>
          
            <label for="username">Name</label>
            <input type="text" id="name" name="name" readonly  value="<%= name %>"/><br><br>
          
            <label for="email">Email</label>
            <input type="email" id="email" name="email" readonly value="<%= email %>" /><br><br>
          
            <label >Phone Number</label>
            <input type="text" id="phone" name="phone" readonly  value="<%= phone %>"/><br><br>
         
                 <label >Packages</label>
                 <input type="text" id="packages" name="packages"  value="<%= packages %>" readonly  /><br><br>
               
                  
            
            <label >Payment Amount</label>
            <input type="text" id="amount" name="amount"    value="<%= amount %>" readonly /><br><br>
          
           <label >Payment Method</label>
                 <input type="text" id="method" name="method" readonly  value="<%= method %>" />

           
            
         
          <br><br><button type="submit" class="dlt">Delete</button>
        </form>
        
    <br /><br /><br />

     
</body>
</html>