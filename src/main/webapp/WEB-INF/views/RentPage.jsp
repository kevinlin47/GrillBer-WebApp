<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
* {
    box-sizing: border-box;
}

input[type=text], select, textarea{
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    resize: vertical;
}

label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media (max-width: 600px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}

.footer{
    background-color: #F1F1F1;
    text-align: center;
    padding: 10px;
}

</style>
</head>
<body>

<h2>Grill Renting Form:</h2>

<div class="container">
  <form action="/RentPage" method="POST">
    <div class="row">
      <div class="col-25">
        <label for="fname">First Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="fname" name="firstname" placeholder="Your first name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">Last Name</label>
      </div>
      <div class="col-75">
        <input type="text" id="lname" name="lastname" placeholder="Your last name..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="Address">Address</label>
      </div>
      <div class="col-75">
        <input type="text" id="Address" name="address" placeholder="Your Address..">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="GrillType">Grill Type</label>
      </div>
      <div class="col-75">
        <select id="GrillType" name="grillType">
          <option value="Gas">Gas Grill</option>
          <option value="Char">Charcoal Grill</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="hours">Hours</label>
      </div>
      <div class="col-75">
        <select id="hours" name="Hours">
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
        </select>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="emamil">Email-Address</label>
      </div>
      <div class="col-75">
	  <input type="text" id="Email" name="email" placeholder="Your e-mail...">
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Submit">
    </div>
  </form>
</div>

<div class="footer">
<p>Service ONLY available in NYC<br>
Only Accepting PayPal Payment<br>
Hourly Rate: Gas-$10, Charcoal-$5<br>
$10 Cleaning fee if returned unclean<br>
Contact gbSupport@gmail.com for any questions or problems
</p>
</div>
</body>
</html>