<%--
  Created by IntelliJ IDEA.
  User: jedrz
  Date: 12.05.2019
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
    <jsp:useBean id="myUser" class="pl.jnowacki.User" scope="page"></jsp:useBean>
    <jsp:setProperty name="myUser" property="*"></jsp:setProperty>

    <h1>Hello <jsp:getProperty name="myUser" property="name"></jsp:getProperty></h1>
    <h1>Your last name <jsp:getProperty name="myUser" property="lastName"></jsp:getProperty></h1>
    <h1>Your gender <jsp:getProperty name="myUser" property="gender"></jsp:getProperty></h1>
</body>
</html>