<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to GrillBer</title>
<style>
.mySlides{display:none;}

.topnav{
overflow:hidden;
background-color:#333;
}

.topnav a {

    float:left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    
}

.topnav a:hover {
    background-color: #ddd;
    color: black;
}

img{
display:block;
margin-left:auto;
margin-right:auto;
}

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
	<div class="topnav">
	<a href="RentPage" style="font-family: Arial,serif;">Rent </a>

	<a href="InfoPage" style="margin-left:800px; font-family: Arial,serif;">Product Info</a>

	<a href="ReviewPage" style="float:right; font-family: Arial,serif;">Reviews</a>
	</div>
	
	<h1><span>Welcome to GrillBer</span></h1>

	
	<div>
	<img class="mySlides" src="<c:url value="/resources/images/GuyGrilling.jpg"></c:url>" width="500" height="377">
	<img class="mySlides" src="<c:url value="/resources/images/1.jpg"></c:url>" width="500" height="377" >
	<img class="mySlides" src="<c:url value="/resources/images/gasGrill.jpeg"></c:url>" width="500" height="377">
	</div>

	
	<script type="text/javascript">
	var myIndex=0;
	carousel();
	
	function carousel()
	{
		var i;
		var x=document.getElementsByClassName("mySlides");
		for (i=0;i<x.length;i++)
			{
				x[i].style.display="none";
			}
		++myIndex;
		if (myIndex>x.length)
			{
				myIndex=1;
			}
		x[myIndex-1].style.display="block";
		setTimeout(carousel,2000);
	}
	</script>
	
	<p class=footer>Open Mon-Sun 10AM-10PM EST</p>
</body>

</html>