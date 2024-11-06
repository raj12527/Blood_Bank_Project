<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.Buyer" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Buyer buyer=(Buyer)request.getSession().getAttribute("buyer");
if(buyer!=null){
	%>
	<a href="buyerdisplaybloodDetails?id=O%2B"><button>O+</button></a>
	<a href="buyerdisplaybloodDetails?id=O-"><button>O-</button></a>
	<a href="buyerdisplaybloodDetails?id=A%2B"><button>A+</button></a>
	<a href="buyerdisplaybloodDetails?id=A-"><button>A-</button></a>
	<a href="buyerdisplaybloodDetails?id=B%2B"><button>B+</button></a>
	<a href="buyerdisplaybloodDetails?id=B-"><button>B-</button></a>
	<a href="buyerdisplaybloodDetails?id=AB%2B"><button>AB+</button></a>
	<a href="buyerdisplaybloodDetails?id=AB-"><button>AB-</button></a>
<% 	
}
else{
	%>
	<h1>Buyer Login First..</h1>
	<% 
	request.getRequestDispatcher("buyerLogin.jsp").include(request, response);
}
%>
</body>
</html>