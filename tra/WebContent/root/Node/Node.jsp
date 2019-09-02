<%@page import="model.Scene"%>
<%@page import="java.util.List"%>
<%@page import="tra.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="../Css/bootstrap-responsive.css" />
    <link rel="stylesheet" type="text/css" href="../Css/style.css" />
    <script type="text/javascript" src="../Js/jquery.js"></script>
    <script type="text/javascript" src="../Js/jquery.sorted.js"></script>
    <script type="text/javascript" src="../Js/bootstrap.js"></script>
    <script type="text/javascript" src="../Js/ckform.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>

    <style type="text/css">
        body {
            padding-bottom: 40px;
        }
        .sidebar-nav {
            padding: 9px 0;
        }

        @media (max-width: 980px) {
            /* Enable use of floated navbar text */
            .navbar-text.pull-right {
                float: none;
                padding-left: 5px;
                padding-right: 5px;
            }
        }


    </style>
</head>
<%
UserDaoImpl userDaoImpl=new UserDaoImpl();
List<Scene> scenes=userDaoImpl.find_Scenes();



%>
<body>
 <form class="form-inline definewidth m20" action="index.html" method="get">  
   景点名称：
    <input type="text" name="rolename" id="rolename"class="abc input-default" placeholder="" value="">&nbsp;&nbsp;  
    <button type="submit" class="btn btn-primary">查询</button>&nbsp;&nbsp; <button type="button" class="btn btn-success" id="addnew">新增景点</button>
</form> 
<table class="table table-bordered table-hover definewidth m10" >
    <thead>
    <tr>
        
        <th>景点名称</th>
        <th>开团人数</th>
        <th>参团人数</th>
        <th>开团状态</th>
        <th>管理操作</th>
    </tr>
    </thead>
	    
	     <%for(Scene scene:scenes){ %>
	      <tr>
            <td><%=scene.getPlace() %></td>
            <td><%=scene.getS_number() %></td>
            <td><%=scene.getR_number() %></td>
            <td><%=scene.getStatus() %></td>
            <td>
            <%if(scene.getStatus().contentEquals("已开团")){ %>
            <a href="do_Node.jsp?place=<%=scene.getPlace() %>&status=<%="未开团"%>"> 闭团</a>
            <%}else{ %>
            
               
				<a href="do_Node.jsp?place=<%=scene.getPlace() %>&status=<%="已开团"%>"> 开团</a>
				
				<%} %>
                  
            </td>
            </tr>
            <%} %>
        </table>
</body>
</html>
<script>
    $(function () {
        
		$('#addnew').click(function(){

				window.location.href="add.html";
		 });


    });

	function del(id)
	{
		
		
		if(confirm("确定要删除吗？"))
		{
		
			var url = "index.html";
			
			window.location.href=url;		
		
		}
	
	
	
	
	}
</script>