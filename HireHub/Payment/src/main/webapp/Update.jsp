<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
  

  
  
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>update</title>
    <link rel="stylesheet" href="CSS/updt.css" />
  </head>
  <body>

    <br />
  <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String email = request.getParameter("email");  
	String phone = request.getParameter("phone");
	String packages = request.getParameter("packages");
	String amount = request.getParameter("amount");
	String method = request.getParameter("method");
	
%>

 
  
    
    <h1>Update Payment Details</h1>
        <form  action="update" method="post">
        
            <label for="username">ID</label>
            <input type="text" id="id" name="id" required value="<%= id %>" readonly /><br><br>
          
            <label for="username">Name</label>
            <input type="text" id="name" name="name" required  value="<%= name %>"/><br><br>
          
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required value="<%= email %>" /><br><br>
          
            <label >Phone Number</label>
            <input type="text" id="phone" name="phone" required  value="<%= phone %>"/><br><br>
         
                 <label >Packages</label>
                 <select id="packages" name="packages"  value="<%= packages %>" readonly required onchange="updateAmount()">
        <option value="Full">Full</option>
        <option value="Half">Half</option>
        <option value="Medium">Medium</option>
               </select><br><br>
               
                  
            
            <label >Payment Amount</label>
            <input type="text" id="amount" name="amount" value="<%= amount %>" required /><br><br>
          
           <label >Payment Method</label>
                 <select id="method" name="method" required  value="<%= method %>">
                 <option value="Card Payment">Card Payment</option>
                <option value="Paypal">Paypal</option>
                <option value="Apple Pay">Apple Pay</option>
               </select><br><br>
            
            
 <button type="submit">Update</button>
        </form>
        <br><br>
       <script>
       function updateAmount() {
           var selectedPackage = document.getElementById("packages").value;
           var amountField = document.getElementById("amount");

           if (selectedPackage === "Full") {
             amountField.value = "25000";
           } else if (selectedPackage === "Half") {
             amountField.value = "9400";
           } else if (selectedPackage === "Medium") {
             amountField.value = "3600";
           }
         }
	   </script>
    
    
    <br /><br />

    
  </body>
</html>
