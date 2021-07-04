<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/13
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/login.css">

    <style>
        a{
            font-size: 10px;
        }

        body {
            background-image: url(../image/bg2.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
        }
    </style>
</head>


<body >


<form style="height: 500px" action="${pageContext.request.contextPath}/customer/addCustomer" class="login" method="post">
    <p>注册</p>
    <input type="text" placeholder="用户名" name="username" required>
    <input type="password" placeholder="密码" name="password" required>
    <input type="password" placeholder="确认密码" name="psw" required>
    <input type="text" placeholder="邮箱" name="email" required>
    <div align="right">
        <span style="color: red">${error}</span>
    </div>
    <input type="submit" class="btn" value="注 册">

</form>

</body>
</html>
