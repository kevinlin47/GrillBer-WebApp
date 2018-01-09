<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to GrillBer</title>
<style>
.footer{
bottom:0%;
position:fixed
}

body{
background-color:linen
}

h1{
	font-family: Arial,"Times New Roman", serif;
	color:white;
	text-align:center;
}

h1 span{
background-color:green;
}
</style>
</head>

<body>
	<a href="RentPage" style="float:left; font-family: Arial,serif;">Rent </a>

	<a href="InfoPage" style="margin-left:900px; font-family: Arial,serif;">Product Info</a>

	<a href="ReviewPage" style="float:right; font-family: Arial,serif;">Reviews</a>

	<h1><span>Welcome to GrillBer</span></h1>
	<p style="text-align:center;"><img src="<c:url value="/resources/images/GuyGrilling.jpg"></c:url>" width="500" height="377" align="middle"/></p>
	
	<p class=footer>Open Mon-Sun 10AM-10PM EST</p>
</body>

</html>