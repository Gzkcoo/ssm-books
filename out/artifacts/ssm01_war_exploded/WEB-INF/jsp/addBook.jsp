<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/13
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加书籍</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <%--标题栏--%>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/addBook" method="post">
            <div class="form-group">
                <label >书籍名称</label>
                <input type="text" name="bookName" class="form-control" required>
            </div>
            <div class="form-group">
                <label >书籍数量</label>
                <input type="text" name="bookCounts" class="form-control" required>
            </div>
            <div class="form-group">
                <label >书籍价格</label>
                <input type="text" name="bookPrice" class="form-control" required>
            </div>
            <div class="form-group">
                <label >书籍描述</label>
                <input type="text" name="detail" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="submit"  class="form-control" value="添加">
            </div>
        </form>
    </div>




</div>
</body>
</html>
