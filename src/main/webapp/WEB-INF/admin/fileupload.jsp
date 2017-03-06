<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        #atab {
            position: relative;
            display: inline-block;
            background-color: #ccc;
            font-size: 14px;
            color: #fff;
            padding: 8px 43px;
            border-radius: 3px;
            cursor: pointer;
        }

        #notefile {
            width: 138px;
            font-size: 22px;
            position: absolute;
            left: 1px;
            top: 0;
            opacity: 0;
            cursor: pointer;
        }
    </style>
</head>

<body>

<div class="place">
    <span>位置：</span>
    <ul class="placeul">
        <li><a href="#">工具管理</a></li>
        <li><a href="#">工具上传</a></li>
    </ul>
</div>

<div class="formbody">

    <div class="formtitle"><span>上传工具</span></div>
    <form id="form" method="post" enctype="multipart/form-data" action="/admin/uploadnote">
        <input type="hidden" name="admin.id" value="${sessionScope.admin.id}">
        <ul class="forminfo">
            <li><label>工具文件<b>*</b></label><a id="atab" href="javascript:void(0);"><input id="notefile"
                                                                                          name="tabicon"
                                                                                          type="file"
                                                                                          class="dfinput"
                                                                                          placeholder="文件"/>选择文件</a><i
                    id="filename" style="font-size:14px; "></i></li>
            <li><label>工具描述</label><textarea name="" cols="" rows="" class="textinput"></textarea></li>
            <li><label>&nbsp;</label><input id="btn" name="" type="button" class="btn" value="开始上传"
                                            onclick="save();"/></li>
        </ul>
    </form>

</div>


</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
<script type="text/javascript">
    $('#notefile').bind('change', function () {
        var a = $(this)[0].value.lastIndexOf("\\");
        $('#filename').text($(this)[0].value.substring(a + 1));
    });
    function save() {

        $('#form').submit();
    }
</script>
</html>
