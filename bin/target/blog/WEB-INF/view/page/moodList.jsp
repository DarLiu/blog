<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>岁言碎语</title>
    <link href="/static/css/base.css" rel="stylesheet">
    <link href="/static/css/mood.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/static/js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>

<div class="moodlist">
    <h1 class="t_nav"><span>删删写写，回回忆忆，虽无法行云流水，却也可碎言碎语。</span>
        <a href="#" class="n1">网站首页</a><a href="#" class="n2">碎言碎语</a>
    </h1>
    <div class="bloglist">
        <c:forEach items="${moodList}" var="mood">
        <ul class="arrow_box">
            <div class="sy">
                <img src="/static/img/001.png">
                <p> ${mood.moodContent}</p>
            </div>
            <span class="dateview"><fmt:formatDate value="${mood.time}" pattern="yyyy-MM-dd"/></span>
        </ul>
        </c:forEach>
    </div>
    <%--    分页   --%>
    <div class="page">
        <a title="Total record"><b>&lt;&lt;</b></a><b>1</b><a href="#">2</a><a href="#">&gt;</a><a href="#">&gt;&gt;</a>
    </div>

</div>
<jsp:include page="foot.jsp"></jsp:include>
<script src="/static/js/silder.js"></script>
</body>
</html>