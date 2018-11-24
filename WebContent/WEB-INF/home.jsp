<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@ include file="menu.jsp" %>
	this is Home Page

	<p>
		<%
			String name = (String) request.getAttribute("name");
			if (name != null) {
				out.println("Hello " + name);
			} else {
				out.println("Hello world");
			}
		%>
	</p>
	
	<p>
	${ !empty name ? "Hello "+ name : "Hello world" }
	</p>
	
	<p>
	${ user.name }
	${user.active ? "is an active user" : "is an inactive user"}
	</p>
</body>
</html>