<%@page import="com.dto.DonerSignup" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
DonerSignup donor=(DonerSignup)session.getAttribute("donor");

%>
<form action="bloodDetail">
	bloodGrop:<input type="text" value="<%=donor.getBgroup() %>" readonly="readonly" name="bg"><br>
	Quantity:<select name="quantity">
	<option value="300">300</option>
	<option value="400">400</option>
	<option value="500">500</option>
	<option value="600">600</option>
	<option value="700">700</option>
	<option value="800">800</option>
	<option value="900">900</option>
	<option value="1000">1000</option>
	
	</select>
	<br><br>
	<input type="submit" value="Donate">
	<input type="reset" value="cancel">
</form>
</body>
</html>