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

pre{
font-family: Arial,"Times New Roman", serif;
font-size:35px;
}

h1 span{
background-color:green;
}

</style>
</head>
<body>
<h1><span>Product Information</span></h1>
<table style="width:100%">
<tr>
<th style="font-size:30px;">Napoleon Grills Rogue 425 Propane Gas Grill</th>
<th style="font-size:30px;">Charcoal Grill Offset Smoker - Black - Royal Gourmet</th>
</tr>
<tr>
<td>
<img src="<c:url value="/resources/images/gasGrillProduct.jpeg"></c:url>" style="  width:500px; height:377px ">
</td>
<td>
<img src="<c:url value="/resources/images/cGrill.jpg"></c:url>" style=" width:500px; height:377px ">
</td>
</tr>
<tr>
<td>
<ul>
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
</td>
<td>
<ul>
<li>Dimensions: 45.3 inches (H) x 26.8 inches (W) x 48.0 inches (D)</li>
<li>Frame Material: Steel</li>
<li>Finish: Smooth</li>
<li>Battery: No battery used</li>
<li>Handle Material: Stainless Steel</li>
<li>Lid Material: Steel</li>
<li>Includes: Cooking Grate, Lid, Thermometer, Shelves</li>
<li>Weight: 57.0 pounds</li>
<li>Cooking Grate Material: Porcelain</li>
<li>Protective Qualities: Heat-resistant</li>
<li>Required, Not Included: Charcoal</li>
<li>Care and Cleaning: Clean with Water</li>
<li>Grill Surface Area: 780 sq. in.</li>
<li>Appliance Capabilities: Grill, Smoker</li>
</ul>
</td>
</tr>
</table>

</body>
</html>