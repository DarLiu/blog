<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加心情</title>
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
                <li >
                    <a href="article">文章管理</a>
                </li>
                <li>
                    <a href="category">分类管理</a>
                </li>
                <li >
                    <a href="messageBoard">留言管理</a>
                </li>
                <li class=" active">
                    <a href="mood">心情管理</a>
                </li>
            </ul>

            <form class="form-horizontal" action="addMood">
                <div class="control-group">
                    <label class="control-label" >用户名</label>
                    <div class="controls">
                        <textarea   name="userName"   rows="1" style="width: 100%;"></textarea>
                    </div>
                </div>



                <div class="control-group">
                    <label class="control-label" >内容</label>
                    <div class="controls">
                        <textarea   name="content"   rows="20" style="width: 100%;"></textarea>
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
