<%@ page import="java.util.ResourceBundle" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ResourceBundle resource = ResourceBundle.getBundle("userInfo");
%>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>关于我</title>
    <link href="/static/css/base.css" rel="stylesheet">
    <link href="/static/css/about.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/static/js/modernizr.js"></script>
    <![endif]-->
    <link href='http://fonts.googleapis.com/css?family=Architects+Daughter' rel='stylesheet' type='text/css'>
</head>
<body>
<jsp:include page="head.jsp"/>
<article class="aboutcon" style="<%=resource.getString("aboutImage")%>">
    <h1 class="t_nav"><span>${user.shortWord}</span><a href="#" class="n1">网站首页</a><a href="#" class="n2">关于我</a></h1>
    <div class="about left">
        <h2>Just about me</h2>
        <ul>
            <p>${user.introduce}</p>
        </ul>
    </div>
    <aside class="right">
        <div class="about_c">
            <p>网名：<span>${user.userName}</span> | 追寻阳光的孩子</p>
            <p>姓名： ${user.realName}</p>
            <p>生日：<fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/>  </p>
            <p>籍贯：${user.nativePlace}</p>
            <p>现居：${user.nowPlace}</p>
            <p>职业：${user.work}</p>
            <p>喜欢的书：${user.likeBook}</p>
            <p>喜欢的音乐：${user.likeMusic}</p>
        </div>
    </aside>
</article>
<jsp:include page="foot.jsp"/>>
<script src="/static/js/silder.js"></script>
</body>
</html>
