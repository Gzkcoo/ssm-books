<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GBook</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<%
    String flag = (String)request.getAttribute("flag");
    if ("y".equals(flag)) {
%>
<script type="text/javascript" language="javascript">
    alert("购买成功！");
</script>
<%
    }
%>


<div class="container">

    <%--标题栏--%>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>Welcom To GBook</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/customer/toUpdateCustomer">修改密码</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBookCust">显示全部书籍</a>
            </div>
            <div class="col-md-4 column"></div>
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/book/queryBookCust" method="post" style="float: right" class="form-inline">
                    <span style="color: red;font-weight: bold">${error}</span>
                    <input type="text" name="queryBookName" class="form-control" placeholder="请输入要输入的书籍名称">
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>
            </div>

        </div>


    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>书籍标号</th>
                    <th>书籍名称</th>
                    <th>书籍数量</th>
                    <th>书籍价格</th>
                    <th>书籍详情</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.bookPrice}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toPayBook?name=${book.bookName}">购买</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>
    </div>


</div>

</body>
</html>
