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
    <title>登录</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/login.css">

    <style>
        a{
            font-size: 18px;
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
<%
    String success = (String)request.getAttribute("success");
    if ("addsuccess".equals(success)) {
%>
<script type="text/javascript" language="javascript">
    alert("注册成功！");
</script>
<%
    } else if ("uqdatesuccess".equals(success)){

%>
<script type="text/javascript" language="javascript">
    alert("修改成功！");
</script>
<%
    }
%>

<form action="${pageContext.request.contextPath}/customer/login" class="login" method="post">
    <p>Login</p>
    <input type="text" placeholder="用户名" name="username" required>

    <input type="password" placeholder="密码" name="password" required>
    <div align="right">
        <span style="color: red">${error}</span>
        <a href="${pageContext.request.contextPath}/customer/toAddCustomer" style="color: gray" >点击注册</a>
    </div>
    <input type="submit" class="btn" value="登  录">

</form>

</body>
</html>
