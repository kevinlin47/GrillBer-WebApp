<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GrillBer</title>
<style type="text/css">

body{
background-color:linen
}

h1{
	font-family: Arial,"Times New Roman", serif;
	color:white;
	text-align:center;
}

p{
font-family: Arial,"Times New Roman", serif;
font-size:35px;
}

h1 span{
background-color:green;
}

.img-with-text {
    text-align: justify;
    width: 377;
}

</style>
</head>
<body>
<h1><span>Product Information</span></h1>

<p>Napoleon Grills Rogue 425 Propane Gas Grill, </p>
<p>Stainless Steel</p>

<div>
<ul>
<li><img src="<c:url value="/resources/images/gasGrillProduct.jpeg"></c:url>" style=" width:500px; height:377px "></li>
<li>Stainless Steel WAVE Cooking Grids</li>
<li>Infrared SIZZLE ZONE Side Burner</li>
<li>Space Saving Folding Shelves</li>
<li>JETFIRE Ignition System</li>
<li>45,000 BTU's</li>
<li>4 Burners.</li>
<li>625 Square Inches of Total Cooking Area.</li>
<li>Burger Capacity.</li>
<li>Stainless Steel.</li>
</ul>
</div>

</body>
</html>