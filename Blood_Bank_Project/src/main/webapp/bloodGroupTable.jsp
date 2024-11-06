<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.dto.Admin"%>
<%@ page import="com.dto.BloodGroup"%>
<%@ page import="com.dto.DonerSignup"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	BloodGroup bloodgroup = (BloodGroup) session.getAttribute("bgroup");
	List<DonerSignup> list = bloodgroup.getDonerSignups();
	%>
	<table border="1px" width="100%" cellpadding="5px" cellspacing="5px">
		<tr>
			<th>S.No</th>
			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>AGE</th>
			<th>Gender</th>
			<th>Phone_Number</th>
			<th>Blood_Group</th>
			<th>Status</th>
			<th>Amount</th>
			<th>Quantity</th>
			<th>Update</th>
			<th>Delete</th>
		</tr>
		<%
		int i = 1;
		for (DonerSignup d : list) {
		%>
		<tr>
			<th><%=i++ %></th>
			<th><%=d.getId()%></th>
			<th><%=d.getName()%></th>
			<th><%=d.getEmail()%></th>
			<th><%=d.getAge()%></th>
			<th><%=d.getGender()%></th>
			<th><%=d.getPhone()%></th>
			<th><%=d.getBgroup()%></th>
			<th><%=d.getStatus()%></th>
			<th><%=d.getAmount()%></th>
			<th><%=d.getQuantity()%></th>
			<th><a href="updateStatus?id=<%=d.getId()%>"><button>Update Status</button></a></th>
			<th><a href="deleteDonorSignup?id=<%=d.getId()%>"><button>Delete</button></a></th>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>