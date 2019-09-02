<%@page import="Util.UserException"%>
<%@page import="tra.UserDaoImpl"%>
<%@page import="model.User"%>
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
	//接收客户端传递过来的参数
	request.setCharacterEncoding("utf-8");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	User user = new User();
	user.setUsername(username);
	user.setPassword(password);
	
	UserDaoImpl userDao = new UserDaoImpl();
	try{
		userDao.add_user(username, password);
		//重定向
		System.out.print("添加成功");
		%>
		<script src="js/jquery-1.8.3.min.js"></script> 
        <script src="layer/layer.js"></script>
		 <script  language="javascript">
		 layer.confirm('添加成功即将跳转登录页面', {
			  btn: ['确认','取消'] //按钮
			}, function(){
			  window.location.href="index2.jsp";
			}, function(){
			 window.location.href="rej.jsp";  
			}); 
	 		</script>
	 		<% 
		
	} catch (UserException e) {
	/* 	System.out.print(e.getMessage()); */
		%>
		<input type="hidden" value="<%=e.getMessage()%>" id="sum" name="sum"/>
		 <script  language="javascript">
		 window.onload=function(){
		 var meg=document.getElementById('sum').value;
		 if(meg!=null)
	 		{
			 alert(meg);
	 		}
		    window.history.back(-1); 
		 };
	 		</script>
	 		<% 
	}
%>
</body>
</html>