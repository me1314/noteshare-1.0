<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/Chart.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/script.js"></script>
</head>
<style>
#count li{
    padding-top: 5px;
    display: inline-block;
    margin: 3px 20px;
    line-height: 15px;
    text-align: right;

    padding-left: 10px;
}
#count li b{
    width: 15px;
    height: 15px;
    vertical-align: middle;
    display: inline-block;
    margin-right: 3px;
}
#count li.li1 b{
    background-color: #000;
}
#count li.li2 b{
    background-color: rgba(23, 126, 23, 1);
}
#count li.li3 b{
    background-color: rgba(255,100,122,1);
}
</style>

<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">工作台</a></li>
    </ul>
</div>


<div class="mainbox">
    <div class="mainleft">
        <div class="leftinfo">
            <div class="listtitle">数据统计</div>
            <div class="col-md-12" style="border: 0px;">
                <div class="panel panel-default" style="border: 0px;">
                    <canvas id="canvas" class="col-md-12" width="1100" height="280"
                            style="width: 1100px; height: 300px;"></canvas>
                </div>
            </div>
            <ul id="count">
                <li class="li1"><b></b>文章数</li>
                <li class="li2"><b></b>会员数</li>
                <li class="li3"><b></b>评论数</li>
            </ul>
        </div>
        <div class="leftinfos">
            <div class="infoleft">

                <div class="listtitle">待办事项</div>
                <ul class="newlist">
                    <li><i>会员数：</i>2535462</li>
                    <li><i>文档数：</i>5546</li>
                    <li><i>普通文章：</i>2315</li>
                    <li><i>软件：</i>1585</li>
                    <li><i>评论数：</i>5342</li>
                </ul>
            </div>
        </div>
    </div>
    <!--mainleft end-->


    <div class="mainright">
        <div class="dflist">
            <div class="listtitle">信息统计</div>
            <ul class="newlist">
                <li><i>会员数：</i>2535462</li>
                <li><i>文档数：</i>5546</li>
                <li><i>普通文章：</i>2315</li>
                <li><i>软件：</i>1585</li>
                <li><i>评论数：</i>5342</li>
            </ul>
        </div>
    </div>
    <!--mainright end-->
</div>
</body>
<script type="text/javascript">
    setWidth();
    $(window).resize(function () {
        setWidth();
    });
    function setWidth() {
        var width = ($('.leftinfos').width() - 12) / 2;
        $('.infoleft,.inforight').width(width);
    }
</script>
</html>
