<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
<meta charset="utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>

</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    </ul>
    </div>
    
    <div class="mainindex">
    
    
    <div class="welinfo">
    <span><img src="${pageContext.request.contextPath}/resource/images/sun.png" alt="天气" /></span>
    <b>您好<i style="color: #5AC3AC;">${sessionScope.admin.name}</i>，欢迎登录noteshare管理界面</b>
    <a href="#">帐号设置</a>
    </div>
    
    <div class="welinfo">
    <span><img src="${pageContext.request.contextPath}/resource/images/time.png" alt="时间" /></span>
    <i>您上次登录的时间：<f:formatDate value="${sessionScope.admin.last_time}" pattern="yyyy-MM-dd HH:mm:ss" /> </i> （不是您登录的？<a href="#">请点这里</a>）
    </div>
    
    <div class="xline"></div>
    
    <ul class="iconlist">
    
    <li><img src="${pageContext.request.contextPath}/resource/images/ico02.png" /><p><a href="#">发布文章</a></p></li>
    <li><img src="${pageContext.request.contextPath}/resource/images/ico03.png" /><p><a href="#">数据统计</a></p></li>
    <li><img src="${pageContext.request.contextPath}/resource/images/ico04.png" /><p><a href="#">文件上传</a></p></li>
    <li><img src="${pageContext.request.contextPath}/resource/images/ico05.png" /><p><a href="#">目录管理</a></p></li>
    <li><img src="${pageContext.request.contextPath}/resource/images/ico06.png" /><p><a href="#">查询</a></p></li>
            
    </ul>
    
   <!-- <div class="ibox"><a class="ibtn"><img src="images/iadd.png" />添加新的快捷功能</a></div>-->
    
    <div class="xline"></div>
    <div class="box"></div>
    
    <div class="welinfo">
    <span><img src="${pageContext.request.contextPath}/resource/images/dp.png" alt="提醒" /></span>
    <b>NoteShare管理界面使用指南</b>
    </div>
    
    <ul class="infolist">
    <li><span>您可以快速进行文章发布管理操作</span><a class="ibtn">发布或管理文章</a></li>
<!--    <li><span>您可以快速发布产品</span><a class="ibtn">发布或管理产品</a></li>-->
    <li><span>您可以进行密码修改、账户设置等操作</span><a class="ibtn">账户管理</a></li>
    </ul>
    
    <div class="xline"></div>
    
<!--    <div class="uimakerinfo"><b>查看Uimaker网站使用指南，您可以了解到多种风格的B/S后台管理界面,软件界面设计，图标设计，手机界面等相关信息</b>(<a href="http://www.uimaker.com" target="_blank">www.uimaker.com</a>)</div>
    
    <ul class="umlist">
    <li><a href="#">如何发布文章</a></li>
    <li><a href="#">如何访问网站</a></li>
    <li><a href="#">如何管理广告</a></li>
    <li><a href="#">后台用户设置(权限)</a></li>
    <li><a href="#">系统设置</a></li>
    </ul>
    
    
    </div>-->

        </div>
</body>
</html>
