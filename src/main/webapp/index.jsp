<%@ page import="java.util.stream.IntStream" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
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

<%!
    private int[] createTable(int a, int b) {
        return IntStream.rangeClosed(a, b).toArray();
    }

    private String time = "time";
%>

<ol>
    <%
        int[] myTable = createTable(21, 37);

        for (int i = 0; i < myTable.length; i++) { %>
            <li><%= myTable[i] + " " + time + (myTable[i] != 1 ? "s" : "")%></li>
    <%
        }
    %>
</ol>

</body>
</html>
