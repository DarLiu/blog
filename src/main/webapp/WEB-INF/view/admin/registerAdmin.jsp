<%--
  Created by IntelliJ IDEA.
  User: 李雪琴
  Date: 2018/4/13
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
<form action="/admin/checkAdminRegister" method="post">
    管理员：<input type="text" name="name"><br>
    密码：<input type="password" name="password"><br>
    重复密码：<input type="password" name="rePassword"><br>
    <input type="submit" value="注册">
</form>
</body>
</html>
