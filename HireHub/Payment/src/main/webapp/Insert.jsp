<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>payment Page</title>
    <link rel="stylesheet" href="CSS/insertp.css" />
  </head>
  <body>

    <br /><br /><br />
    <h1 class="h1m">Add new Payment details...</h1>
    <form action="insert" method="post">
      <label for="username">Customer Name</label>
      <input type="text" id="name" name="name" required /><br /><br />

      <label for="email">Customer Email</label>
      <input type="email" id="email" name="email" required /><br /><br />

      <label>Customer Phone Number</label>
      <input
        type="text"
        id="phone"
        name="phone"
        pattern="[0-9]{10}"
        required
      /><br /><br />

      <label> Choose Vehicle Package </label>
      <select id="packages" name="packages" required onchange="updateAmount()">
        <option value="Full">Full</option>
        <option value="Half">Half</option>
        <option value="Medium">Medium</option></select
      ><br /><br />

      <label>Payment Amount</label>
      <input
        type="text"
        id="amount"
        name="amount"
        required
        readonly
      /><br /><br />

      <label>Payment Method</label>
      <select id="method" name="method" required>
        <option value="Card Payment">Card Payment</option>
        <option value="Paypal">Paypal</option>
        <option value="Apple Pay">Apple Pay</option>
      </select>
      <button type="submit">Submit</button>
    </form>

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

    <br /><br /><br />

  </body>
</html>
