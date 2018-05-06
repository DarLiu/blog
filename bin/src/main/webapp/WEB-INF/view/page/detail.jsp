<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>详情页</title>
    <link href="/static/css/base.css" rel="stylesheet">
    <link href="/static/css/new.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/static/js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<jsp:include page="head.jsp"/>
<article class="blogs">
    <h1 class="t_nav">
        <span>您当前的位置：<a href="#">首页</a>&nbsp;&gt;&nbsp;<a href="#">慢生活</a>&nbsp;&gt;&nbsp;<a href="#">日记</a>
        </span>
        <a href="#" class="n1">网站首页</a><a href="#" class="n2">日记</a>
    </h1>

    <div class="index_about">
        <h2 class="c_titile">${article.title}</h2>
        <p class="box_c">
            <span class="d_time">发布时间：<fmt:formatDate value="${article.time}" pattern="yyyy-MM-dd HH:mm:ss"/>  </span>
            <span>编辑：${article.userName}</span>
            <span>文章分类：<a href="#">${article.categoryName}</a></span>
        </p>
        <ul class="infos">
            <p>${article.content}</p>
        </ul>
        <p><span>关键字词</span>：爱情,犯错,原谅,分手</p>
        <div class="ad"></div>
        <div class="nextinfo">
            <p>上一篇：<a href="#">程序员应该如何高效的工作学习</a></p>
            <p>下一篇：<a href="#">柴米油盐的生活才是真实</a></p>
        </div>
    </div>

    <jsp:include page="right.jsp"></jsp:include>
</article>


<jsp:include page="foot.jsp"/>
<script src="/static/js/silder.js"></script>
</body>
</html>
