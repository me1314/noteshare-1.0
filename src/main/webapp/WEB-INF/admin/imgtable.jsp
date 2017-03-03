<%@ page import="com.me.noteshare.pojo.po.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="userController" class="com.me.noteshare.controller.UserController" scope="page" />
<jsp:useBean id="userServiceImpl" class="com.me.noteshare.service.Impl.UserServiceImpl" scope="page" />
<html>
<head>
    <meta charset="utf-8"/>
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
    <script language="javascript">
        $(function () {
            //导航切换
            $(".imglist li").click(function () {
                $(".imglist li.selected").removeClass("selected");
                $(this).addClass("selected");
            })
        })
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".click").click(function () {
                $(".tip").fadeIn(200);
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
    </script>
</head>


<body>

<%--<%
    int pageIndex = 1;
    int pageSize =10;
    int count = userServiceImpl.count();
    int totalPage = count%pageSize==0?count/pageSize:count/pageSize+1;
    List<User> list = userServiceImpl.list(pageIndex,pageSize);
%>--%>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">首页</a></li>
        <li><a href="#">用户管理</a></li>
    </ul>
</div>

<div class="rightinfo">

    <div class="tools">

        <ul class="toolbar">
            <li><span><img src="${pageContext.request.contextPath}/resource/images/t04.png"/></span>统计</li>
        </ul>
    </div>


    <table class="imgtable">

        <thead>
        <tr>
            <th width="100px;">头像</th>
            <th>个性签名</th>
            <th>邮箱</th>
            <th>手机</th>
            <th>微信 | QQ</th>
            <th>注册时间</th>
            <th>用户名</th>
            <th>是否激活</th>
            <th>性别</th>
        </tr>
        </thead>

        <tbody>

        <c:forEach var="users" items="${users}">
            <tr>
                <td class="imgtd"><img src="${users.icon}"/></td>
                <td><a href="#">${users.signature}</a></td>
                <td>${users.eMail}</td>
                <td>${users.phone}</td>
                <td>
                    <%--<p>微信：9594979595</p>
                    <p>QQ：9594979595</p>--%>
                    ${users.contact}
                </td>
                <td>${users.createDate}</td>
                <td>${users.name}<p>ID: ${users.id}</p></td>
                <td><i>${users.verified}</i></td>
                <td>${users.gender}</td>
            </tr>
        </c:forEach>

<%--        <c:forEach var="users" items="list">
            <tr>
                <td class="imgtd"><img src="${users.icon}"/></td>
                <td><a href="#">${users.signature}</a></td>
                <td>${users.eMail}</td>
                <td>${users.phone}</td>
                <td>
                   &lt;%&ndash;&lt;%&ndash;<p>微信：9594979595</p>
                   <p>QQ：9594979595</p>&ndash;%&gt;&ndash;%&gt;
                        ${users.contact}
                </td>
                <td>${users.createDate}</td>
                <td>${users.name}<p>ID: ${users.id}</p></td>
                <td><i>${users.verified}</i></td>
                <td>${users.gender}</td>
            </tr>
</c:forEach>



        <center>
            <a href="/admin/imgtable/1">首页</a>
            <a href="/admin/imgtable/${pageIndex-1}>">上一页</a>
            <a href="/admin/imgtable/${pageIndex+1}">下一页</a>
            <a href="/admin/imgtable/${totalPage}">末页</a>
        </center>--%>

<%--        <tr>
            <td class="imgtd"><img src="${pageContext.request.contextPath}/resource/images/img11.png"/></td>
            <td><a href="#">完美的人生</a></td>
            <td>934fd@qq.com</td>
            <td>12545883520</td>
            <td>
                <p>微信：9594979595</p>
                <p>QQ：9594979595</p>
            </td>
            <td>2016-5-6 14:20:30</td>
            <td>admin<p>ID: 82122</p></td>
            <td>激活</td>
            <td>女</td>
        </tr>

        <tr>
            <td class="imgtd"><img src="${pageContext.request.contextPath}/resource/images/img12.png"/></td>
            <td><a href="#">时间如水</a></td>
            <td>934fd@qq.com</td>
            <td>12545883520</td>
            <td>
                <p>微信：9594979595</p>
                <p>QQ：9594979595</p>
            </td>
            <td>2016-5-6 14:20:30</td>
            <td>uimaker<p>ID: 82122</p></td>
            <td><i>未激活</i></td>
            <td>男</td>
        </tr>

        <tr>
            <td class="imgtd"><img src="${pageContext.request.contextPath}/resource/images/img13.png"/></td>
            <td><a href="#">健健康康</a></td>
            <td>934fd@qq.com</td>
            <td>12545883520</td>
            <td>
                <p>微信：9594979595</p>
                <p>QQ：9594979595</p>
            </td>
            <td>2016-5-6 14:20:30</td>
            <td>admin<p>ID: 82122</p></td>
            <td>激活</td>
            <td>男</td>
        </tr>

        <tr>
            <td class="imgtd"><img src="${pageContext.request.contextPath}/resource/images/img14.png"/></td>
            <td><a href="#">少壮不努力</a></td>
            <td>934fd@qq.com</td>
            <td>12545883520</td>
            <td>
                <p>微信：9594979595</p>
                <p>QQ：9594979595</p>
            </td>
            <td>2016-5-6 14:20:30</td>
            <td>user<p>ID: 82122</p></td>
            <td>激活</td>
            <td>男</td>
        </tr>

        <tr>
            <td class="imgtd"><img src="${pageContext.request.contextPath}/resource/images/img15.png"/></td>
            <td><a href="#">只能开夏利</a></td>
            <td>934fd@qq.com</td>
            <td>12545883520</td>
            <td>
                <p>微信：9594979595</p>
                <p>QQ：9594979595</p>
            </td>
            <td>2016-5-6 14:20:30</td>
            <td>admin<p>ID: 82122</p></td>
            <td>激活</td>
            <td>女</td>
        </tr>--%>


        </tbody>

    </table>


    <div class="pagin">
        <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
        <ul class="paginList">
            <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
            <li class="paginItem"><a href="javascript:;">1</a></li>
            <li class="paginItem current"><a href="javascript:;">2</a></li>
            <li class="paginItem"><a href="javascript:;">3</a></li>
            <li class="paginItem"><a href="javascript:;">4</a></li>
            <li class="paginItem"><a href="javascript:;">5</a></li>
            <li class="paginItem more"><a href="javascript:;">...</a></li>
            <li class="paginItem"><a href="javascript:;">10</a></li>
            <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
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
            <input name="" type="button" class="sure" value="确定"/>&nbsp;
            <input name="" type="button" class="cancel" value="取消"/>
        </div>

    </div>


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
        <input name="" type="button" class="sure" value="确定"/>&nbsp;
        <input name="" type="button" class="cancel" value="取消"/>
    </div>

</div>

<script type="text/javascript">
    $('.imgtable tbody tr:odd').addClass('odd');
</script>

</body>

</html>
