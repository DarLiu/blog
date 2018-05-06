<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<article class="aboutcon">
    <h1 class="t_nav"><span>${user.shortWord}</span><a href="#" class="n1">网站首页</a><a href="#" class="n2">关于我</a></h1>
    <div class="about left">
        <h2>Just about me</h2>
        <ul>
            <p>杨青，女，一个80后草根女站长！09年入行，从业已经有三四年。从搬砖一样的生活方式换成了现在有“单”而居的日子。当然这个单不是单身的单，跟我的职业相比，爱情脱单并不是问题！虽然极尽苛刻的征婚条件但也远不及客户千奇百怪的要求。告别了朝九晚五，躲过了风吹日晒，虽然不再有阶梯式的工资，但是偶尔可以给自己放放假，挽着老公，一起轻装旅行。</p>
            <p>${user.introduce}</p>
            <p>杨青，女，一个80后草根女站长！09年入行，从业已经有三四年。从搬砖一样的生活方式换成了现在有“单”而居的日子。当然这个单不是单身的单，跟我的职业相比，爱情脱单并不是问题！虽然极尽苛刻的征婚条件但也远不及客户千奇百怪的要求。告别了朝九晚五，躲过了风吹日晒，虽然不再有阶梯式的工资，但是偶尔可以给自己放放假，挽着老公，一起轻装旅行。</p>
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
