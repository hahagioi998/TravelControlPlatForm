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
String username=request.getParameter("username");//留言者
String person=request.getParameter("person");//留言对象
String saying=request.getParameter("saying");//留言内容
String time=request.getParameter("time");//留言时间

UserDaoImpl userDao = new UserDaoImpl();
User user=new User();
user.setUsername(username);
user.setSaying(saying);
user.setTime(time);
user.setPerson(person);
userDao.add_Comment(user);
%>
<script type="text/javascript">
layer.alert('留言成功', {
	  icon: 1,
	  skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
	})  
window.location.href="Info_comment.jsp";
</script>
</body>
</html>