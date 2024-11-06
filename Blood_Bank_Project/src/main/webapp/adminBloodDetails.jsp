<%@page import="com.dto.Admin" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Admin admin=(Admin)request.getSession().getAttribute("admin");
if(admin!=null){
	%>
	<a href="displayBloodDetails?id=O%2B"><button>O+</button></a>
	<a href="displayBloodDetails?id=O-"><button>O-</button></a>
	<a href="displayBloodDetails?id=A%2B"><button>A+</button></a>
	<a href="displayBloodDetails?id=A-"><button>A-</button></a>
	<a href="displayBloodDetails?id=B%2B"><button>B+</button></a>
	<a href="displayBloodDetails?id=B-"><button>B-</button></a>
	<a href="displayBloodDetails?id=AB%2B"><button>AB+</button></a>
	<a href="displayBloodDetails?id=AB-"><button>AB-</button></a>
<% 	
}
else{
	%>
	<h1>Admin Login First..</h1>
	<% 
	request.getRequestDispatcher("adminLogin.jsp").include(request, response);
}
%>

</body>
</html>