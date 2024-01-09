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
        <h1 class="topic-uplode">Insert Member<span> Details..</span></h1>
		<div class="uplode-container">
       
        <form action="admininser" method="post">
          <div class="uplode-card">
            <div class="details-container">
              <label class="lable-uplode" for="name">Member Name</label><br />
              <input
                class="uplode-input"
                type="text"
                id="name"
                name="name"
                required
              /><br />

              <label class="lable-uplode" for="date">NIC</label><br />
              <input class="uplode-input" type="text" id="nic" name="nic" required /><br />

              <label class="lable-uplode" for="description">Phone Number</label
              ><br />
              <input
                class="uplode-input"
                type="text"
                id="phone"
                name="phone"
                required
              /><br />
              <label class="lable-uplode" for="date">Address</label><br />
              <input
                class="uplode-input"
                type="text"
                id="address"
                name="address"
                required
              /><br />
              <br />
            </div>
            <div class="button-form">
              <button class="uplode">Submit</button>
            </div>
          </div>
        </form>
        </div>
        <br><br><br>
         <!--Footer-->
    <div className="ft">
    
</body>
</html>