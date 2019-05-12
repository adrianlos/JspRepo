<%@ page import="java.util.Date" %>
<%@ page import="java.util.stream.IntStream" %>
<%--
  Created by IntelliJ IDEA.
  User: jedrz
  Date: 12.05.2019
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form>
    Name:<br><input type="text" name="name"><br>
    Last Name:<br><input type="text" name="lastName"><br>
    Gender:<br>
    <input type="radio" name="gender" value="male">Male<br>
    <input type="radio" name="gender" value="female">Female<br>
    <input type="radio" name="gender" value="other">Other<br>
    <input type="submit">
</form>

</body>
</html>
