<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍支付</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .pay {
            height:280px;
            background-image: url(../image/erwei.jpg);
            background-repeat: no-repeat;
            margin-left: 160px;
        }
    </style>
</head>
<body>

<div class="container">
    <%--标题栏--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small style="margin: auto">扫码支付---《${name}》</small>
                </h1>
            </div>
        </div>
    </div>
</div>

<div class="pay"></div>
<a href="${pageContext.request.contextPath}/book/allBookCust?flag=y&&name=${name}" style="margin-left: 230px">
    <input type="submit" class="btn" value="确认支付" >
</a>

</body>
</html>
