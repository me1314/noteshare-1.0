<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css"/>
</head>


<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">文章管理</a></li>

    </ul>
</div>

<div class="rightinfo">

    <div class="tools">
    </div>


    <table class="tablelist">
        <thead>
        <tr>
            <th>序号</th>
            <th>标题</th>
            <th>标签</th>
            <th>引用地址</th>
            <th>发布人</th>
            <th>发布时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="note" items="${notes}" varStatus="count">
            <tr>
                <td>${count.index+1}</td>
                <td>${note.title}</td>
                <td>${note.ctab.tab.tabname}--${note.ctab.ctabname}</td>
                <td>${note.refurl}</td>
                <td>${note.admin.name}</td>
                <td><f:formatDate value="${note.time}" pattern="yyyy-MM-dd HH:mm" /></td>
                <td><a class="click" data="${note.id}" href="javascript:void(0);" class="tablelink"> 删除</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>


    <div class="pagin">
        <div class="message">共<i class="blue">${page.pageQuery_infoCount}</i>条记录，当前显示第&nbsp;<i class="blue">${page.pageQuery_currPage}&nbsp;</i>页</div>
        <ul class="paginList">
        </ul>
    </div>


    <div class="tip">
        <div class="tiptop"><span>提示信息</span><a></a></div>

        <div class="tipinfo">
            <span><img src="${pageContext.request.contextPath}/resource/images/ticon.png"/></span>
            <div class="tipright">
                <p>是否确认对信息的修改 ？</p>
                <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
            </div>
        </div>

        <div class="tipbtn">
            <input name="" onclick="remove();" type="button" class="sure" value="确定"/>&nbsp;
            <input name="" type="button" class="cancel" value="取消"/>
        </div>

    </div>


</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.page.js"></script>
<script type="text/javascript">
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

    $('.tablelist tbody tr:odd').addClass('odd');

    $(".paginList").createPage({
        pageCount:${page.pageQuery_Psize},
        current:${page.pageQuery_currPage},
        backFn:function(p){
            console.log(p)
            window.location.href="/admin/right?PageQuery_currPage="+p;
        }
    });
    function remove(){
        window.location.href="/admin/removenote?id="+href;
    }

</script>

</body>

</html>
