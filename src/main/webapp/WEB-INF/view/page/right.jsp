<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    ResourceBundle resource = ResourceBundle.getBundle("userInfo");
%>
<html>
<head>
    <title></title>
    <link href="/static/css/base.css" rel="stylesheet">
    <link href="/static/css/index.css" rel="stylesheet">
</head>
<body>
<aside class="right">
    <div class="weather">
        <iframe width="250" scrolling="no" height="60" frameborder="0" allowtransparency="true"
                src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=1"></iframe>
    </div>
    <div class="news">
        <h3>
            <p>最新<span>文章</span></p>
        </h3>
        <ul class="rank">
            <c:forEach items="${rankList}" var="article">
                <li><a href="getDetail?id=${article.id}"  target="_blank">${article.title}</a></li>
            </c:forEach>
        </ul>

        <h3 class="links">
            <p>友情<span>链接</span></p>
        </h3>
        <ul class="website">
            <li><a href="/">个人博客</a></li>
            <li><a href="https://weibo.com/3579493124/"><%=resource.getString("userName")%>个人微博</a></li>
            <li><a href="#">努力生活的孩子</a></li>
            <li><a href="#">我们一起向着阳光~</a></li>
        </ul>
    </div>
    <!-- Baidu Button BEGIN -->
    <div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
        <a class="bds_tsina"></a>
        <a class="bds_qzone"></a>
        <a class="bds_tqq"></a>
        <a class="bds_renren"></a>
        <span class="bds_more"></span>
        <a class="shareCount"></a>
    </div>
    <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=6574585"></script>
    <script type="text/javascript" id="bdshell_js"></script>
    <script type="text/javascript">
        document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date() / 3600000)
    </script>
    <!-- Baidu Button END -->
    <a href="/" class="weixin"> </a>
</aside>
</body>
</html>
