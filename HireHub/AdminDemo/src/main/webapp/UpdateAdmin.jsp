<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Member Details</title>
 <link href="CSS/disply.css" rel="stylesheet">
</head>
<body>
<nav>
        
       
      </nav>
       <br><br><br>

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String nic = request.getParameter("nic");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	
%>

 <h1 class="topic-uplode">Update Member<span> Details..</span></h1>
<div class="uplode-container">

<form action="adminupdate" method="post">
          <div class="uplode-card">
            <div class="details-container">
            <label class="lable-uplode" for="id">ID</label><br />
              <input
                class="uplode-input"
                type="text"
                id="id"
                name="id"
                 value="<%=id%>"
                readonly
              /><br />
              <label class="lable-uplode" for="name">Member Name</label><br />
              <input
                class="uplode-input"
                type="text"
                id="name"
                name="name"
                value="<%=name%>"
                required
              /><br />

              <label class="lable-uplode" for="nic">NIC</label><br />
              <input class="uplode-input" type="text" id="nic" name="nic" value="<%=nic%>" required /><br />

              <label class="lable-uplode" for="phone">Phone Number</label
              ><br />
              <input
                class="uplode-input"
                type="text"
                id="phone"
                name="phone"
                value="<%=phone%>"
                required
              /><br />
              <label class="lable-uplode" for="address">Address</label><br />
              <input
                class="uplode-input"
                type="text"
                id="address"
                name="address"
                value="<%=address%>"
                required
              /><br />
              <br />
            </div>
            <div class="button-form">
              <button class="uplode">update</button>
            </div>
          </div>
        </form>
            
        </div>
        <br><br><br>
     <br /><br />
    <footer class="footer">
      <div class="footer-content">
        &copy; 2023 HireHub.lk All rights reserved.
      </div>
    </footer>
     
</body>
</html>