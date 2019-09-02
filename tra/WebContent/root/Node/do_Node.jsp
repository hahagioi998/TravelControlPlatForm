<%@page import="tra.UserDaoImpl"%>
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
request.setCharacterEncoding("utf-8");
String place=request.getParameter("place");
String status=request.getParameter("status");
UserDaoImpl userDaoImpl= new UserDaoImpl();
userDaoImpl.update_Info(status, place);

%>
<script  language="javascript">
	window.location.href="Node.jsp";
	</script>
</body>
</html>