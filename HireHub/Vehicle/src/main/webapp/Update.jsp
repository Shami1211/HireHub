<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit </title>
   <link rel="stylesheet" href="CSS/detailss.css">
  </head>
  <body>
  
  <%
    String id = request.getParameter("id");
	String name = request.getParameter("name");  
	String number = request.getParameter("number");  
	String description = request.getParameter("description");
 %>
   
  
   <br><br><br><br><br>
      <div class="right-half">
        <h1>Update Your Vehicle Details..</h1>
        
        
        <form  action="update" method="post">
        
        <div class="form-group">
            <label for="username">User ID</label>
            <input type="text" id="username" name="cusid" value="<%= id %>"  readonly />
          </div>
         
          <div class="form-group">
            <label for="email">Vehicle Name</label>
            <input type="name" id="name" name="name" value= "<%=  name %>" />
          </div>
          
           <div class="form-group">
            <label for="username">Vehicle Number</label>
            <input type="text" id="number" name="number" value= "<%= number %>" />
          </div>
          
          <div class="form-group">
            <label for="password">Decription</label>
            <input type="text" id="description" name="description" value="<%= description%>"  />
          </div>
          
          
          <button type="submit">Update</button>
        </form>
        
        
      </div>
    </div>
  </body>
</html>
