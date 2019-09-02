<%@page import="javax.websocket.Session"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8" />
	<title>Comment - Vincie.web</title>
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

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<%

User loginUser=new User();
loginUser=(User)session.getAttribute("loginUser");
int a=0;

if(loginUser!=null)
{
	a=1;
}

String person1=null;
if(request.getParameter("person")!=null)
{
	session.setAttribute("person", request.getParameter("person"));
	person1= request.getParameter("person");
}
else
{
	person1=(String)session.getAttribute("person");
}
%>
<body style="background: linear-gradient(#5894e4 -10%,#d7e3fb 10%,#ffffff );">

	<!-- Primary Page Layout
================================================== -->

<div id="wrap" style="height:1500px">
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
						<!-- <li>
						  <a onclick="panduan2()">报名</a>
						</li> -->
						
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
<h3>留言区</h3>
<p>给我们一个机会，我们将证明我们的效率！</p>
</div>

</section><!-- end-full-width -->
	
<section class="container page-content">

<section id="main-content">


<img src="img/ke.jpg" style="margin-left:650px;width:400px;height:600px;margin-top:50px"/>

<div class="commentbox" style="margin-top:-650px">
<div><img src="images/comments-ico.png" /></div>

<div class="commentin">
<%if(person1.contentEquals("小姐姐1号")){ %>
<img src="images/nv1.jpg" />
<%} else if(person1.contentEquals("小姐姐2号")){%>
<img src="images/nv2.jpg" />
<%}else if(person1.contentEquals("小哥哥1号")) {%>
<img src="images/nan1.jpg" />
<%}else{ %>
<img src="images/nan2.jpg" />
<%} %>
<div><%=person1 %> / <span id="show" class="blgdatebox "></span> </div>
<p>给我留言吧</p>
</div><!-- end-commentin  -->
<div class="commentin">

<br class="clear" />
<h4 class="subtitle">我想说....</h4>

<div class="contact-form" align="left">
<form action="blog-single1.jsp" method="post" id="frmContact" />
<input name="username" type="text" class="txbx" value="<%=loginUser.getUsername() %>" readonly/>
<input type="hidden" class="txbx"  name="person" value="<%=person1 %>" /> 
<input type="hidden" name="time" id="time" value="">
<textarea name="saying" cols="" rows="" class="txbx era" placeholder="请输入留言内容" ></textarea><br />
<span id="spanMessage"></span>
<input  type="submit" class="sendbtn" style="width:300px;margin-left:-130px" value="发送"  id="btnSend" />
</form>

</div>
</div><!-- end-commentbox  -->

</section><!-- end-main-conten -->


<br class="clear" />




	
	
	<footer id="footer" align="center" style="width:1161px;margin-left:-101px">
		<div class="row footer-grids pb-md-5 pb-3"  >	
			<div class="col-md-3 col-sm-6 col-6">
				<a href="www.baidu.com"> <img style="width:60px; height:60px;margin-left:-870px;border-radius:100%; overflow:hidden;margin-right:10px;margin-top:30px" src="images/bai.jpg"></img>百度</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6" style="margin-top:-60px">
				<a href="https://www.yahoo.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-left:-370px;" src="images/ya.jpg"></img>雅虎</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2" style="margin-top:-55px;margin-right:-500px;">
				<a href="http://www.google.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-top:-12px;margin-left:274px" src="images/gu.jpg"></img>Google</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2" style="margin-top:-55px;">
				<a href="https://www.sogou.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:-10px;margin-top:-12px;margin-left:200px" src="images/sou.jpg"></img>搜狗</a>
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
<script type="text/javascript"> 
window.onload = function() {  
var time1 = document.getElementById("time");  
var show = document.getElementById("show");
setInterval(function() {   
var time = new Date();   // 程序计时的月从0开始取值后+1   
var m = time.getMonth() + 1;   
var t = time.getFullYear() + "-" + m + "-"     
+ time.getDate() + " " + time.getHours() + ":"     
+ time.getMinutes() + ":" + time.getSeconds();   
time1.value= t;
show.innerHTML=t;
}, 1000); 
};
</script>
	<script type="text/javascript" src="js/latest-twitt.js"></script>
	<script type="text/javascript" src="js/vincie-send.js"></script>

</body>
</html>