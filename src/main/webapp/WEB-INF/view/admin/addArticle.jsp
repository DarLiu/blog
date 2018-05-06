<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加文章</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/js/wangEditor.min.js"></script>
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
                <li >
                    <a href="messageBoard">留言管理</a>
                </li>
                <li>
                    <a href="mood">心情管理</a>
                </li>
            </ul>

            <form class="form-horizontal" action="addArticle" method="post" enctype="multipart/form-data">
                <div class="control-group">
                    <label class="control-label" >标题</label>
                    <div class="controls">
                        <textarea   name="title"   rows="1" style="width: 100%;"></textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" >分类</label>
                    <div class="controls">
                        <textarea   name="categoryName"   rows="1" style="width: 100%;"></textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" >内容</label>
                    <div class="controls" id="wangEditor">
                    </div>
                    <textarea id="text1"  name="content" hidden=""></textarea>
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
<script type="text/javascript">
    var E = window.wangEditor;
    var editor = new E('#wangEditor');
    //隐藏网络图片的上传
    editor.customConfig.showLinkImg = false
    //名称
    editor.customConfig.uploadFileName = 'myFileName'
    //开启本地图片上传
    editor.customConfig.uploadImgServer = '/upload/'

    var $text1=$("#text1");
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        $text1.val(html)
    }

    //上传图片
    editor.customConfig.uploadImgHooks = {
        customInsert: function (insertImg, result, editor) {
            var url =result.url;
            alert(url);
            insertImg(url);
        }
    }
    editor.create()
    // 初始化 textarea 的值
    $text1.val(editor.txt.html())
</script>
</body>
</html>
