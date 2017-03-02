<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta  charset="utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>

<body style="background:url(${pageContext.request.contextPath}/resource/images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="main.jsp" target="_parent"><img src="${pageContext.request.contextPath}/resource/images/logo.png" title="系统首页" /></a>
    </div>
        
    <ul class="nav">
    <li><a href="/admin/imgtable" target="rightFrame" <%--class="selected"--%>><img src="${pageContext.request.contextPath}/resource/images/icon01.png" title="用户管理" /><h2>用户管理</h2></a></li>
    <li><a href="/admin/defaul" target="rightFrame"><img src="${pageContext.request.contextPath}/resource/images/icon02.png" title="数据分析" /><h2>数据分析</h2></a></li>
    <li><a href="/admin/tab" target="rightFrame"><img src="${pageContext.request.contextPath}/resource/images/icon03.png" title="文章发布" /><h2>文章发布</h2></a></li>
    <li><a href="/admin/tools" target="rightFrame"><img src="${pageContext.request.contextPath}/resource/images/icon04.png" title="常用工具" /><h2>常用工具</h2></a></li>
    <li><a href="/admin/computer" target="rightFrame"><img src="${pageContext.request.contextPath}/resource/images/icon05.png" title="文件管理" /><h2>文件管理</h2></a></li>
    <li><a href="javascript:void(0);" target="rightFrame"><img src="${pageContext.request.contextPath}/resource/images/icon06.png" title="系统设置" /><h2>系统设置</h2></a></li>
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="${pageContext.request.contextPath}/resource/images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="login.jsp" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span>admin</span>
    <i>消息</i>
    <b>5</b>
    </div>    
    
    </div>

</body>
</html>
