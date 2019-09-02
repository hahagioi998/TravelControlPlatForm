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
	<title>Home - Vincie.web</title>
	<meta name="description" content="" />
	<meta name="author" content="" />

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="css/style.css" />



	<link rel="stylesheet" href="css1/animate.css">
	<link rel="stylesheet" href="css1/font-awesome.min.css">
	<link rel="stylesheet" href="css1/templatemo-style.css">

	<!-- jQuery -->
	<script src="js/jquery-1.11.0.min.js"></script>
	<script src="js/jquery-migrate-1.2.1.min.js"></script>


	<link href="css1/css_whir.css" rel="stylesheet" type="text/css" />
<script src="Scripts/jquery-1.11.1.min.js" type="text/javascript"></script>
<script src="Scripts/tab.js" type="text/javascript"></script>
	<!-- Plugins -->
	<script src="js/bootstrap.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/custom.js"></script>

	<!-- Google Map -->
<script type="text/javascript" language="javascript">
  var nav = '1'
</script>
<script language="javascript" type="text/javascript">
 try{
 document.getElementById("navId" + nav).className= "acur";
 }catch(ex){}
</script>
<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	
	 
	<!--// Meta tag Keywords -->
	
	
	<!-- pop up box -->
	<link href="css2/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //pop up box -->

	<link rel="stylesheet" href="css2/jquery.desoslide.css">

	<!-- css files -->
	<link rel="stylesheet" href="css2/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css2/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="css2/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<link rel="stylesheet" href="css/jquery-ui.css" />
	<!-- web-fonts -->
	<link href="http://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext" rel="stylesheet">

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
	  /* var tit=document.getElementById("tit").innerText;
	  alert(tit); */
	  if(num==0){
		  layer.confirm('你还未登录，无法留言，请先去登录', {icon: 5, title:'提示'}, function(index){
			  window.location.href="index2.jsp";
			  
			  layer.close(index);
			});
		  /* layer.confirm('你还未登录，无法留言，请先去登录' {
			  btn: ['确认','取消'] //按钮
			}, function(){
			  window.location.href="index2.jsp";
			}, function(){
			 window.location.href=("blog-single.jsp?person=");
			});
			if(confirm("你还未登录，无法留言，请先去登录"))
				{
				window.location.href="index2.jsp";
				} */
	  }
	  else
		  {
	window.location.href=("blog-single.jsp?person="+id);
		  }
}

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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<%

User loginUser=new User();
loginUser=(User)session.getAttribute("loginUser");
int a=0;

if(loginUser!=null)
{
	a=1;
}


%>

<body style="background: linear-gradient(#2626fc -9%,#5894e4 4%,#d7e3fb 10%,#ffffff);">
<!-- blue -5%,#5894e4 4%,#d7e3fb 10%,#ffffff --> 


<div class="light"  id="light" style="margin-top:-450px;height:500px;width:500px;margin-left:150px;">

<input type="hidden" id="a" value="<%=a%>">
<div style="margin-left:190px;margin-top:40px"><h1>lOGIN</h1></div>
<form action="index1.jsp" onsubmit="return tijiao()" style="margin-bottom: 0px;" >
<input style="margin-top:50px;margin-left:80px;height:50px;width:300px" placeholder="请输入用户名" type="text" id="username" name="username" onfocus="userGetFocus()" onblur="userLoseFocus()"/>
<span id="user_span" style="margin-left: 80px;"></span>
<input style="height:50px;width:300px;margin-left:80px;margin-top: 20px;"  placeholder="请输入密码" type="password" id="password" name="password"onfocus="passGetFocus()" onblur="passLoseFocus()"/>
<span id="pass_span" style=" margin-left: 80px;"></span>
<p style="margin-left: 80px;margin-top: 30px;"><a>忘记密码？</a></p>
<p style="margin-left: 255px;margin-top:-20px;">还没有账号？<a href="rej.jsp" target="_blank" >立即注册</a></p>
<input type="submit" style="width:300px;margin-left: 80px;margin-top:20px;" value="登录"/>
</form>
<a style="margin-top:-200px;margin-left: 330px;" href="javascript:void(0)" id="closebt">关闭窗口</a>
</div>

<div id="fade" style="height:2610px">
</div>

	<!-- Primary Page Layout
	================================================== -->

<div id="wrap" style="height:2600px">
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
<section id="full-width" style="height:2000px">

<div class="theme-default">

            <div id="slider" class="nivoSlider">
                <img src="images/lv9.jpg"  title="#htmlcaption" />
                <img src="images/lv4.jpg"  title="#htmlcaption2" />
               <img src="images/lv7.jpg" title="#htmlcaption3" />
                <img src="images/lv3.jpg" title="#htmlcaption4" />
      </div>
				            <div id="htmlcaption" class="nivo-html-caption">
                          <h2>Modern Business Template </h2>       </div>
						   <div id="htmlcaption2" class="nivo-html-caption">
                          <h2>Creative & Clean Design </h2>       </div>
						   <div id="htmlcaption3" class="nivo-html-caption">
                          <h2> Responsive & grid based  </h2>       </div>
						  
    </div><!-- end-slider -->



<section class="container home-content" style="margin-top:-20px;background-color: #f1f2f3;width:2000px">

		<br class="clear" style="background-color:#ffffff"  />	
		<h4 class="subtitle r1dd">我们？</h4>
				<div style="margin-left:100px" class="one-third column">
				<p>
						<img src="image/ibox1.png" />
 天津两日游来啦！！！DayI：早7:00石家庄各大高校门口集合出发，大巴上相互认识一路欢声笑语去天津12:00左右到达天津(五个小时左右车程)豪华大巴，12:00左右吃午饭(领队会推荐好吃不贵的天津包子，老字号，深藏不漏的那种)， 吃完饭大家自由行，去意大利风景区，古文化衡，鼓楼，天津之眼，海河边等<p />
		</div>
						<div class="one-third column">
				<p>
						<img src="image/ibox2.png" />
 往返大巴，行车安全是最重要的，戈耳工旅游景点的行程时间大约控制在5-7个小时，而且车上已购买人身意外险，小可爱们可以放心啦！ 我们会为你们推介当地的小吃，好吃不贵！报名随报随退，大家不必担心这个问题，出行安全也是我们最重视的呢.
 <p />
		</div>
						<div class="one-third column">
				<p>
						<img src="image/ibox3.png" />
 我们会为你们推介当地的小吃，好吃不贵！我们会带你们游玩当地的名胜古迹，别有趣味！我们会为你们准备舒适的宾馆，舒适安心！报名随报随退，大家不必担心这个问题，出行安全也是我们最重视的呢！
 <p />
		</div>
	<div class="clear"></div>
		<h4 class="subtitle">热门景点</h4>
		
		<div class="four columns" style="margin-left:90px;">
		<a class="portfolio-item" href="./infor.jsp">
		<img src="./images/tian1.jpg" />		
			<h5> 天津 </h5>		
			<em>中西合璧</em>
			</a>
		</div>
		
		<div class="four columns">
		<a class="portfolio-item" href="https://baike.baidu.com/item/%E7%A7%A6%E7%9A%87%E5%B2%9B/180698?fr=aladdin">
		<img style="width:200px;height:133.9px" src="./images/beidai.jpg" />		
			<h5> 秦皇岛 </h5>		
			<em>宜居宜游</em>
			</a>
		</div>
		
		<div class="four columns">
		<a class="portfolio-item" href="https://baike.baidu.com/item/%E8%A5%BF%E5%AE%89/121614?fr=aladdin">
		<img src="./images/xian.jpg" />		
			<h5> 西安</h5>		
			<em>闯荡江湖</em>
			</a>
		</div>
		
		<div class="four columns">
		<a class="portfolio-item" href="https://baike.baidu.com/item/%E6%B5%8E%E5%8D%97/135066?fr=aladdin">
		<img style="width:200px;height:133.9px" src="./images/jinan.jpg" />		
			<h5> 济南 </h5>		
			<em>冰天动地</em>
			</a>
		</div>
<div class="clear"></div>
<div class="eight columns">
<h4 class="subtitle">Our 足迹</h4>
<div class="our-clients">


<!-- PORTFOLIO -->
	<div class="fluid-container" id="portfolio">

		<div  style="height:250px;width:1100px;margin-top:20px">
			<div class="row portfolio-holder">
				<article class="portfolio col-md-4 col-sm-6 col-xs-12">
					<div class="entry-thumbnail">
						<img src="img/portfolio/zu2.jpg" alt="">
					</div>
					<div class="portfolio-overlay first">
						<a href="#"><h4 class="entry-title">古城西安</h4></a>
					</div>
				</article>
				<article class="portfolio col-md-4 col-sm-6 col-xs-12">
					<div class="entry-thumbnail">
						<img style="width:372.66px;height:228.59px" src="img/portfolio/zu3.jpg" alt="">
					</div>
					<div class="portfolio-overlay second">
						<a href="#"><h4 class="entry-title">胜地甘肃</h4></a>
					</div>
				</article>
				<article class="portfolio col-md-4 col-sm-6 col-xs-12">
					<div class="entry-thumbnail">
						<img src="img/portfolio/zu4.jpg" alt="">
					</div>
					<div class="portfolio-overlay third">
						<a href="#"><h4 class="entry-title">古城西安</h4></a>
					</div>
				</article>
				<article class="portfolio col-md-4 col-sm-6 col-xs-12">
					<div class="entry-thumbnail">
						<img src="img/portfolio/zu5.jpg" alt="">
					</div>
					<div class="portfolio-overlay fourth">
						<a href="#"><h4 class="entry-title">泰山之旅</h4></a>
					</div>
				</article>
				<article class="portfolio col-md-4 col-sm-6 col-xs-12">
					<div class="entry-thumbnail">
						<img src="img/portfolio/zu7.jpg" alt="">
					</div>
					<div class="portfolio-overlay fifth">
						<a href="#"><h4 class="entry-title">古城西安</h4></a>
					</div>
				</article>
				<article class="portfolio col-md-4 col-sm-6 col-xs-12">
					<div class="entry-thumbnail">
						<img src="img/portfolio/zu8.jpg" alt="">
					</div>
					<div class="portfolio-overlay sixth">
						<a href="#"><h4 class="entry-title">古城西安</h4></a>
					</div>
				</article>
			</div>
		</div>
	</div>




	
<div class="team py-5" style="margin-top:160px">
	   <div class="agile_dot_info two" >
		<div class="container" >
		<br class="clear"  />	
		<h4 class="subtitle r1dd">留言吧</h4>
			<div class="row agileits_team_grids" style="height:400px;width:980px;margin-left:50px">
				<div class="col-lg-3 col-sm-6 agileits_team_grid" >
					<div class="agileits_team_grid_figure">
						<img src="images/nv1.jpg" alt=" " class="img-responsive" style="margin-left:50px"/>
					</div>
					
					<div class="clearfix"> </div>
					
					<h4 >小姐姐1号 <span><a  onclick="panduan('小姐姐1号')">留言</a></span></h4><!-- href="blog-single.html" -->
					<p>Morbi non elit sed neque init rhoncus maximus ac enim.</p>
				</div>
				<div class="col-lg-3 col-sm-6 agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="images/nv2.jpg" alt=" " class="img-responsive" style="margin-left:50px" />
					</div>
					
					<div class="clearfix"> </div>
					<h4 >小姐姐2号 <span><a  onclick="panduan('小姐姐2号')">留言</a>></span></h4>
					<p>Morbi non elit sed neque init rhoncus maximus ac enim.</p>
				</div>
				<div class="col-lg-3 col-sm-6 agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="images/nan1.jpg" alt=" " class="img-responsive" style="margin-left:50px" />
					</div>
					
					<div class="clearfix"> </div>
					<h4  id="tit">小哥哥1号  <span><a onclick="panduan('小哥哥1号')">留言</a></span></h4>
					<p>Morbi non elit sed neque init rhoncus maximus ac enim.</p>
				</div>
				<div class="col-lg-3 col-sm-6 agileits_team_grid">
					<div class="agileits_team_grid_figure">
						<img src="images/nan2.jpg" alt=" " class="img-responsive" style="margin-left:50px" />
					</div>
					<div class="agileits_team_grid_figure_social">
						
					</div>
					<div class="clearfix"> </div>
					<h4>小哥哥2号 <span><a  onclick="panduan('小哥哥2号')">留言</a></span></h4>
					<p>Morbi non elit sed neque init rhoncus maximus ac enim.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //team -->
	
<!-- footer -->
<footer class="py-5" style="width:1155px;height:356px;margin-left:-33px;">
	<div class="container py-md-3">
		<div class="row footer-grids pb-md-5 pb-3">	
			<div class="col-md-3 col-sm-6 col-6">
				<a href="https://www.baidu.com/"> <img style="width:60px; height:60px; margin-left:70px;border-radius:100%; overflow:hidden;margin-right:10px;margin-top:-12px" src="images/bai.jpg"></img>百度</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6">
				<a href="https://www.yahoo.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:10px;margin-top:-12px" src="images/ya.jpg"></img>雅虎</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2">
				<a href="http://www.google.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:10px;margin-top:-12px" src="images/gu.jpg"></img>Google</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2">
				<a href="http://www.sogou.com/?hdq=sogou-wsse-257deb66f5366aab"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:10px;margin-top:-12px" src="images/sou.jpg"></img>搜狗</a>
			</div>
		</div>
		
		<div class="subscribe-grid text-center">
			<p class="para three mt-4">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at placerat ante. Praesent nulla nunc, pretium dapibus efficitur in, auctor eget elit. Lorem ipsum dolor sit amet </p>
		
		</div>
	</div>
</div>
</footer>

<!-- //footer -->



<!-- js-scripts -->		

	<!-- js -->
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
	

   
   <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    </script>
	<script type="text/javascript" src="js/latest-twitt.js"></script>
	<script type="text/javascript" src="js/vincie-send.js"></script>

</body>
</html>