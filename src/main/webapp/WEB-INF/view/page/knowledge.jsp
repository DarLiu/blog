<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>学无止境</title>
    <link href="static/css/base.css" rel="stylesheet">
    <link href="/static/css/learn.css" rel="stylesheet">
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
    <!--[if lt IE 9]>
    <script src="/static/js/modernizr.js"></script>


    <![endif]-->
</head>
<body>
<jsp:include page="head.jsp"/>
<article class="blogs">
    <h1 class="t_nav"><span>我们长路漫漫，只因学无止境。 </span><a href="#" class="n1">网站首页</a><a href="#" class="n2">学无止境</a></h1>
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
        <%--    分页   --%>
        <div class="page">
            <a title="Total record"><b>&lt;&lt;</b></a><b>1</b><a href="#">2</a><a href="#">&gt;</a><a href="#">&gt;&gt;</a>
        </div>
    </div>
    <%--  end 文章列表--%>
    <jsp:include page="right.jsp"></jsp:include>
</article>
<jsp:include page="foot.jsp"/>
<%--导航切换选中状态的--%>
<script src="/static/js/silder.js"></script>
</body>
</html>