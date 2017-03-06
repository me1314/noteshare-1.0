<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active");
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>管理操作</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="${pageContext.request.contextPath}/resource/images/leftico01.png" /></span>管理信息
    </div>
    	<ul class="menuson">
        <li class="active"><cite></cite><a href="/admin/index" target="rightFrame">首页</a><i></i></li>
        <li ><cite></cite><a href="/admin/right" target="rightFrame">文章列表</a><i></i></li>
        <li><cite></cite><a href="/admin/fileupload" target="rightFrame">添加编辑</a><i></i></li>
        <li><cite></cite><a href="/admin/imglist" target="rightFrame">标签管理</a><i></i></li>
        <li><cite></cite><a href="/admin/imglist1" target="rightFrame">首推管理</a><i></i></li>
        <li><cite></cite><a href="/admin/filelist" target="rightFrame">工具目录</a><i></i></li>
        </ul>
    </dd>

    </dl>
    
</body>
</html>
