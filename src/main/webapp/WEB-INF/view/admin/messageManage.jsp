<%--
  Created by IntelliJ IDEA.
  User: 李雪琴
  Date: 2018/5/5
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>留言管理</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <ul class="nav nav-tabs">
                <li >
                    <a href="user">用户管理</a>
                </li>
                <li>
                    <a href="article">文章管理</a>
                </li>
                <li>
                    <a href="category">分类管理</a>
                </li>
                <li class=" active">
                    <a href="messageBoard">留言管理</a>
                </li>
                <li>
                    <a href="mood">心情管理</a>
                </li>
            </ul>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>用户名</th>
                    <th>留言</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${!empty messageList }">
                    <c:forEach items="${messageList}" var="message">
                        <tr>
                            <td>${message.id}</td>
                            <td>${message.userName}</td>
                            <td>${message.content }</td>
                            <td>
                                <a href="#">添加</a>
                                <a href="#">编辑</a>
                                <a href="deleteMessage?id=${message.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>
            </table>

            <%--   分页     --%>
            <nav style="text-align: center">
                <ul class="pagination   pagination-lg">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">&raquo;</a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
</html>
