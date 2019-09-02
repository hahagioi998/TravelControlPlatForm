<%@page import="java.util.List"%>
<%@page import="Util.DaoFactory"%>
<%@page import="tra.IUserDao"%>
<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

	<!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8" />
	<title>Services - Vincie.web</title>
	<meta name="description" content="" />
	<meta name="author" content="" />

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="css/style.css" />
   

	<!-- JS
  ================================================== -->
   <script type="text/javascript" src="js/jquery.min.js"></script>
	<!-- HTML5 Shiv events -->
   <script type="text/javascript" src="js/modernizr.custom.11889.js"></script>
    <!-- HTML5 Shiv events (end)-->
   <script type="text/javascript" src="js/nav-resp.js"></script>

	<!-- Favicons
  ================================================== -->
	<link rel="shortcut icon" href="images/favicon.ico" />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->
	
	<!-- css files -->
	<link rel="stylesheet" href="css2/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css2/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="css2/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	<style type="text/css">
#fade {
  display:none;
  position:absolute;
  top:0%;
  left:0%;
  width:100%;
  height:100%;
  background-color:black;
  z-index:1001;
  -moz-opacity:0.8;
  opacity:.80;
  filter:alpha(opacity=80);
}
#light{
  display:none;
  position:absolute;
  top:25%;
  left:25%;
  width:50%;
  height:50%;
  padding:16px;
  border:3px solid #b0aef9;
  background-color:white;
  z-index:1002;
  overflow:auto;
}
</style>
<script src="js/jquery-1.8.3.min.js"></script> 
<script src="layer/layer.js"></script>
<script type="text/javascript">
window.onload=function(){
   var linkbt=document.getElementById("linkbt");
   var light=document.getElementById('light');
   var fade=document.getElementById('fade');
   var closebt=document.getElementById("closebt");
   linkbt.onclick=function(){
     light.style.display='block';
     fade.style.display='block';
   }
   closebt.onclick=function(){
     light.style.display='none';
     fade.style.display='none';
   }
}
function panduan(id)
{
      
	  var num=document.getElementById("a").value;
	  if(num==0){
		  layer.confirm('你还未登录，无法进行操作，请先去登录', {icon: 5, title:'提示'}, function(index){
			  window.location.href="index2.jsp";
			  
			  layer.close(index);
			});
	  }
	  else
		  {
	window.location.href=("contact2.jsp?place="+id);
		  }
}
</script>
	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">
	<!-- //web-fonts -->
    </head>
<%

User loginUser=new User();
loginUser=(User)session.getAttribute("loginUser");
int a=0;

if(loginUser!=null)
{
	a=1;
}


%>

<body style="background: linear-gradient(#5894e4 -10%,#d7e3fb 10%,#ffffff );">

<div class="light"  id="light" style="margin-top:-450px;height:550px;width:500px;margin-left:150px;">

<input type="hidden" id="a" value="<%=a%>">
<div style="margin-left:190px;margin-top:40px"><h1>lOGIN</h1></div>
<form action="index1.jsp" onsubmit="return tijiao()" style="margin-bottom: 0px;" >
<input style="margin-top:50px;margin-left:80px;height:50px;width:300px" placeholder="请输入用户名" type="text" id="username" name="username" onfocus="userGetFocus()" onblur="userLoseFocus()"/>
<span id="user_span" style="margin-left: 80px;"></span>
<input style="height:50px;width:300px;margin-left:80px;margin-top: 20px;"  placeholder="请输入密码" type="password" id="password" name="password"onfocus="passGetFocus()" onblur="passLoseFocus()"/>
<span id="pass_span" style=" margin-left: 80px;"></span>
<p style="margin-left: 80px;margin-top: 30px;font-size:15px"><a>忘记密码？</a></p>
<p style="margin-left: 225px;margin-top:-20px; font-size:15px">还没有账号？<a href="rej.jsp" target="_blank" >立即注册</a></p>
<input type="submit" style="width:300px;margin-left: 80px;margin-top:20px;" value="登录"/>
</form>
<a style="margin-top:-200px;margin-left: 315px;" href="javascript:void(0)" id="closebt">关闭窗口</a>
</div>

<div id="fade" >
</div>

	<!-- Primary Page Layout
	================================================== -->

<div id="wrap" style="height:2080px">
<header id="header" class="container">
<div class="top-link" style="margin-right:100px;width: 200px;">
<% if(a==0){%>
<a  href="javascript:void(0)" id="linkbt" style="
    margin-left: 35px;
" > 登录/注册</a>
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
				    <a onclick="panduan()">报名</a>
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
<div class="page-subtitle" style="height:160px"> 
<h3>Services</h3>
<p>Here's what we're working on and
thinking about at Vincie.web</p>
</div>

</section><!-- end-full-width -->
	

<section class="container page-content">
<hr />
<h2 style="margin-left:250px;margin-top:50px">给我们一个机会，我们将证明我们的效率！ </h2>
<br />

	
				
				
				
			<div class="clear"></div>
	<hr />
		
			

<!--/pricing -->
	<section class="team py-5" id="pricing">
		<div class="container-fluid p-lg-5 p-sm-3">
		<h2 class="heading text-center mb-sm-5 mb-4">近期计划航程</h2>
			<div class="inner-sec-w3ls-agileits">
				<div class="gallery_grids">
					<div class="card-desk text-center">
						<div class="row prime">
							<div class="col-lg-3 col-sm-6 price-main-info card box-shadow">
								<div class="card-header" style="background-image : url(./images/tian1.jpg);background-repeat : repeat-y">
									<h4>天津
										<span>中西合璧</span>
									</h4>
								</div>
								<div class="card-body">
									<h5 class="card-title pricing-card-title">
										<span class="align-top">￥</span>150
										<small class="text-muted">/人 2 days</small>
									</h5>
									<ul class="list-unstyled mt-3 mb-4">
										
										<li class="py-2 border-bottom">意大利风情街:
近代意大利在国外保留最为完整的历史街区，天津热门景点</li>
										<li class="py-2">天津之眼:坐落在天津市红桥区海河畔
世界上唯一建在桥上的摩天轮 ，天津之眼是世界上唯一一个桥上瞰景摩天轮，是天津的地标之一。

</li>
										<li class="py-2">车接车送，内含宾馆价钱。

</li>
									</ul>
									<a onclick="panduan('天津')" class="btn btn-sm price mt-3" style="margn-top:140px">Contact</a>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6 mt-sm-0 mt-5 price-main-info card box-shadow">
								<div class="card-header" style="background-image : url(./images/beidai.jpg);background-repeat : repeat-y">
									<h4>秦皇岛
										<span>宜居宜游</span>
									</h4>
								</div>
								<div class="card-body">
									<h5 class="card-title pricing-card-title">
										<span class="align-top">$</span>200
										<small class="text-muted">/人 3 days</small>
									</h5>
									<ul class="list-unstyled mt-3 mb-4">
										<li class="py-2 border-bottom">南戴河：新景观跨海索道供游人上岛和海上观光所用，全长1039米，为双人半封闭式、运行平稳，安全可靠</li>
										<li class="py-2 border-bottom">北戴河：南临渤海，北靠联峰山。拥有避暑胜地北戴河、历史名城山海关和天然不冻良港而驰名天下。</li>
										<li class="py-2">车接车送，内含旅游期间宾馆价钱。</li>
									</ul>
									<a onclick="panduan('秦皇岛')" class="btn btn-sm price mt-3">Contact</a>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6 mt-lg-0 mt-5 price-main-info card box-shadow">
								<div class="card-header" style="background-image : url(./images/xian.jpg);background-repeat : repeat-y">
									<h4>西安
										<span>闯荡江湖</span>
									</h4>
								</div>
								<div class="card-body">
									<h5 class="card-title pricing-card-title">
										<span class="align-top">$</span>259
										<small class="text-muted">/人 2 days</small>
									</h5>
									<ul class="list-unstyled mt-3 mb-4">
										<li class="py-2 border-bottom">秦始皇陵兵马俑：鬼斧神工,绝无仅有,雄伟壮观,气势磅礴, 个性鲜明,惟妙惟肖,举世无双,神态自若。</li>
										<li class="py-2 border-bottom">西岳华山：为中国著名的五岳之一，中华文明的发祥地，“中华”和“华夏”之“华”，就源于华山。</li>
											<li class="py-2">车接车送，内含宾馆价钱。

</li>
									</ul>
									<a onclick="panduan('西安')" class="btn btn-sm price mt-3">Contact</a>
								</div>
							</div>
							<div class="col-lg-3 col-sm-6 mt-lg-0 mt-5 price-main-info card box-shadow">
								<div class="card-header" style="background-image : url(./images/jinan.jpg);background-repeat : repeat-y">
									<h4>济南
										<span>冰天雪地</span>
									</h4>
								</div>
								<div class="card-body" >
									<h5 class="card-title pricing-card-title">
										<span class="align-top">$</span>300
										<small class="text-muted">/人 2 days</small>
									</h5>
									<ul class="list-unstyled mt-3 mb-4">
										<li class="py-2 border-bottom">趵突泉：面积158亩，是以泉为主的国家AAAAA级旅游景区特色园林，国家首批重点公园。</li>
										<li class="py-2 border-bottom">济南方特：全园分为八大主题区域，包含二十九大特有项目，1000余个文化小类，第四代高科技主题公园</li>
										<li class="py-2">车接车送，内含宾馆价钱。

</li>
									</ul>
									<a onclick="panduan('济南')" class="btn btn-sm price mt-3">Contact</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!--//pricing -->












<!-- footer -->
<footer class="py-5" style="width:1161px;height:356px;margin-left:-26px;">
	<div class="container py-md-3">
		<div class="row footer-grids pb-md-5 pb-3">	
			<div class="col-md-3 col-sm-6 col-6">
				<a href="https://www.baidu.com"> <img style="width:60px; height:60px; margin-left:70px;border-radius:100%; overflow:hidden;margin-right:10px;margin-top:-12px" src="images/bai.jpg"></img>百度</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6">
				<a href="https://www.yahoo.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:10px;margin-top:-12px" src="images/ya.jpg"></img>雅虎</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2">
				<a href="http://www.google.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:10px;margin-top:-12px" src="images/gu.jpg"></img>Google</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2">
				<a href="https://www.sogou.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:10px;margin-top:-12px" src="images/sou.jpg"></img>搜狗</a>
			</div>
		</div>
		
		<div class="subscribe-grid text-center">
			<p class="para three mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at placerat ante. Praesent nulla nunc, pretium dapibus efficitur in, auctor eget elit. Lorem ipsum dolor sit amet </p>
		
		</div>
	</div>
</div>
</footer>

<!-- //footer -->

</div><!-- end-wrap -->
<!-- End Document
================================================== -->
<% 

IUserDao userDao=DaoFactory.getDaoImpl();
List<User> users =userDao.find_users();
int i=0;
for(User user :users)
{
	i++;
%>
<input type="hidden" name="users" value="<%=user.getUsername()%>"></input>
<%
}
%>
<input type="hidden" id="length" name="length" value="<%=i%>"></input>
<script type="text/javascript">
//准备好body中的内容
//使用用户聚焦的函数

var le=document.getElementById("length").value;
var no= [];
no=document.getElementsByName("users");
var flag=false;
function userGetFocus(){
//获取userspan的Id
var spanId=document.getElementById("user_span");
//给span中添加内容
spanId.innerHTML="<font color='blue' size='2'>请输入3~19位的用户名</font>"
}
//使用用户失去焦点的函数
function userLoseFocus(){
//这里先获取input文本框 的内容

var user_Name=document.getElementById("username");
var len =user_Name.value.length;

if(len==0){
var spanId=document.getElementById("user_span");
spanId.innerHTML="<font color='red' size='2'>*请输入3~19位的用户名</font>";
return false;
}else if(len<3 ||len>19){
var spanId=document.getElementById("user_span");
spanId.innerHTML="<font color='red' size='2'>*您输入的用户名不符合规范，请重新输入！</font>";
return false;
}else{


var spanId=document.getElementById("user_span");

for (i=0;i<le;i++)
{
  if(no[i].value==(user_Name.value))
   {
      flag=true;
    }
}
if(flag)
{
	spanId.innerHTML="<font color='blue' size='2'>该用户名合法！</font>";
	flag=false;
	return true;
}
else
{
	spanId.innerHTML="<font color='red' size='2'>该用户名不存在！</font>";
	flag=false;
	return false;
}


} 
}//函数

//定义password的聚焦函数
function passGetFocus(){
var passSpan=document.getElementById("pass_span");
passSpan.innerHTML="<font size='2' color ='blue'>请输入8~19位的密码,至少包含字母、数字、特殊字符中两种</font>";
}
//定义一个password的失焦的函数
function passLoseFocus(){
var pass_num=document.getElementById("password");
var pass_len=pass_num.value.length;
//判断
if(pass_len==0){
var passSpan=document.getElementById("pass_span");
passSpan.innerHTML="<font size='2' color ='red'>*密码不能为空,请输入8~19位密码</font>";
return false;
}else if(pass_len<8 || pass_len>19){
var passSpan=document.getElementById("pass_span");
passSpan.innerHTML="<font size='2' color='red'>*请输入8~19位密码</font>";
return false;
}else{

var regPasswordSpecial = /[~!@#%&=;':",./<>_\}\]\-\$\(\)\*\+\.\[\?\\\^\{\|]/;
var regPasswordAlpha = /[a-zA-Z]/;
var regPasswordNum = /[0-9]/;
var password;
function atLeastTwo(password) {
  var a = regPasswordSpecial.test(password) ? 1 : 0;
  var b = regPasswordAlpha.test(password) ? 1 : 0;
  var c = regPasswordNum.test(password) ? 1 : 0;
  return a + b + c;

}
if(atLeastTwo(pass_num.value) < 2){
 var passSpan=document.getElementById("pass_span");
  passSpan.innerHTML="<font color='red' size='2'>密码中至少包含字母、数字、特殊字符的两种</font>";
     return false;
 }else{
var passSpan=document.getElementById("pass_span");
passSpan.innerHTML="<font color='blue' size='2'>密码格式正确</font>";
return true;
     }

}
}
function tijiao(){
var user_result=userLoseFocus();
var pass_result=passLoseFocus();
if(user_result && pass_result ){
return true;
}else{
return false;
} 
}
</script>
	<script type="text/javascript" src="js/latest-twitt.js"></script>
	<script type="text/javascript" src="js/vincie-send.js"></script>
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->
	
	<!-- start-smoth-scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->
	

</body>
</html>