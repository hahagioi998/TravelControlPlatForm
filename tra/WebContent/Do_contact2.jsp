<%@page import="java.util.ArrayList"%>
<%@page import="model.Scene"%>
<%@page import="java.util.List"%>
<%@page import="model.Info"%>
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
String u_Type=request.getParameter("u_Type");
System.out.println(u_Type);
String u_Name=request.getParameter("u_Name");
String telephone=request.getParameter("telephone");
String QQ=request.getParameter("QQ");
String class1=request.getParameter("Class1");
String other=request.getParameter("Other");
String username=request.getParameter("username");
String time=request.getParameter("time");
int ADDperson=Integer.parseInt(request.getParameter("ADDperson"));
String place=request.getParameter("place");
Info info=new Info();
info.setU_Name(u_Name); 
info.setTelephone(telephone);
info.setQQ(QQ);
info.setClass1(class1);
info.setOther(other);
info.setU_Type(u_Type);
info.setInfo_time(time);
info.setNumber(ADDperson);
info.setPlace(place);
info.setStatus("未开团");
UserDaoImpl userDao = new UserDaoImpl();
userDao.add_Info(info, username);

List<String> scenes=new ArrayList();

scenes.add("西安");
scenes.add("秦皇岛");
scenes.add("济南");
scenes.add("天津");
for(String scene:scenes)
{
	
	userDao.update_scene(scene);
}
%>
<script  language="javascript">
	
	layer.alert('发送成功即将跳转个人报名信息页面', {
    	  icon: 1,
    	  skin: 'layer-ext-moon' //该皮肤由layer.seaning.com友情扩展。关于皮肤的扩展规则，去这里查阅
    	}) 
	window.location.href="Info_Baoming.jsp";
	</script>
</body>
</html>