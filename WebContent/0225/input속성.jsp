<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String sid = request.getParameter("id");
		String sname = request.getParameter("name");
		String semail = request.getParameter("email");
		
	%>
	<%= sid%><br>
	<%= sname%><br>
	<%= semail%><br>
	
</body>
</html>