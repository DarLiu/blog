<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章管理</title>
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
                <li>
                    <a href="user">用户管理</a>
                </li>
                <li class="active">
                    <a href="article">文章管理</a>
                </li>
                <li>
                    <a href="category">分类管理</a>
                </li>
            </ul>
            <table class="table table-bordered">
                <tbody>
                <tr>
                    <th>ID</th>
                    <th>标题</th>
                    <th>分类</th>
                    <th>操作</th>
                </tr>
                <c:if test="${!empty articleList }">
                    <c:forEach items="${articleList}" var="article">
                        <tr>
                            <td>${article.id}</td>
                            <td>${article.title }</td>
                            <td>${article.categoryName }</td>

                            <td>
                                <a href="toAddArticle">添加</a>
                                <a href="getArticleById?id=${article.id}">编辑</a>
                                <a href="deleteArticle?id=${article.id }">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>
            </table>

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
