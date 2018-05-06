<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>留言板</title>
    <link href="/static/css/base.css" rel="stylesheet">
    <link href="/static/css/mood.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="/static/js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>

<div class="moodlist">
    <h1 class="t_nav"><span>你们给我的，也许有一天我还记着。</span>
        <a href="#" class="n1">网站首页</a><a href="#" class="n2">留言板</a>
    </h1>
    <div class="bloglist">
        <c:forEach items="${messageList}" var="message">
            <ul class="arrow_box">
                <div class="sy">
                    <p> ${message.content}</p>
                </div>
                <span class="dateview"><fmt:formatDate value="${message.time}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
            </ul>
        </c:forEach>
    </div>

    <div class="bloglist">
        <ul class="arrow_box">
            <div class="sy">
                <p><textarea id="inputContent" cols="50" rows="8"
                             style="width: 700px;height: 80px;border-radius: 4px;"></textarea></p>
                <%String content=request.getParameter("textarea");
                    System.out.println("获取的content："+content);
                %>
                <a  id="subMessage" href="javascript:void(0)"  onclick="myClick()" style="position: absolute;display: block;left: 650px;top: 116px;width: 40px;height: 20px;color: lightskyblue;font-size: 15px;">留言</a>
            </div>
        </ul>
    </div>

    <%--    分页   --%>
    <div class="page">
        <a title="Total record"><b>&lt;&lt;</b></a><b>1</b><a href="#">2</a><a href="#">&gt;</a><a href="#">&gt;&gt;</a>
    </div>

    <%--  写留言的部分  开始--%>
    <%--  写留言部分    结束--%>

</div>
<script>
    function myClick() {
        var msg = document.getElementById("inputContent").value;
        if(msg==null||msg==""){
            alert("输入不能为空");
        }else{
            window.location.href = "leaveMessage?userName=DarLiu&&content=" + msg;
        }
    }
</script>
<jsp:include page="foot.jsp"></jsp:include>
<script src="/static/js/silder.js"></script>
</body>
</html>