<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<%
    ResourceBundle resource = ResourceBundle.getBundle("userInfo");
%>
<html>
<head>
    <title></title>
</head>
<body>
<header>
    <div id="logo"><a href="#"></a></div>
    <nav class="topnav" id="topnav">
        <a href="index"><span>首页</span><span class="en">Protal</span></a>
        <a href="about?userName=<%=resource.getString("userName")%>"><span>关于我</span><span class="en">About</span></a>
        <a href="slowLife?categoryName=生活"><span>慢生活</span><span class="en">Life</span></a>
        <a href="mood?userName=<%=resource.getString("userName")%>"><span>碎言碎语</span><span class="en">Doing</span></a>
        <a href="knowledge"><span>学无止境</span><span class="en">Learn</span></a>
        <a href="board?userName=<%=resource.getString("userName")%>"><span>留言版</span><span class="en">Board</span></a></nav>
    </nav>
</header>
</body>
</html>
