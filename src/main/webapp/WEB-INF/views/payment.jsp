<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@ page import="com.GrillBer.RentJDBCTemplate"%>
<%@ page import="com.GrillBer.Order" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<body>
<% 
	ApplicationContext context=new ClassPathXmlApplicationContext("Beans.xml");
	RentJDBCTemplate rentJDBCTemplate= (RentJDBCTemplate)context.getBean("rentJDBCTemplate");
	String email=request.getParameter("email");
	Order currentOrder=rentJDBCTemplate.getOrder(email);
	int gasRate=10;
	int charRate=5;
	
	Integer requestHours=currentOrder.getHours();
	Integer paymentAmount;
	
	if (currentOrder.getGrillType().equals("Gas"))
	{
		paymentAmount=gasRate*requestHours;
	}
	else
	{
		paymentAmount=charRate*requestHours;
	}
%>
	<form action="${initParam['posturl']}" method="POST">
		<input type="hidden" name="upload" value="1"/>
		<input type="hidden" name="return" value="${initParam['returnurl']}"/>
		<input type="hidden" name="cmd" value="_cart"/>
		<input type="hidden" name="business" value="${initParam['business']}"/>
		
		<p>Grill Type:</p>
		<input type="text" name="item_name_1" value=<%=currentOrder.getGrillType() %>>
		<p>Number of hours:</p>
		<input type="text" name="numHours" value=<%=requestHours %>>
		<p>Total($):</p>
		<input type="text" name="amount_1" value=<%=paymentAmount %>>
		<input type="hidden" name="quantity_1" value="1"/>
		<input type="submit" value="Pay"/>
	</form>
	
</body>
</html>