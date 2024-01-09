<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register Page</title>
    <link rel="stylesheet" href="CSS/detail.css" />
  </head>
  <body>
    <div class="left">
      <div class="container">
        <div class="right-half">

          <h1>User Profile Details</h1>
	
	<c:forEach var="cus" items="${cusDetails}">
	
	<c:set var="id" value="${ cus.id}" />
	<c:set var="username" value="${ cus.username}" />
	<c:set var="email" value="${ cus.email}" />
	<c:set var="password" value="${ cus.password}" />
	
	
	 <div class="fm">
		<label for="username">ID</label>
		<input
		  type="text"
		  id="name"
		  name="name"
		  readonly
		  value="${cus.id}"
		/><br /><br />
		<label for="username">User Name</label>
		<input
		  type="text"
		  id="name"
		  name="name"
		  readonly
		  value="${cus.username}"
		/><br /><br />

		<label for="email">Email</label>
		<input
		  type="email"
		  id="email"
		  name="email"
		  readonly
		  value="${cus.email}"
		/><br /><br />


		<label f>Password</label>
		<input
		  type="text"
		  id="packages"
		  name="packages"
		  readonly
		  value="${cus.password}"
		/><br /><br />
	
	

	</c:forEach>
	
	<c:url value="Update.jsp" var="cusupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="username" value="${username}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="password" value="${password}"/>
	 </c:url>
	 
	 <c:url value="Delete.jsp" var="cusdelete">
	<c:param name="id" value="${id}"/>
	<c:param name="username" value="${username}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="password" value="${password}"/>
	 </c:url>
	 
	 
	          <a href="${cusupdate }"><button name="update" >Update Profile</button></a><br><br>
               <a href="${cusdelete }"><button name="delete" class="dlt">Delete Account</button></a><br><br>
        </div>
      </div>
    </div>
    
    
    
  </body>
</html>

