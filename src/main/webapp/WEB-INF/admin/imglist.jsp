<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>

    <style>
        .imglist li img {
            width: 168px;
            height: 126px;
        }
    </style>
</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">模块设计</a></li>
        <li><a href="#">图片</a></li>
    </ul>
</div>

<div class="rightinfo">

    <div class="tools">

        <ul class="toolbar">
            <li class="addTab"><a href="/admin/tabupload"><span><img
                    src="${pageContext.request.contextPath}/resource/images/t01.png"/></span>添加</a>
            </li>
            <%--<li class="click"><span><img src="${pageContext.request.contextPath}/resource/images/t02.png"/></span>修改
            </li>
            <li><span><img src="${pageContext.request.contextPath}/resource/images/t03.png"/></span>删除</li>--%>
            <li><span><img src="${pageContext.request.contextPath}/resource/images/t04.png"/></span>统计</li>
        </ul>


        <ul class="toolbar1">
            <li><span><img src="${pageContext.request.contextPath}/resource/images/t05.png"/></span>设置</li>
        </ul>

    </div>


    <ul class="imglist">

        <c:forEach var="ctab" items="${ctabs}">
            <li class="selected">
                <span><img src="/admin/${ctab.iconurl}"/></span>
                <h2>${ctab.ctabname}</h2>
                <h2 style="color: #00a4ac;">${ctab.tab.tabname}</h2>
                <p><a href="/admin/tabupdate?id=${ctab.id}">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a class="click" data="${ctab.id}" href="javascript:;">删除</a></p>
            </li>
        </c:forEach>


    </ul>

    <div class="tip">
        <div class="tiptop"><span>提示信息</span><a></a></div>

        <div class="tipinfo">
            <span><img src="${pageContext.request.contextPath}/resource/images/ticon.png"/></span>
            <div class="tipright">
                <p>是否确认对信息的删除 ？</p>
                <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
            </div>
        </div>

        <div class="tipbtn">
            <input name="" onclick="remove();" type="button" class="sure" value="确定"/>&nbsp;
            <input name="" type="button" class="cancel" value="取消"/>
        </div>

    </div>


</div>


</body>
<script language="javascript">
    $(function () {
        //导航切换
        $(".imglist li").click(function () {
            $(".imglist li.selected").removeClass("selected")
            $(this).addClass("selected");
        })
    });
    var href=null;
    $(document).ready(function () {
        $(".click").click(function () {
            $(".tip").fadeIn(200);
            href = $(this).attr("data");
        });

        $(".tiptop a").click(function () {
            $(".tip").fadeOut(200);
        });

        $(".sure").click(function () {
            $(".tip").fadeOut(100);
        });

        $(".cancel").click(function () {
            $(".tip").fadeOut(100);
        });

    });
    function remove(){
        window.location.href="/admin/removeCtab?id="+href;
    }
</script>


</html>
