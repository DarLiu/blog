<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    ResourceBundle resource = ResourceBundle.getBundle("userInfo");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <title>追寻阳光的日子</title>
    <link href="/static/css/base.css" rel="stylesheet">
    <link href="/static/css/index.css" rel="stylesheet">
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

    <script src="/static/js/modernizr.js"></script>

</head>

<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="banner" style="<%=resource.getString("bannerImage")%>">
    <section class="box">
        <ul class="texts">
            <p>灿烂的日子不剩多少</p>
            <p>新的重生将不远来临</p>
            <p>未来的生活充满遐想，原来是追寻阳光的日子。</p>
        </ul>
        <div class="avatar" style="<%=resource.getString("avatar")%>"><a href="#"><span><%=resource.getString("userName")%></span></a></div>
    </section>
</div>

<article>
    <h2 class="title_tj">
        <p>小记<span>生活</span></p>
    </h2>

    <%--文章列表--%>

    <div class="bloglist left">
        <c:forEach items="${lifeList}" var="life">
            <h3>${life.title}</h3>
            <ul>
                <p>${life.content}</p>
                <a title="/" href="getDetail?id=${life.id}" target="_blank" class="readmore">阅读全文>></a>
            </ul>
            <p class="dateview"><span><fmt:formatDate value="${article.time}"
                                                      pattern="yyyy-MM-dd hh:mm:ss"/></span><span>作者：${life.userName}</span><span>个人博客：[<a
                    href="#">追寻阳光的孩子</a>]</span></p>
        </c:forEach>
    </div>
    <%--  end 文章列表--%>
    <%--  右边的界面  --%>
    <jsp:include page="right.jsp"></jsp:include>
</article>
<jsp:include page="foot.jsp"/>
<script src="/static/js/silder.js"></script>
</body>
</html>