<%@page import="java.util.List"%>
<%@page import="com.dto.DonerSignup"%>
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
List<DonerSignup> list=(List<DonerSignup>)session.getAttribute("list");
%>
<table>
	<tr>
		<th>S.no</th>
		<th>ID</th>
		<th>Quantity</th>
		<th>Amount</th>
		<th>Buy</th>
	</tr>
	<%
	int i=1;
	for(DonerSignup d:list){
	%>
	<tr>
		<td><%=i++ %></td>
		<td><%=d.getBloodGroup() %></td>
		<td><%=d.getQuantity() %></td>
		<td><%=d.getAmount() %></td>
		<td><a href="buyBlood?id=<%=d.getBloodGroup().getId()%>&donerId=<%=d.getId()%>"><button>Buy</button></a></td>
	</tr>
	<%} %>
	
</table>
</body>
</html>