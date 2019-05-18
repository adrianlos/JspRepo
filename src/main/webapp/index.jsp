<%@ page import="java.util.Date" %>
<%@ page import="java.util.stream.IntStream" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="pl.jnowacki.Album" %>
<%@ page import="java.util.ArrayList" %>
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

<form method="post">
    <input type="hidden" name="submitted" value="true">
    Title:<br><input type="text" name="title"><br>
    Artist:<br><input type="text" name="artist"><br>
    Year:<br><input type="text" name="year"><br>
    Genre:<br>
    <input type="radio" name="genre" value="rock">Rock<br>
    <input type="radio" name="genre" value="blues">Blues<br>
    <input type="radio" name="genre" value="soul">Soul<br>
    <input type="radio" name="genre" value="classic">Classic<br>
    <input type="radio" name="genre" value="funk">Funk<br>
    <input type="radio" name="genre" value="other">Other<br>
    <input type="submit">
</form>

<%
    if(session.getAttribute("albums") == null) {
        session.setAttribute("albums", new ArrayList<Album>());
    }
%>

<c:if test="${param.submitted}">
    <jsp:useBean id="newAlbum" class="pl.jnowacki.Album"/>
    <jsp:setProperty name="newAlbum" property="*"/>

    <c:choose>
        <c:when test="${newAlbum.valid}">
            <%
                ((List<Album>)session.getAttribute("albums")).add(newAlbum);
            %>
        </c:when>
        <c:otherwise>
        Album data invalid!<br>
    </c:otherwise>
    </c:choose>
</c:if>

<c:if test="${albums.size() > 0}">
    Albums:
    <table>
        <tr>
        <th>Title</th>
        <th>Artist</th>
        <th>Year</th>
        <th>Genre</th>
        <th>Created on</th>
        </tr>
    <c:forEach items="${albums}" var="album">
        <tr>
            <td>${album.title}</td>
            <td>${album.artist}</td>
            <td>${album.year}</td>
            <td>${album.genre}</td>
            <td>${album.addedDate}</td>
        </tr>
    </c:forEach>

    </table>
</c:if>

</body>
</html>
