<%@page import="model.User"%>
<%@page import="tra.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <script src="js/jquery-1.8.3.min.js"></script> 
<script src="layer/layer.js"></script>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String username=request.getParameter("username");
String password=request.getParameter("password");
UserDaoImpl userDao = new UserDaoImpl();
User user= userDao.load(username);
if(!(user==null))
{
	 if(password.contentEquals(user.getPassword()))
	 {
		 session.setAttribute("loginUser",user);
		   response.sendRedirect(request.getContextPath()+"/contact2.jsp"); 
	 }
	 else
	 {
		 session.setAttribute("loginError","密码错误");
		 %>
		
        <script type="text/javascript">
        layer.alert('密码错误', {
      	  icon: 2,
      	  skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
      	}) 
        /* window.history.back(-1); */
     	window.location.href="contact.jsp";
        </script>
		 <%
		 
	 }
}
else
{
	  session.setAttribute("loginError","用户不存在");
	  %>
     <script type="text/javascript">
        alert('用户不存在,请重新登录');
        window.location.href="contact.jsp";
     </script>
	 <%
	
}

%>
</body>
</html>