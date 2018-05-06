<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>追寻阳光的日子</title>
    <link href="/static/css/base.css" rel="stylesheet">
    <link href="/static/css/index.css" rel="stylesheet">
    <!--[if lt IE 9]-->
    <script src="/static/js/modernizr.js"></script>
    <!--[endif]-->
    <style type="text/css">
        .bloglist ul p {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            line-clamp: 3;
            -webkit-line-clamp: 3;
            -webkit-box-orient: vertical;
        }
    </style>
</head>

<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="banner">
    <section class="box">
        <ul class="texts">
            <p>灿烂的日子不剩多少</p>
            <p>新的重生将不远来临</p>
            <p>未来的生活充满遐想，原来是追寻阳光的日子。</p>
        </ul>
        <div class="avatar"><a href="uploadAvator"><span>DarLiu</span></a></div>
    </section>
</div>

<article>
    <h2 class="title_tj">
        <p>文章<span>推荐</span></p>
    </h2>

    <%--文章列表--%>

    <div class="bloglist left">
        <c:forEach items="${articleList}" var="article">
            <h3>${article.title}</h3>
            <ul>
                <p>${article.content}</p>
                <a title="/" href="getDetail?id=${article.id}" target="_blank" class="readmore">阅读全文>></a>
            </ul>
            <p class="dateview"><span><fmt:formatDate value="${article.time}"
                                                      pattern="yyyy-MM-dd hh:mm:ss"/></span><span>作者：${article.userName}</span><span>个人博客：[<a
                    href="#">追寻阳光的孩子</a>]</span></p>
        </c:forEach>
    </div>
    <%--  end 文章列表--%>
    <%--  右边的界面  --%>
    <jsp:include page="right.jsp" flush="true"></jsp:include>
</article>
<jsp:include page="foot.jsp"/>
<script src="/static/js/silder.js"></script>
</body>
</html>