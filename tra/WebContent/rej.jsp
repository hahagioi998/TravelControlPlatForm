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
	<title>注册页面 - Vincie.web</title>
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


%>
<body style="background: linear-gradient(#5894e4 -10%,#d7e3fb 10%,#ffffff );">


	<!-- Primary Page Layout
================================================== -->

<div id="wrap" style="height:2600px">
<header id="header" class="container">
<div class="top-link" style="margin-right:100px;left: 800px;">
<% if(a==0){%>
<a href="javascript:void(0)" id="linkbt">登录/注册</a>
<%}else{ %>
<span>你已登录</span>
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
<h3>注册</h3>
<p>Use the contact form to get in touch if you’re looking to hire us</p>
</div>

</section><!-- end-full-width -->
	

<section  class="container page-content">

<div class="eight columns"  >
<h2>填写注册信息！</h2>
<br />

<hr />
<h4>温馨提示</h4>
<br />
<p><img src="images/social_address.png" align="left" />&nbsp;<strong>密码:</strong></p>
<p>
保证八位以上！！！</p>
<br />
<p><img src="images/social_phone.png" align="left" />&nbsp;&nbsp;<strong>用户名:</strong></p>
<p>
输空格会自动去掉哦<br />
</p>
<br />


</div>

<div class="eight columns" >
<div class="contact-form" align="left">
<div class="clr"></div><br />
<form action="rej1.jsp" onsubmit="return tijiao()" >
<input class="txbx"  placeholder="请输入用户名" type="text" id="username" name="username" onfocus="userGetFocus()" onblur="userLoseFocus()"/>
<span id="user_span" style="margin-left: 10px;"></span>
<input class="txbx"  placeholder="请输入密码" type="password" id="password" name="password"onfocus="passGetFocus()" onblur="passLoseFocus()"/>
<span id="pass_span" style=" margin-left: 10px;"></span>
<input id="passwordConfirm" name="passwordConfirm" type="password" class="txbx"  placeholder="请再次确认密码"  onfocus="pass2GetFocus()" onblur="pass2LoseFocus()"/>
<span id="pass_span2" style=" margin-left: 10px;"></span><br/>
<input name="" type="submit" class="sendbtn" value="提交" id="btnSend" style="width:300px;margin-top: 30px;align:center" />
</form>
</div><!-- end-contact-form  -->

</div>

<div class="white-space"></div>

  </section><!-- container -->
  <!-- END-Google Map Section -->
	

	
	
<footer id="footer" align="center">
			<div class="row footer-grids pb-md-5 pb-3" >	
			<div class="col-md-3 col-sm-6 col-6">
				<a href="https://www.baidu.com/"> <img style="width:60px; height:60px;margin-left:-870px;border-radius:100%; overflow:hidden;margin-right:10px;margin-top:30px" src="images/bai.jpg"></img>百度</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6" style="margin-top:-60px">
				<a href="https://www.yahoo.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-left:-370px;" src="images/ya.jpg"></img>雅虎</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2" style="margin-top:-55px;margin-right:-500px;">
				<a href="https://www.google.com"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-top:-12px;margin-left:280px" src="images/gu.jpg"></img>Google</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2" style="margin-top:-55px;">
				<a href="https://www.sogou.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:-10px;margin-top:-12px;margin-left:200px" src="images/sou.jpg"></img>搜狗</a>
			</div>
		</div>
		<hr/>
		<div class="subscribe-grid text-center" style="height:126px;">
			<p class="para three mt-4" style="margin-top:50px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at placerat ante. Praesent nulla nunc, pretium dapibus efficitur in</p><p> auctor eget elit. Lorem ipsum dolor sit amet </p>
		
		</div>
	</div>
</div>
  </div><!-- end-footbot -->
</footer>
<!-- end-footer -->

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
spanId.innerHTML="<font color='blue' size='4'>请输入3~19位的用户名</font>"
}
//使用用户失去焦点的函数
function userLoseFocus(){
//这里先获取input文本框 的内容

var user_Name=document.getElementById("username");
var len =user_Name.value.length;

if(len==0){
var spanId=document.getElementById("user_span");
spanId.innerHTML="<font color='red' size='4'>*请输入3~19位的用户名</font>";
return false;
}else if(len<3 ||len>19){
var spanId=document.getElementById("user_span");
spanId.innerHTML="<font color='red' size='4'>*您输入的用户名不符合规范，请重新输入！</font>";
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
	spanId.innerHTML="<font color='red' size='4'>该用户名已存在！</font>";
	flag=false;
	return false;
}
else
{
	spanId.innerHTML="<font color='blue' size='4'>该用户名合法！</font>";
	flag=false;
	return true;
}


} 
}//函数



//定义password的聚焦函数
function passGetFocus(){
var passSpan=document.getElementById("pass_span");
passSpan.innerHTML="<font size='4' color ='blue'>请输入8~19位的密码,至少包含字母、数字、特殊字符中两种</font>";
}
//定义一个password的失焦的函数
function passLoseFocus(){
var pass_num=document.getElementById("password");
var pass_len=pass_num.value.length;
//判断
if(pass_len==0){
var passSpan=document.getElementById("pass_span");
passSpan.innerHTML="<font size='4' color ='red'>*密码不能为空,请输入8~19位密码</font>";
return false;
}else if(pass_len<8 || pass_len>19){
var passSpan=document.getElementById("pass_span");
passSpan.innerHTML="<font size='4' color='red'>*请输入8~19位密码</font>";
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
  passSpan.innerHTML="<font color='red' size='4'>密码中至少包含字母、数字、特殊字符的两种</font>";
     return false;
 }else{
var passSpan=document.getElementById("pass_span");
passSpan.innerHTML="<font color='blue' size='4'>密码格式正确</font>";
return true;
     }

}
}


//定义password的聚焦函数
function pass2GetFocus(){
	
var passSpan=document.getElementById("pass_span2");
passSpan.innerHTML="<font size='4' color ='blue'>请输入8~19位的密码,至少包含字母、数字、特殊字符中两种</font>";
}
function pass2LoseFocus(){
	var pass_num=document.getElementById("passwordConfirm");
	var pass_num2=document.getElementById("password");
	var pass_len=pass_num.value.length;
	
	//判断
	if(pass_len==0){
	var passSpan=document.getElementById("pass_span2");
	passSpan.innerHTML="<font size='4' color ='red'>*密码不能为空,请输入8~19位密码</font>";
	return false;
	}else if(pass_len<8 || pass_len>19){
	var passSpan=document.getElementById("pass_span2");
	passSpan.innerHTML="<font size='4' color='red'>*请输入8~19位密码</font>";
	return false;
	}else{
       if(pass_num.value==pass_num2.value)
    	   {
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
	 var passSpan=document.getElementById("pass_span2");
	  passSpan.innerHTML="<font color='red' size='4'>密码中至少包含字母、数字、特殊字符的两种</font>";
	     return false;
	 }else{
	var passSpan=document.getElementById("pass_span2");
	passSpan.innerHTML="<font color='blue' size='4'>密码格式正确</font>";
	return true;
	     }

	}
	else{
		var passSpan=document.getElementById("pass_span2");
		passSpan.innerHTML="<font color='red' size='4'>输出密码不一致</font>";
		return false;
	}
	}
	
	}





function tijiao(){
var user_result=userLoseFocus();
var pass_result=passLoseFocus();
var pass_result2=pass2LoseFocus();

if(user_result && pass_result && pass_result2 ){

return true;
}else{
	
return false;
} 
}
</script>
	<script type="text/javascript" src="js/latest-twitt.js"></script>
	<script type="text/javascript" src="js/vincie-send.js"></script>

</body>
</html>