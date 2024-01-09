<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Vehicle</title>
    <link rel="stylesheet" href="CSS/detailss.css">
</head>

<body>
    
   
    
    <div class="right-half">
            <h1>Add Vehicle details</h1>
            <form action="add" method="post">
                <div class="form-group">
                    <label for="name">Vehicle Name</label>
                    <input type="text" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="film">Vehicle Number</label>
                    <input type="text" id="number" name="number" required>
                </div>
                <div class="form-group">
                    <label for="feedback">Description</label><br>
                    <textarea id="description" name="description" rows="4" required></textarea>
                </div><br>
                <button type="submit" value="login">Submit</button><br><br>
                <p>Do you want view your added vehicle? <a href="http://localhost:8090/Vehicle/SearchVehicle.jsp">Click here</a></p>
            </form>
            
          </div>
 
</body>

</html>
