<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!-- 
     思路：就是将session 中的用户信息清除
     session是服务器管理的，但是咱们可以设置session失效
 -->
<%
    //设置session失效的方式
    session.invalidate();
    response.sendRedirect(request.getContextPath()+"/index.jsp");
%>