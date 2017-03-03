<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <li><a href="computer.jsp">文件管理</a></li>
    <li><a href="#">列表</a></li>
    </ul>
    </div>
    
    
    <table class="filetable">
    
    <thead>
    	<tr>
        <th width="25%">名称</th>
        <th width="11%">修改日期</th>
        <th width="10%">类型</th>
        <th width="6%">大小</th>
        <th width="48%"></th>
        </tr>    	
    </thead>
    
    <tbody>

    <c:forEach var="tools" items="${tools}">
        <tr>
            <td><img src="${pageContext.request.contextPath}/resource/images/f01.png" />${tools.name}</td>
            <td><fmt:formatDate value="${tools.updateDate}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
            <td>${tools.type}</td>
            <td class="tdlast">${tools.size} KB</td>
            <td></td>
        </tr>
    </c:forEach>
    
    <%--	<tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f01.png" />Adobe Dreamweaver CS5简体中文绿色</td>
        <td>2013/10/14 17:38</td>
        <td>文件夹</td>
        <td class="tdlast">0 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f01.png" />Adobe Photoshop CS5</td>
        <td>2013/10/14 17:38</td>
        <td>文件夹</td>
        <td class="tdlast">30 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f01.png" />PS形状</td>
        <td>2013/10/14 17:38</td>
        <td>文件夹</td>
        <td class="tdlast">0 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f01.png" />Microsoft Office 2007中文版</td>
        <td>2013/10/14 17:38</td>
        <td>文件夹</td>
        <td class="tdlast">0 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f02.png" />SWiSHmax.rar</td>
        <td>2013/10/14 17:38</td>
        <td>压缩文件</td>
        <td class="tdlast">125 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f02.png" />autodesk3dsmax.zip</td>
        <td>2013/10/14 17:38</td>
        <td>压缩文件</td>
        <td class="tdlast">125 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f02.png" />Adobe Photoshop CS5.rar</td>
        <td>2013/10/14 17:38</td>
        <td>压缩文件</td>
        <td class="tdlast">125 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f03.png" />Thunder7.2.7.3496.exe</td>
        <td>2013/10/14 17:38</td>
        <td>程序</td>
        <td class="tdlast">125 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f03.png" />福昕阅读器_5.1.0.1117.exe</td>
        <td>2013/10/14 17:38</td>
        <td>程序</td>
        <td class="tdlast">125 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f04.png" />libeay32.ai</td>
        <td>2013/10/14 17:38</td>
        <td>设计软件</td>
        <td class="tdlast">125 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f05.png" />php.ini.xls</td>
        <td>2013/10/14 17:38</td>
        <td>电子表格</td>
        <td class="tdlast">120 KB</td>
        <td></td>
        </tr>
        
        <tr>
        <td><img src="${pageContext.request.contextPath}/resource/images/f06.png" />pws-php5cgi.reg</td>
        <td>2013/10/14 17:38</td>
        <td>注册表</td>
        <td class="tdlast">100 KB</td>
        <td></td>
        </tr>--%>
    
    </tbody>
    
    
    
    
    </table>
    
    
    
   

</body>

</html>
