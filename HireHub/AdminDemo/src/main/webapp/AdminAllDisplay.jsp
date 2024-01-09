<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Member Details</title>
    <link href="CSS/alldisplay.css" rel="stylesheet" />
  </head>
  <body>
    <nav></nav>

    <br /><br /><br />

    <h1 class="topic-uplode">Register Member <span>Details..</span></h1>
    <form action="adminsearch" method="post">
      <input class="inpt" type="text" name="uid" placeholder="User Name" />
      <input class="inpt" type="text" name="pass" placeholder="User NIC" />

      <button class="serch">Search</button>
    </form>

    <div class="full">
      <div class="container-display">
        <div class="uplodebtn">
          <a href="AdminInsert.jsp">
            <button class="uplode">Add Member</button>
          </a>
        </div>
        <br /><br />
        <div class="table-container">
          <table id="customers">
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>NIC</th>
              <th>Phone</th>
              <th>Address</th>
            </tr>
            <c:forEach var="adm" items="${allAdmins}">
              <tr>
                <td>${adm.id}</td>
                <td>${adm.name}</td>
                <td>${adm.nic}</td>
                <td>${adm.phone}</td>
                <td>${adm.address}</td>
              </tr>
            </c:forEach>
          </table>
        </div>
      </div>
      <br /><br /><br />
    </div>
  </body>
</html>
