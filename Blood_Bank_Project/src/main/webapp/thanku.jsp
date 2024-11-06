<%@page import="com.dto.Buyer"%>
<%@page import="com.dto.DonerSignup"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank you page</title>
</head>
<body>
<%
Buyer b=(Buyer)session.getAttribute("buyer");
DonerSignup d=(DonerSignup)request.getSession().getAttribute("donor");
%>
<h2>Buyer Id:<%=b.getId() %></h2>
<h2>Buyer Name:<%=b.getId() %></h2>
<h2>Blood Group<%=b.getId() %></h2>
<h2>Quantity:<%=b.getId() %></h2>
<h2>Amount:<%=b.getId() %></h2>
<a href="bloodbankApp.jsp"><button>Home</button></a>
</body>
</html>