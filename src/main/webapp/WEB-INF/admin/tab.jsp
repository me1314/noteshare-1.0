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
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/editor/kindeditor.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resource/js/check.js"></script>


    <script type="text/javascript">
        KE.show({
            id: 'content7',
            cssPath: './index.css'
        });
        function save() {
            //取得HTML内容
            //同步数据后可以直接取得textarea的value
            KE.util.setData("content7");
            //设置HTML内容
            //KE.html('content7', 'HTML内容');
            //KE.util.setFullHtml(id, val)
            KE.util.setData("content7", $('#content7').val());
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
        <li><a href="#">文章发布</a></li>
    </ul>
</div>

<div class="formbody">


    <div id="usual1" class="usual">

        <div class="itab">
            <ul>
                <li><a href="#tab1" class="selected">上传文章</a></li>
                <li><a href="#tab2">自定义</a></li>
            </ul>
        </div>

        <div id="tab1" class="tabson">

            <div class="formtext">Hi，<b>${sessionScope.admin.name}</b>，欢迎您上传文章功能！</div>
            <form id="form" method="post" enctype="multipart/form-data" action="/admin/uploadnote">
               <input type="hidden" name="admin.id" value="${sessionScope.admin.id}">
                <ul class="forminfo">
                    <li><label>标题<b>*</b></label><input id="title" name="title" type="text" class="dfinput"
                                                        placeholder="文章标题"
                                                        style="width:518px;"/><b id="yz"></b></li>

                    <li><label>来源网站<b>*</b></label><input name="refurl" type="text" class="dfinput" placeholder="哪位管理员"
                                                          style="width:518px;"/></li>

                    <li><label>文章文件<b></b></label><a id="atab" href="javascript:void(0);"><input id="notefile"
                                                                                                 name="notefile"
                                                                                                 type="file"
                                                                                                 class="dfinput"
                                                                                                 placeholder="文件"/>选择文件</a><i
                            id="filename" style="font-size:14px; "></i></li>

                    <li><label>文章类型<b>*</b></label>

                        <div class="usercity">

                            <div class="cityleft">
                                <select class="select2" id="selectTab">
                                    <option>--请选择标签--</option>
                                    <c:forEach var="tab" items="${tabs}">
                                        <option value="${tab.id}">${tab.tabname}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="cityright">
                                <select class="select2" id="selectCtab" name="ctab.id">
                                    <option>--请选择子标签--</option>
                                </select>
                            </div>

                        </div>


                    </li>
                    <li><label>文章内容<b>*</b></label>


                        <textarea id="content7" name="content"
                                  style="width:700px;height:250px;visibility:hidden;"></textarea>

                    </li>
                    <li><label>&nbsp;</label><input id="btn" name="" type="button" class="btn" value="马上发布"
                                                    onclick="save();" disabled/></li>
                </ul>
            </form>
        </div>


        <div id="tab2" class="tabson">


            <ul class="seachform">

                <li><label>综合查询</label><input name="" type="text" class="scinput"/></li>
                <li><label>指派</label>
                    <div class="vocation">
                        <select class="select3">
                            <option>全部</option>
                            <option>其他</option>
                        </select>
                    </div>
                </li>

                <li><label>重点客户</label>
                    <div class="vocation">
                        <select class="select3">
                            <option>全部</option>
                            <option>其他</option>
                        </select>
                    </div>
                </li>

                <li><label>客户状态</label>
                    <div class="vocation">
                        <select class="select3">
                            <option>全部</option>
                            <option>其他</option>
                        </select>
                    </div>
                </li>

                <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="查询"/></li>

            </ul>


            <table class="tablelist">
                <thead>
                <tr>
                    <th><input name="" type="checkbox" value="" checked="checked"/></th>
                    <th>编号<i class="sort"><img src="${pageContext.request.contextPath}/resource/images/px.gif"/></i>
                    </th>
                    <th>标题</th>
                    <th>用户</th>
                    <th>籍贯</th>
                    <th>发布时间</th>
                    <th>是否审核</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input name="" type="checkbox" value=""/></td>
                    <td>20130908</td>
                    <td>王金平幕僚：马英九声明字字见血 人活着没意思</td>
                    <td>admin</td>
                    <td>江苏南京</td>
                    <td>2013-09-09 15:05</td>
                    <td>已审核</td>
                    <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink"> 删除</a></td>
                </tr>

                <tr>
                    <td><input name="" type="checkbox" value=""/></td>
                    <td>20130907</td>
                    <td>温州19名小学生中毒流鼻血续：周边部分企业关停</td>
                    <td>uimaker</td>
                    <td>山东济南</td>
                    <td>2013-09-08 14:02</td>
                    <td>未审核</td>
                    <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink">删除</a></td>
                </tr>

                <tr>
                    <td><input name="" type="checkbox" value=""/></td>
                    <td>20130906</td>
                    <td>社科院:电子商务促进了农村经济结构和社会转型</td>
                    <td>user</td>
                    <td>江苏无锡</td>
                    <td>2013-09-07 13:16</td>
                    <td>未审核</td>
                    <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink">删除</a></td>
                </tr>

                <tr>
                    <td><input name="" type="checkbox" value=""/></td>
                    <td>20130905</td>
                    <td>江西&quot;局长违规建豪宅&quot;：局长检讨</td>
                    <td>admin</td>
                    <td>北京市</td>
                    <td>2013-09-06 10:36</td>
                    <td>已审核</td>
                    <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink">删除</a></td>
                </tr>

                <tr>
                    <td><input name="" type="checkbox" value=""/></td>
                    <td>20130907</td>
                    <td>温州19名小学生中毒流鼻血续：周边部分企业关停</td>
                    <td>uimaker</td>
                    <td>山东济南</td>
                    <td>2013-09-08 14:02</td>
                    <td>未审核</td>
                    <td><a href="#" class="tablelink">查看</a> <a href="#" class="tablelink">删除</a></td>
                </tr>

                </tbody>
            </table>


        </div>

    </div>

    <script type="text/javascript">
        $("#usual1 ul").idTabs();
    </script>

    <script type="text/javascript">
        $('.tablelist tbody tr:odd').addClass('odd');
        $('#notefile').bind('change', function () {
            var a = $(this)[0].value.lastIndexOf("\\");
            $('#filename').text($(this)[0].value.substring(a + 1));
        });

        $("#selectTab").bind('change', function () {
            $.ajax({
                type: "get",
                url: "/admin/ajax_ctab",
                data: "id=" + $(this).val(),
                success: function (data) {
                        $("#selectCtab :not(:first-child)").remove();
                    if(data!=null){
                        $.each(data,function (k,v) {
                            $("#selectCtab").append("<option value='" + v.id + "'>" + v.ctabname + "</option>");
                        })
                    }

                }
            });
        });
    </script>


</div>


</body>

</html>
