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
  <title>Welcome</title>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <style>

    body {
        background-image: url(./image/bg2.jpg) ;
        background-repeat: no-repeat;
        background-size: cover;
        background-attachment: fixed;
    }

    .login {
      position: absolute;
      top: 50%;
      margin-top: -200px;
      left: 50%;
      margin-left: -200px;
      /* absolute居中的一种方法 */
      background-color:  rgb(73 32 32 / 40%);
      width: 400px;
      height: 400px;
      border-radius: 25px;
      text-align: center;
      padding: 5px 40px;
      box-sizing: border-box;
      /* 这样padding就不会影响大小 */
    }

    p{
      font-size: 42px;
      font-weight: 600;
    }

    input{
      background-color: whitesmoke;
      width: 100%;
      height: 48px;
      margin-bottom: 10px;
      border: none;
      border-bottom: 2px solid silver;
      /* 下面的会覆盖上面的步伐 */
      outline: none;
      font-size: 22px;
    }

    .btn{
      background-color:  rgb(73 32 32 / 40%);
      width: 38%;
      height: 48px;
      border-radius: 8px;
      margin-top: 40px;
      font-size: 28px;
      font-weight: 600;
      color: white;
    }
    .btn:hover{
      background-color: #59c2a0;

    }
  </style>
</head>
<body >
<div class="login">
  <p>Welcome To GBook</p>
  <a href="${pageContext.request.contextPath}/customer/toCustLogin">
    <input type="submit" class="btn" value="点击登录" >
  </a>
</div>
</body>
</html>
