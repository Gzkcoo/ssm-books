<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改页面</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <%--标题栏--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改书籍</small>
                </h1>
            </div>
        </div>



        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">

            <input type="hidden" name="bookID" value="${books.bookID}">
            <div class="form-group">
                <label >书籍名称</label>
                <input type="text" name="bookName" value="${books.bookName}" class="form-control" required>
            </div>
            <div class="form-group">
                <label >书籍数量</label>
                <input type="text" name="bookCounts" value="${books.bookCounts}" class="form-control" required>
            </div>
            <div class="form-group">
                <label >书籍价格</label>
                <input type="text" name="bookPrice" value="${books.bookPrice}" class="form-control" required>
            </div>
            <div class="form-group">
                <label >书籍描述</label>
                <input type="text" name="detail" value="${books.detail}" class="form-control" required>
            </div>
            <div class="form-group">
                <input type="submit"  class="form-control" value="修改">
            </div>


        </form>


    </div>

</div>
</body>
</html>
