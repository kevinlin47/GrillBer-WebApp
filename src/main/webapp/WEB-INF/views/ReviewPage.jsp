<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@ page import="com.GrillBer.ReviewTemplateJDBC"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>GrillBer</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {
    box-sizing: border-box;
}

body {
    font-family: Arial;
    margin: 0 auto; /* Center website */
    max-width: 800px; /* Max width */
    padding: 20px;
}

.heading {
    font-size: 25px;
    margin-right: 25px;
}

.fa {
    font-size: 25px;
}

.checked {
    color: orange;
}

/* Three column layout */
.side {
    float: left;
    width: 15%;
    margin-top:10px;
}

.middle {
    margin-top:10px;
    float: left;
    width: 70%;
}

/* Place text to the right */
.right {
    text-align: right;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* The bar container */
.bar-container {
    width: 100%;
    background-color: #f1f1f1;
    text-align: center;
    color: white;
}

/* Individual bars */
.bar-5 { height: 18px; background-color: #4CAF50;}
.bar-4 { height: 18px; background-color: #2196F3;}
.bar-3 { height: 18px; background-color: #00bcd4;}
.bar-2 { height: 18px; background-color: #ff9800;}
.bar-1 { height: 18px; background-color: #f44336;}

/* Responsive layout - make the columns stack on top of each other instead of next to each other */
@media (max-width: 400px) {
    .side, .middle {
        width: 100%;
    }
    .right {
        display: none;
    }
}

</style>
</head>
<body>
<%
	ApplicationContext context=new ClassPathXmlApplicationContext("Beans.xml");
	ReviewTemplateJDBC reviewTemplateJDBC=(ReviewTemplateJDBC)context.getBean("reviewTemplateJDBC");
	
	double sum=0;
	int totalRatings=0;
	
	for (int i=1;i<=5;++i)
	{
		sum=sum+(reviewTemplateJDBC.getRatingAmount(i)*i);
		totalRatings=totalRatings+reviewTemplateJDBC.getRatingAmount(i);
	}
	
	double averageRating=sum/totalRatings;

%>

<span class="heading">User Rating</span>
<% int starAmount=(int)Math.round(averageRating); 
	int leftOver=5-starAmount;
%>
<% for (int i=0;i<starAmount;++i){ %>
<span class="fa fa-star checked"></span>
<%}%>
<% for (int i=0;i<leftOver;++i){ %>
<span class="fa fa-star"></span>
<%}%>

<p><%=String.format("%.2f",averageRating)%> average based on <%=totalRatings %> reviews.</p>

<hr style="border:3px solid #f1f1f1">

<div class="row">
  <div class="side">
    <div>5 star</div>
  </div>
  <div class="middle">
  <% double barWidth=reviewTemplateJDBC.getRatingAmount(5)/(double)totalRatings; 
  barWidth=barWidth*100;%>
    <div class="bar-container">
      <div class="bar-5" style="width:<%=barWidth%>%"></div>
    </div>
  </div>
  <div class="side right">
  <% int numOf5=reviewTemplateJDBC.getRatingAmount(5); %>
    <div><%=numOf5 %></div>
  </div>
  <div class="side">
    <div>4 star</div>
  </div>
  <div class="middle">
  <% barWidth=reviewTemplateJDBC.getRatingAmount(4)/(double)totalRatings;
  barWidth=barWidth*100;%>
    <div class="bar-container">
      <div class="bar-4" style="width:<%=barWidth%>%"></div>
    </div>
  </div>
  <div class="side right">
  <% int numOf4=reviewTemplateJDBC.getRatingAmount(4); %>
    <div><%=numOf4 %></div>
  </div>
  <div class="side">
    <div>3 star</div>
  </div>
  <div class="middle">
  <% barWidth=reviewTemplateJDBC.getRatingAmount(3)/(double)totalRatings;
  barWidth=barWidth*100;%>
    <div class="bar-container">
      <div class="bar-3" style="width:<%=barWidth%>%"></div>
    </div>
  </div>
  <div class="side right">
  	<%int numOf3=reviewTemplateJDBC.getRatingAmount(3); %>
    <div><%=numOf3 %></div>
  </div>
  <div class="side">
    <div>2 star</div>
  </div>
  <div class="middle">
  <% barWidth=reviewTemplateJDBC.getRatingAmount(2)/(double)totalRatings;
  barWidth=barWidth*100;%>
    <div class="bar-container">
      <div class="bar-2" style="width:<%=barWidth%>%"></div>
    </div>
  </div>
  <div class="side right">
  <% int numOf2=reviewTemplateJDBC.getRatingAmount(2); %>
    <div><%=numOf2 %></div>
  </div>
  <div class="side">
    <div>1 star</div>
  </div>
  <div class="middle">
  <% barWidth=reviewTemplateJDBC.getRatingAmount(1)/(double)totalRatings;
  barWidth=barWidth*100;%>
    <div class="bar-container">
      <div class="bar-1" style="width:<%=barWidth%>%"></div>
    </div>
  </div>
  <div class="side right">
  <%int numOf1=reviewTemplateJDBC.getRatingAmount(1); %>
    <div><%=numOf1 %></div>
  </div>
</div>

<p>Give us a rating!</p>

<form action="/ReviewPage" method="POST">
<div style="width:200px;">
<select name="rating">
<option value="5">&#160;&#160;5&#160;&#160;</option>
<option value="4">&#160;&#160;4&#160;&#160;</option>
<option value="3">&#160;&#160;3&#160;&#160;</option>
<option value="2">&#160;&#160;2&#160;&#160;</option>
<option value="1">&#160;&#160;1&#160;&#160;</option>
</select>
<input type="submit" value="Submit"> 
</div>
</form>

</body>
</html>