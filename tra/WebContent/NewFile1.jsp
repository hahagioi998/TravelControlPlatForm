<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>layui</title>
  <meta name="renderer" content="webkit">
   
  <link rel="stylesheet" href="./Test2/layui.css"  media="all">
   <link href="./Test/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="./Test/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="./Test/css/animate.min.css" rel="stylesheet">
    <link href="./Test/css/style.min862f.css?v=4.1.0" rel="stylesheet">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body class="gray-bg">

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>将一段已知数组分页展示</legend>
</fieldset>
 
    <div id="demo20"></div>
 
    <div class="row">
        <div class="col-sm-12">
            <div class="wrapper wrapper-content animated fadeInUp">
                <ul class="notes" id="notes" >
                </ul>
            </div>
        </div>
    </div>


 <% 
		for(int k=0;k<12;k++){
		%>
<input  type="hidden" name="NO" value="<%="hahahha"%>">
<%
		}
%>
          
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
    ,count: 1000
    ,limit: 100
    ,limits: [100, 300, 500]
  });
  
  
  //将一段数组分页展示
  
  //测试数据
   var data2 =document.getElementsByName('NO');
  var data3=document.getElementsByName('NO');
  var data = [];
  for(var j=0;j<data3.length;j++){
	  data[j]=data3[j].value;
  }
  var i=0;
  //调用分页
  laypage.render({
    elem: 'demo20'
    ,count: data.length
    ,jump: function(obj){
      //模拟渲染
      document.getElementById('notes').innerHTML = function(){
        var arr = []
        ,thisData = data.concat().splice(obj.curr*obj.limit - obj.limit, obj.limit);
        layui.each(thisData, function(index, item){
        	arr.push('<li>');
        	arr.push('<div>');
        	arr.push('<small>时间：'+data2[i].value+'</small>');
        	arr.push('<h4>留言'+(++i)+'</h4>');
          arr.push('<p>'+ item +'</p>');
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