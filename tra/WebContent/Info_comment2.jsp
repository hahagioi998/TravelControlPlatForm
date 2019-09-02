<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="model.Info"%>
<%@page import="java.util.List"%>
<%@page import="tra.UserDaoImpl"%>
<%@page import="model.User"%>
<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8" />
	<title>Contact - Vincie.web</title>
	<meta name="description" content="" />
	<meta name="author" content="" />

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="css/style.css" type="text/css" />
   

	<!-- JS
  ================================================== -->
   <script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- HTML5 Shiv events -->
   <script type="text/javascript" src="js/modernizr.custom.11889.js"></script>
    <!-- HTML5 Shiv events (end)-->
   <script type="text/javascript" src="js/nav-resp.js"></script>
<script src="js/jquery-1.8.3.min.js"></script> 
<script src="layer/layer.js"></script>
<script type="text/javascript">
function panduan2()
{
      
	  var num=document.getElementById("a").value;
	  if(num==0){
		  layer.confirm('你还未登录，无法报名，请先去登录', {icon: 5, title:'提示'}, function(index){
			  window.location.href="index2.jsp";
			  
			  layer.close(index);
			});
	  }
	  else
		  {
	window.location.href=("contact2.jsp");
		  }
}
</script>
	<!-- Favicons
  ================================================== -->
	<link rel="shortcut icon" href="images/favicon.ico" />
    <link href="css/layui.css" rel="stylesheet"  media="all">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<%

User loginUser=new User();
loginUser=(User)session.getAttribute("loginUser");
UserDaoImpl userDao=new UserDaoImpl();
List<User> users=userDao.find_comments(loginUser.getUsername());
int a=0;

if(loginUser!=null)
{
	a=1;
}

%>
<body style="background: linear-gradient(#5894e4 -10%,#d7e3fb 10%,#ffffff );">


	<!-- Primary Page Layout
================================================== -->

<div id="wrap" style="height:1250px">
<input type="hidden" id="a" value="<%=a%>">
<header id="header" class="container">
<div class="top-link" style="margin-right:100px;width: 200px;">
<% if(a==0){%>
<a href="javascript:void(0)" id="linkbt"> 登录/注册</a>
<%}else{ %>
<span style="color:#fcfcfc;font-size: 13px;background:url(../images/rowp3.png) no-repeat right;line-height:25px;"> Welcome,<%=loginUser.getUsername()%></span>
<%} %>
</div>
<div class="four columns"><a href="#"><img src="images/logo1.png" /></a></div>
<nav id="nav-wrap" class="twelve columns">
					<ul id="nav">
					 <% if(a==1){%> 
					<a class="buy" href="Logout.jsp">退出</a>
					<%} %>
					<li><a href="index.jsp">首页</a></li>
					<li><a href="#">近期航程</a>
					<ul>
						<li><a href="services.jsp">计划旅行地</a></li>
						<li>
						  <a onclick="panduan2()">报名</a>
						</li>
						
					</ul>
				</li>
				<li><a href="about.jsp">关于我们</a></li>
				<li><a href="portfolio-item.jsp">服务相关</a></li>
				 <% if(a==1){%> 
				<li><a href="#">我的</a>
				    <ul>
						<li><a href="Info_Baoming.jsp">查看已报名信息</a></li>
						<li><a href="Info_comment.jsp">我的留言</a></li>
						<li><a href="newrej.jsp">修改个人信息</a></li>
					</ul>
				</li>
				 <%} %>
			</ul>
	</nav>
		<!-- /nav-wrap -->
</header><!-- end-header -->
<section id="full-width">
<img src="images/lv21.jpg" class="full-width" />
<div class="page-subtitle"> 
<h3>我的留言</h3>
<p>小哥哥小姐姐会即时回复，不要着急哦！</p>
</div>

<!-- 内容主体区域 -->
    <fieldset class="layui-elem-field layui-field-title" style="">
    <legend>所有的留言信息</legend>
    </fieldset>
</section><!-- end-full-width -->


<section class="container page-content" style="
    top: 20px;
">


<div style="height:300px">
    
   <div style="margin-top:10px;"> 
        <table class="layui-table">
			<thead>
			<tr>
			<th style="font-size:25px;text-align:center;width:30%">留言时间</th>
			<th style="font-size:25px;text-align:center;">留言内容</th>
		</tr>
        </thead>
<%
               for(User user:users){
		%>
		<tr>

			<td style="font-size:25px;text-align:center;"> <%=user.getTime() %></td>
			<td style="font-size:25px;text-align:center;"> <%=user.getSaying()%></td>
	
		</tr>
		<%
			}                                                 
		%>
</table>
</div>
</div>

<div class="white-space"></div>

  </section><!-- container -->
  <!-- END-Google Map Section -->
	

	
	
<footer id="footer" align="center">
		<div class="row footer-grids pb-md-5 pb-3"  >	
			<div class="col-md-3 col-sm-6 col-6">
				<a href="https://www.baidu.com/"> <img style="width:60px; height:60px;margin-left:-870px;border-radius:100%; overflow:hidden;margin-right:10px;margin-top:30px" src="images/bai.jpg"></img>百度</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6" style="margin-top:-60px">
				<a href="https://www.yahoo.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-left:-370px;" src="images/ya.jpg"></img>雅虎</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2" style="margin-top:-55px;margin-right:-500px;">
				<a href="http://www.google.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-top:-12px;margin-left:274px" src="images/gu.jpg"></img>Google</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2" style="margin-top:-55px;">
				<a href="http://www.sogou.com/?hdq=sogou-wsse-257deb66f5366aab">  <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:-10px;margin-top:-12px;margin-left:200px" src="images/sou.jpg"></img>搜狗</a>
			</div>
		</div>
		<hr/>
		<div class="subscribe-grid text-center" style="height:116px">
			<p class="para three mt-4" style="margin-top:80px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at placerat ante. Praesent nulla nunc, pretium dapibus efficitur in</p><p> auctor eget elit. Lorem ipsum dolor sit amet </p>
		
		</div>
	</div>
</div>
  </div><!-- end-footbot -->
</footer>
<!-- end-footer -->

</div><!-- end-wrap -->
<!-- End Document
================================================== -->
   <script src="./Test/js/jquery.min.js"></script>
    <script src="./Test/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/latest-twitt.js"></script>
	<script type="text/javascript" src="js/vincie-send.js"></script>

</body>
</html>