<%--
  Created by IntelliJ IDEA.
  User: 李雪琴
  Date: 2018/4/27
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新文章</title>
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
                <li class=" active">
                    <a href="article">文章管理</a>
                </li>
                <li>
                    <a href="category">分类管理</a>
                </li>
            </ul>

            <form class="form-horizontal" action="updateArticle" method="post">

                <div class="control-group">
                    <label class="control-label" >序号</label>
                    <div class="controls">
                        <textarea   name="id"   rows="1" style="width: 100%;">${article.id}</textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" >标题</label>
                    <div class="controls">
                        <textarea   name="title"   rows="1" style="width: 100%;">${article.title}</textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" >分类</label>
                    <div class="controls">
                        <textarea   name="categoryName"   rows="1" style="width: 100%;">${article.categoryName}</textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" >内容</label>
                    <div class="controls">
                        <textarea   name="content"   rows="20" style="width: 100%;">${article.content}</textarea>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn">发表</button>
                    </div>
                </div>
            </form>


        </div>
    </div>
</div>
</body>
</html>
