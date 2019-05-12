<%@ page import="java.util.Date" %>
<%@ page import="java.util.stream.IntStream" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%--
  Created by IntelliJ IDEA.
  User: jedrz
  Date: 12.05.2019
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="greeting.jsp" method="post">
    Name:<br><input type="text" name="name"><br>
    Last Name:<br><input type="text" name="lastName"><br>
    Gender:<br>
    <input type="radio" name="gender" value="male">Male<br>
    <input type="radio" name="gender" value="female">Female<br>
    <input type="radio" name="gender" value="other">Other<br>
    <input type="submit">
</form>

<jsp:useBean id="myUser" class="pl.jnowacki.User" scope="page"></jsp:useBean>
<jsp:setProperty name="myUser" property="name" value="jedrzej"></jsp:setProperty>


<c:if test="${1 > 0}">
    true
</c:if>

<ol>
    <c:forEach var="i" begin="0" end="7">
        <li>I'm number: ${i}</li>
    </c:forEach>
</ol>

<c:out value="asdasd"></c:out>

</body>
</html>
