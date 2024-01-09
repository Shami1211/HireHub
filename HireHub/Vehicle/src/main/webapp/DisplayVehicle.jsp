<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
       

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <link rel="stylesheet" href="CSS/dis.css">
  </head>
  <body>
   
       
	<br><br><br><br>
	
	 <c:forEach var="cus" items="${cusDetails}">
	 
			<c:set var="id" value="${ cus.id}" />
			<c:set var="name" value="${ cus.name}" />
			<c:set var="number" value="${ cus.number}" />
			<c:set var="description" value="${ cus.description}" />
			<h1>Vehicle Details</h1>
	
<div class="fm">
  <label for="username">ID</label>
  <input
    type="text"
    id="name"
    name="name"
    readonly
    value="${cus.id}"
  /><br /><br />
  <label for="username">Vehicle Name</label>
  <input
    type="text"
    id="name"
    name="name"
    readonly
    value="${cus.name}"
  /><br /><br />

  <label for="email">Vehicle Number</label>
  <input
    type="text"
    id="email"
    name="number"
    readonly
    value="${cus.number}"
  /><br /><br />

  <label>Description</label>
  <input
    type="text"
    id="description"
    name="description"
    readonly
    value="${cus.description}"
  /><br /><br />


  
	
	

	</c:forEach>
	
	<c:url value="Update.jsp" var="cusupdate">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="number" value="${number}"/>
	<c:param name="description" value="${description}"/>
	 </c:url>
	
	 <c:url value="Delete.jsp" var="cusdelete">
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="number" value="${number}"/>
	<c:param name="description" value="${description}"/>
	 </c:url>
	 
<br>
	          <a href="${cusupdate }"><button name="update" >Update </button></a><br><br>
               <a href="${cusdelete }"><button name="delete" class="dlt">Delete</button></a>
      </div>
    
    
  </body>
</html>

