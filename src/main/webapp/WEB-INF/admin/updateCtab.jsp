<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/resource/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/resource/css/select.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/select-ui.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/check.js"></script>

    <script type="text/javascript">

        function save() {

            $('#form').submit();
        }
    </script>

    <script type="text/javascript">
        $(document).ready(function (e) {
            $(".select1").uedSelect({
                width: 345
            });
            $(".select2").uedSelect({
                width: 167
            });
            $(".select3").uedSelect({
                width: 100
            });
        });

    </script>
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
        <li><a href="#">标签管理</a></li>
    </ul>
</div>

<div class="formbody">


    <div id="usual1" class="usual">

        <div class="itab">
            <ul>
                <li><a href="#tab1" class="selected">标签修改</a></li>
            </ul>
        </div>

        <div id="tab1" class="tabson">

            <div class="formtext">Hi，<b>${sessionScope.admin.name}</b>，欢迎您修改标签！</div>
            <form id="form" action="/admin/updatectab" method="post" enctype="multipart/form-data" >
                <input type="hidden" value="${ctab.id}" name="id">
                <ul class="forminfo">
                    <li><label>显示图片<b></b></label><img style="box-shadow: 0px 0px 5px rgba(0, 0, 0, .8);" id="icon" src="/admin/${ctab.iconurl}" width="100px" height="100px" /></li>
                    <li><label>标签名<b>*</b></label><input id="tabname" name="ctabname" type="text" class="dfinput" value="${ctab.ctabname}"
                                                         placeholder="文章标题"
                                                         style="width:200px;"/><b id="yz"></b></li>
                    <li><label>标签图标<b>*</b></label><a id="atab" href="javascript:void(0);"><input id="notefile"
                                                                                                  name="tabicon"
                                                                                                  type="file"
                                                                                                  class="dfinput"
                                                                                                  placeholder="文件"/>选择文件</a><i
                            id="filename" style="font-size:14px; "></i></li>

                    <li><label>隶属于类别<b>*</b></label>

                        <div class="usercity">

                            <div class="cityleft">
                                <select class="select2" id="selectTab" name="tab.id">
                                    <option>${ctab.tab.tabname}</option>
                                    <c:forEach var="tab" items="${tabs}">
                                        <c:if test="${!ctab.tab.tabname.equals(tab.tabname)}">
                                            <option value="${tab.id}">${tab.tabname}</option>
                                        </c:if>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                    </li>

                    <li><label>&nbsp;</label><input id="btn" name="" type="button" class="btn" value="马上发布"
                                                    onclick="save();"/></li>
                </ul>
            </form>
        </div>



    </div>

    <script type="text/javascript">
        $("#usual1 ul").idTabs();
    </script>

    <script type="text/javascript">

        $(function () {

            $('.tablelist tbody tr:odd').addClass('odd');
            $('#notefile').bind('change', function () {
                var a = $(this)[0].value.lastIndexOf("\\");
                $('#filename').text($(this)[0].value.substring(a + 1));
            });

            $("#notefile").change(function () {
                var $file = $(this);
                var fileObj = $file[0];
                var windowURL = window.URL || window.webkitURL;
                var dataURL;
                var $img = $("#icon");

                if (fileObj && fileObj.files && fileObj.files[0]) {
                    dataURL = windowURL.createObjectURL(fileObj.files[0]);
                    $img.attr('src', dataURL);
                } else {
                    dataURL = $file.val();
                    var imgObj = document.getElementById("preview");
                    imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
                    imgObj.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
                }
            });
        });

    </script>
</div>


</body>

</html>
