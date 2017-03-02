<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<html>
<head>
<meta charset="utf-8" />
<title>常用工具上传</title>
<link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>基本信息</span></div>
    
    <ul class="forminfo">
        <form action="#" method="post" enctype="multipart/form-data">
            <li><label>工具上传</label><input name="files" type="file"<%-- class="dfinput"--%> />
                <%--<input name="files" type="file" />--%>
                <%--<input name="files" type="file" />--%>
                <i>文件大小不能超过10M ！</i></li>
            <%--    <li><label>关键字</label><input name="" type="text" class="dfinput" /><i>多个关键字用,隔开</i></li>
            <li><label>是否审核</label><cite><input name="" type="radio" value="" checked="checked" />是&nbsp;&nbsp;&nbsp;&nbsp;<input name="" type="radio" value="" />否</cite></li>
            <li><label>引用地址</label><input name="" type="text" class="dfinput" value="http://www.uimaker.com/uimakerhtml/uidesign/" /></li>--%>
            <li><label>软件详情</label><textarea name="file_description" cols="" rows="" class="textinput"></textarea></li>
            <li><label>&nbsp;</label><input type="submit" class="btn" value=" 上 传 "/></li>
        </form>
    </ul>
    </div>
</body>

</html>
