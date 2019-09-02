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
   <link rel="stylesheet" href="./Test2/layui.css"  media="all">

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
    <link rel="shortcut icon" href="favicon.ico">  
    <!-- <link href="./Test/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet"> -->
   <link href="./Test/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="./Test/css/animate.min.css" rel="stylesheet">
    <link href="./Test/css/style.min862f.css?v=4.1.0" rel="stylesheet">

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
// linear-gradient(#d7e3fb 10%);

%>
<body style="background:linear-gradient(#2626fc -9%,#5894e4 4%,#d7e3fb 10%,#ffffff);">

    <div id="wrap" style="height:1050px">
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
						<li><a href="Info_comment.jsp ">我的留言</a></li>
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
    <div class="row">
        <div class="col-sm-12">
            <div class="wrapper wrapper-content animated fadeInUp" style="margin-left:50px;">
                <ul class="notes" id="notes">
                <%
                
               for(User user:users){
            	   
            	  %>
            	 <input type="hidden" id="data2" name="data2" value="<%=user.getTime()%>"/>
            	  <input type="hidden" id="data" name="data" value="<%=user.getSaying()%>"/>
            	  <% 
			        }                                                 
		        %>
                </ul>
            </div>
        </div>
       
    </div>
 <div id="demo20" style="
    margin-left: 150px;
"></div>
   
<div class="white-space"></div>

  </section><!-- container -->
  <!-- END-Google Map Section -->
		
<div id="footer" align="center">
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
	

<!-- End Document
================================================== -->
<script src="./Test2/layui.all.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  
  //总页数低于页码总数
  laypage.render({
    elem: 'demo0'
    ,count: 50 //数据总数
  });
  
  //总页数大于页码总数
  laypage.render({
    elem: 'demo1'
    ,count: 70 //数据总数
    ,jump: function(obj){
      console.log(obj)
    }
  });
  
  //自定义样式
  laypage.render({
    elem: 'demo2'
    ,count: 100
    ,theme: '#1E9FFF'
  });
  laypage.render({
    elem: 'demo2-1'
    ,count: 100
    ,theme: '#FF5722'
  });
  laypage.render({
    elem: 'demo2-2'
    ,count: 100
    ,theme: '#FFB800'
  });
  
  //自定义首页、尾页、上一页、下一页文本
  laypage.render({
    elem: 'demo3'
    ,count: 100
    ,first: '首页'
    ,last: '尾页'
    ,prev: '<em>←</em>'
    ,next: '<em>→</em>'
  });
  
  //不显示首页尾页
  laypage.render({
    elem: 'demo4'
    ,count: 100
    ,first: false
    ,last: false
  });
  
  //开启HASH
  laypage.render({
    elem: 'demo5'
    ,count: 500
    ,curr: location.hash.replace('#!fenye=', '') //获取hash值为fenye的当前页
    ,hash: 'fenye' //自定义hash值
  });
  
  //只显示上一页、下一页
  laypage.render({
    elem: 'demo6'
    ,count: 50
    ,layout: ['prev', 'next']
    ,jump: function(obj, first){
      if(!first){
        layer.msg('第 '+ obj.curr +' 页');
      }
    }
  });
  
  //完整功能
  laypage.render({
    elem: 'demo7'
    ,count: 100
    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
    ,jump: function(obj){
      console.log(obj)
    }
  });
  
  //自定义排版
  laypage.render({
    elem: 'demo8'
    ,count: 1000
    ,layout: ['limit', 'prev', 'page', 'next']
  });
  laypage.render({
    elem: 'demo9'
    ,count: 1000
    ,layout: ['prev', 'next', 'page']
  });
  laypage.render({
    elem: 'demo10'
    ,count: 1000
    ,layout: ['page', 'count']
  });
  
  //自定义每页条数的选择项
  laypage.render({
    elem: 'demo11'
    ,count: 300
    ,limit: 3
    ,limits: [100, 300, 500]
  });
  
  
  //将一段数组分页展示
  
  //测试数据
   var data2 = document.getElementsByName('data2');
   var data22=[];
   for(var j=0;j<data2.length;j++){
	 	  data22[j]=data2[j].value;
	   }
   var data3=document.getElementsByName('data');
   var data = [];
   for(var j=0;j<data3.length;j++){
 	  data[j]=data3[j].value;
   }
  /* var i=[];
  for(var k=0;k<data3.length;k++){
 	  i[k]=k;
   } */
  //调用分页
  var ll2=0;
  laypage.render({
    elem: 'demo20'
    ,count: data.length
    ,limit: 3
    ,jump: function(obj){
      //模拟渲染
      var ll=0;
      document.getElementById('notes').innerHTML = function(){
        var arr = []
        ,thisData1 = data22.concat().splice(obj.curr*obj.limit - obj.limit, obj.limit);
         
        layui.each(thisData1, function(index, item){
        	ll++;
        	arr.push('<li>');
        	arr.push('<div>');
        	arr.push('<small>时间：'+item+'</small>');
        	arr.push('<h4>留言'+(obj.limit*(obj.curr-1)+index+1)+'</h4>');
        	arr.push('<p>'+data[obj.limit*(obj.curr-1)+index]+'</p>');
        	 arr.push('</div>');
             arr.push('</li>');
        }); 
        return arr.join('');
      }();
    }
  });
  
});
</script>

</body>
</html>
   <script src="./Test/js/jquery.min.js"></script>
    <script src="./Test/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/latest-twitt.js"></script>
	<script type="text/javascript" src="js/vincie-send.js"></script>

</body>
</html>
