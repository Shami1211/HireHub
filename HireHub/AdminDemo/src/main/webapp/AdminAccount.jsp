<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Admin Account</title>
	<link href="CSS/disply.css" rel="stylesheet">
</head>
	<body>
		<nav>
    
       
      </nav>
       <br><br><br>

       <br><br><br>
       
       <h1 class="topic-uplode">Member<span> Details..</span></h1>
       	
       	<c:forEach var="adm" items="${admDetails}">
			<c:set var="id" value="${adm.id}"/>
			<c:set var="name" value="${adm.name}"/>
			<c:set var="nic" value="${adm.nic}"/>
			<c:set var="phone" value="${adm.phone}"/>
			<c:set var="address" value="${adm.address}"/>
			
			<div class="uplode-container">
       			<div class="uplode-card">
          			<div class="details-container">
          			
			            <label class="lable-uplode" for="name">Member ID</label><br />
			            <input class="uplode-input" value="${adm.id}" readonly /><br />

            			<label class="lable-uplode">Member Name</label><br />
            			<input class="uplode-input" value="${adm.name}" readonly/><br />
            			
            			<label class="lable-uplode" for="description">Member NIC</label><br/>
            			<input class="uplode-input" value="${adm.nic}" readonly /><br />

            			<label class="lable-uplode">Member Mobile</label><br />
			            <input class="uplode-input" value="${adm.phone}" readonly/><br />

            			<label class="lable-uplode">Member Address</label><br />
			            <input class="uplode-input" value="${adm.address}" readonly/><br />

            			<br />
            			
          			</div>

					</c:forEach>
					
					<c:url value="UpdateAdmin.jsp" var="admupdate">
					
						<c:param name="id" value="${id}"/>
						<c:param name="name" value="${name}"/>
						<c:param name="nic" value="${nic}"/>
						<c:param name="phone" value="${phone}"/>
						<c:param name="address" value="${address}"/>
					
					</c:url>
					
			
					<c:url value="DeleteAdmin.jsp" var="admdelete">
					
						<c:param name="id" value="${id}"/>
						<c:param name="name" value="${name}"/>
						<c:param name="nic" value="${nic}"/>
						<c:param name="phone" value="${phone}"/>
						<c:param name="address" value="${address}"/>
					
					</c:url>
					
					<div class="button-form">
					
						<a href="${admupdate}">
			              <button class="uplode">Update</button>
			            </a>
			
			            <a href="${admdelete}">
			              <button class="uplode dl">Delete</button>
			            </a>
			
					</div>
        		</div>
      		</div>
      		
      <br><br><br>
      
		
	    </div>
	    
	</body>
</html>