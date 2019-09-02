<%@page import="tra.UserDaoImpl"%>
<%@page import="model.Scene"%>
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
	<title>Contact - Vincie.web</title>
	<meta name="description" content="" />
	<meta name="author" content="" />

	<!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

	<!-- CSS
  ================================================== -->
	<link rel="stylesheet" href="css/style.css" type="text/css" />
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
</script>
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
<script type="text/javascript">
function person(id)
{
	 if(id=="个人")
		 {
		 document.getElementById("ADDperson").value=1;
		 document.getElementById("ADDperson").readOnly=true;
		 }
	 else{
		 if(document.getElementById("ADDperson").value==null)
			 {
		 document.getElementById("ADDperson").value=5;
	 }
		 document.getElementById("ADDperson").readOnly=false;
	 }
	
}
</script>
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

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<%

User loginUser=new User();
loginUser=(User)session.getAttribute("loginUser");
int a=0;

if(loginUser!=null)
{
	a=1;
}

String place1=null;
if(request.getParameter("place")!=null)
{
	session.setAttribute("place", request.getParameter("place"));
	place1= request.getParameter("place");
}
else
{
	place1=(String)session.getAttribute("place");
}

Scene scene=new Scene();
UserDaoImpl userDaoImpl=new UserDaoImpl();
scene=userDaoImpl.find_Scene(place1);
int ps=scene.getS_number()-scene.getR_number();
%>

<body style="background: linear-gradient(#5894e4 -10%,#d7e3fb 10%,#ffffff );">


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

<div id="fade" >
</div>

	<!-- Primary Page Layout
	================================================== -->

<div id="wrap" style="height:1780px">
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
<section id="full-width">
<img src="images/lv21.jpg" class="full-width" />
<div class="page-subtitle"> 
<h3>报名</h3>
<p>Use the contact form to get in touch if you’re looking to hire us</p>
</div>

</section><!-- end-full-width -->
	

<section class="container page-content">

<div class="eight columns">
<h2>给我们一个机会，我们将证明我们的效率！</h2>
<br />

<hr />
<h4>Contact Information:</h4>
<br />
<p><img src="images/social_address.png" align="left" />&nbsp;<strong>Address:</strong></p>
<p>
No.28 - 63739 street lorem ipsum City, Country</p>
<br />
<p><img src="images/social_phone.png" align="left" />&nbsp;&nbsp;<strong>Phone:</strong></p>
<p>
+ 1 (234) 567 8901<br />
</p>
<br />
<p><img src="images/social_mail.png" align="left" />&nbsp;<strong>Email:</strong></p>
<p>
support@yoursite.com<br />
</p>
<h4 style="color:red ;font-size:20px">
该景点开团人数为<%=scene.getS_number() %>,可报名人数所剩数量：<%=ps %><br />
</h4>
</div>

<div class="eight columns">
<div class="contact-form"  align="left">
<div class="clr"></div><br />

<form action="Do_contact2.jsp" onsubmit="return tijiao()"><!-- id="frmContact" -->
  
  <span style="font-size:18px">  申请事项：	<input style="width:16px;height:16px" type="radio"   id="u_Type" name="u_Type" value="个人" onfocus="u_TypeGetFocus()" onblur="u_TypeLoseFocus()" onclick="person('个人')"/>个人     
  <input style="width:16px;height:16px" type="radio" id="u_Type" name="u_Type" value="团队" onfocus="u_TypeGetFocus()" onblur="u_TypeLoseFocus()" onclick="person('团队')"/>团队
	</span>
	<br/>   
 <span id="u_Type_span"></span><br/>
 <input type="text" id="ADDperson" class="txbx" name="ADDperson" placeholder="请输入报名人数(团队默认为5人)" onfocus="ADDpersonGetFocus()" onblur="ADDpersonLoseFocus()" >
 <span id="ADDperson_span"></span><br/>
 <input type="hidden" id="place" name="place" value="<%=place1%>">
  <input  type="hidden" class="txbx" id="username" name="username" value="<%=loginUser.getUsername() %>" />
<input type="hidden" name="time" id="time" value="">
<input  type="text" class="txbx" id="u_Name" name="u_Name" placeholder="负责人姓名/个人姓名"  onfocus="u_NameGetFocus()" onblur="u_NameLoseFocus()"/>
<span id="u_Name_span"></span><br/>
<input type="text" class="txbx" id="telephone"  name="telephone" placeholder="您的电话" onfocus="telephoneGetFocus()"  onblur="telephoneLoseFocus()"/>
<span id="telephone_span"></span><br/>
<input  type="text" class="txbx" name="QQ"  id="QQ" placeholder="您的QQ" onfocus="QQGetFocus()"  onblur="QQLoseFocus()"/>
<span id="QQ_span"></span><br/>
<input  type="text" class="txbx" name="Class1" id="Class1" placeholder="您的班级(例:信1605-2)" onfocus="Class1GetFocus()"  onblur="Class1LoseFocus()"/>
<span id="Class1_span"></span><br/>
<textarea  cols="" rows="" class="txbx era" name="Other" placeholder="备注..."></textarea><br />
<span id="spanMessage"></span>
<input type="submit" class="sendbtn" value="Send Message" id="btnSend"/>


</div>
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
				<a href="http://www.google.com/"> <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-top:-12px;margin-left:280px" src="images/gu.jpg"></img>Google</a>
			</div>
			<div class="col-md-3 col-sm-6 col-6 mt-md-0 mt-2" style="margin-top:-55px;">
				<a href="http://www.sogou.com/?hdq=sogou-wsse-257deb66f5366aab">  <img style="width:60px; height:60px; border-radius:100%; overflow:hidden;margin-right:-10px;margin-top:-12px;margin-left:200px" src="images/sou.jpg"></img>搜狗</a>
			</div>
		</div>
		<hr/>
		<div class="subscribe-grid text-center" style="height:156px">
			<p class="para three mt-4" style="margin-top:130px">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus at placerat ante. Praesent nulla nunc, pretium dapibus efficitur in</p><p> auctor eget elit. Lorem ipsum dolor sit amet </p>
		
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
setInterval(function() {   
var time = new Date();   // 程序计时的月从0开始取值后+1   
var m = time.getMonth() + 1;   
var t = time.getFullYear() + "-" + m + "-"     
+ time.getDate() + " " + time.getHours() + ":"     
+ time.getMinutes() + ":" + time.getSeconds();   
time1.value= t;
}, 1000); 
};
</script>
<script type="text/javascript">


function u_TypeGetFocus(){
	var u_Type=document.getElementById("u_Type_span");

	u_Type.innerHTML="<font size='4' color ='blue'>请选择团体/个人</font>";
	}
	//定义一个Class1word的失焦的函数
	function u_TypeLoseFocus(){
	var u_Type=document.getElementById("u_Type");
	//判断
	if(u_Type.value.length!=2){
	var u_TypeSpan=document.getElementById("u_Type_span");
	u_TypeSpan.innerHTML="<font size='4' color ='red'>*请选择团体/个人</font>";
	return false;
	}else{
		var u_TypeSpan=document.getElementById("u_Type_span");
		u_TypeSpan.innerHTML="<font size='4' color='blue'>选择合法</font>";
		return true;
	}
	}

	//定义Class1word的聚焦函数
	function ADDpersonGetFocus(){
	var u_num=document.getElementById("ADDperson_span");

	u_num.innerHTML="<font size='4' color ='blue'>请填写报名人数（团队：2人以上（含2人）个人：1人）</font>";
	}
	//定义一个Class1word的失焦的函数
	function ADDpersonLoseFocus(){
	var u_Name=document.getElementById("ADDperson");
	u_Name.value=u_Name.value.replace(/\s/g,"");

	var u_Name_len=u_Name.value.length;

	//判断
	if(!u_Name.readOnly){
	if(u_Name_len==0){
	var u_NameSpan=document.getElementById("ADDperson_span");
	u_NameSpan.innerHTML="<font size='4' color ='red'>*人数不能为空，请填写报名人数（2人以上（含2人）</font>";
	return false;
	}else if(u_Name.value<2 || u_Name.value>30){
	var u_NameSpan=document.getElementById("ADDperson_span");
	u_NameSpan.innerHTML="<font size='4' color='red'>*请填写报名人数（2~30)</font>";
	return false;
	}else{
		var u_NameSpan=document.getElementById("ADDperson_span");
		u_NameSpan.innerHTML="<font size='4' color='blue'>人数合法</font>";
		return true;
	}
	}
	else
		{
		
		var u_NameSpan=document.getElementById("ADDperson_span");
		u_NameSpan.innerHTML="<font size='4' color='blue'>人数合法</font>";
		return true;
		}
	}





//定义Class1word的聚焦函数
function u_NameGetFocus(){
var u_Name=document.getElementById("u_Name_span");

u_Name.innerHTML="<font size='4' color ='blue'>请输入2~4位的姓名(自动去空格)</font>";
}
//定义一个Class1word的失焦的函数
function u_NameLoseFocus(){
var u_Name=document.getElementById("u_Name");
u_Name.value=u_Name.value.replace(/\s/g,"");

var u_Name_len=u_Name.value.length;

//判断
if(u_Name_len==0){
var u_NameSpan=document.getElementById("u_Name_span");
u_NameSpan.innerHTML="<font size='4' color ='red'>*姓名不能为空,请输入2~4位的姓名</font>";
return false;
}else if(u_Name_len<2 || u_Name_len>4){
var u_NameSpan=document.getElementById("u_Name_span");
u_NameSpan.innerHTML="<font size='4' color='red'>*请输入2~4位的姓名</font>";
return false;
}else{
	var u_NameSpan=document.getElementById("u_Name_span");
	u_NameSpan.innerHTML="<font size='4' color='blue'>姓名合法</font>";
	return true;
}
}


//定义telephone的聚焦函数
function telephoneGetFocus(){
	
var telephone=document.getElementById("telephone_span");
telephone.innerHTML="<font size='4' color ='blue'>请输入您的手机号码</font>";
}
function telephoneLoseFocus(){
	var telephone_num=document.getElementById("telephone");
	telephone_num.value=telephone_num.value.replace(/\s/g,"");
	var telephone_len=telephone_num.value.length;
	
	//判断
	if(telephone_len==0){
	var telephoneSpan=document.getElementById("telephone_span");
	telephoneSpan.innerHTML="<font size='4' color ='red'>*手机号不能为空,请输入11位手机号</font>";
	return false;
	}else if(telephone_len<8 || telephone_len>19){
	var telephoneSpan=document.getElementById("telephone_span");
	telephoneSpan.innerHTML="<font size='4' color='red'>*请输入11位手机号</font>";
	return false;
	}else{
		var regPhoneNum = /^[0-9]{11}$/;
		if (regPhoneNum.test(telephone_num.value)) {
			var telephoneSpan=document.getElementById("telephone_span");
			telephoneSpan.innerHTML="<font size='4' color='blue'>手机号输入合法</font>";
	        return true;
	    } else {
	    	var telephoneSpan=document.getElementById("telephone_span");
	    	telephoneSpan.innerHTML="<font size='4' color='red'>*手机号只能为11位数字</font>";
	    	return false;
	    }
	    }
	
	}

//定义QQ的聚焦函数
function QQGetFocus(){
	
var QQ=document.getElementById("QQ_span");
QQ.innerHTML="<font size='4' color ='blue'>请输入您的QQ</font>";
}
function QQLoseFocus(){
	var QQ_num=document.getElementById("QQ");
	QQ_num.value=QQ_num.value.replace(/\s/g,"");
	var QQ_len=QQ_num.value.length;
	
	//判断
	if(QQ_len==0){
	var QQSpan=document.getElementById("QQ_span");
	QQSpan.innerHTML="<font size='4' color ='red'>*QQ不能为空,请输入8-10位QQ号</font>";
	return false;
	}else if(QQ_len<8 || QQ_len>10){
	var QQSpan=document.getElementById("QQ_span");
	QQSpan.innerHTML="<font size='4' color='red'>*请输入8-10位QQ号</font>";
	return false;
	}else{
		var regPhoneNum1 = /^[0-9]{10}$/;
		var regPhoneNum2 = /^[0-9]{8}$/;
		var regPhoneNum3 = /^[0-9]{9}$/;
		if (regPhoneNum1.test(QQ_num.value)||regPhoneNum2.test(QQ_num.value)||regPhoneNum3.test(QQ_num.value)) {
			var QQSpan=document.getElementById("QQ_span");
			QQSpan.innerHTML="<font size='4' color='blue'>QQ输入合法</font>";
	        return true;
	    } else {
	    	var QQSpan=document.getElementById("QQ_span");
	    	QQSpan.innerHTML="<font size='4' color='red'>*QQ只能为8-10位数字</font>";
	    	return false;
	    }
	    }
	
	}

//定义Class1word的聚焦函数
function Class1GetFocus(){
var Class1Span=document.getElementById("Class1_span");
Class1Span.innerHTML="<font size='4' color ='blue'>请输入班级,例:信1605-2</font>";
}
//定义一个Class1word的失焦的函数
function Class1LoseFocus(){
var Class1_num=document.getElementById("Class1");
Class1_num.value=Class1_num.value.replace(/\s/g,"");
var Class1_len=Class1_num.value.length;

//判断
if(Class1_len==0){
var Class1Span=document.getElementById("Class1_span");
Class1Span.innerHTML="<font size='4' color ='red'>*班级不能为空,例:信1605-2</font>";
return false;
}else if(Class1_len!=7){
var Class1Span=document.getElementById("Class1_span");
Class1Span.innerHTML="<font size='4' color='red'>*请输入班级,例:信1605-2</font>";
return false;
}else{

var regClass1wordSpecial = /[~!@#%&=;':",./<>_\}\]\-\$\(\)\*\+\.\[\?\\\^\{\|]/;
var yuanxi=/['信''经''数''英''建''材''电''土''交']/;
var hah=/['\-']/;
var regClass1wordNum = /[0-9]{4}/;
var regClass1wordNum2 = /[0-9]/;
var Class1word;

function atLeastTwo(Class1word) {
	
  var a = yuanxi.test(Class1word.substring(0,1)) ? 1 : 0;
  var c = regClass1wordNum.test(Class1word.substring(1,5)) ? 1 : 0;
  var b= hah.test(Class1word.substring(5,6))?1:0;
  var d= regClass1wordNum2.test(Class1word.substr(-1,1))?1:0;
  return a + b + c+d;

}
if(atLeastTwo(Class1_num.value) !=4){
 var Class1Span=document.getElementById("Class1_span");
  Class1Span.innerHTML="<font color='red' size='4'>班级输入不规范:例:信1605-2</font>";
     return false;
 }else{
var Class1Span=document.getElementById("Class1_span");
Class1Span.innerHTML="<font color='blue' size='4'>班级输入格式正确</font>";
return true;
     }

}
}



function tijiao(){
var u_Name_result=u_NameLoseFocus();
var telephone_result=telephoneLoseFocus();
var QQ_result=QQLoseFocus();
var Class1_result=Class1LoseFocus();
var re=u_TypeLoseFocus();
var num_p=ADDpersonLoseFocus();
if(u_Name_result && telephone_result &&QQ_result&&Class1_result&&re&&num_p){

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