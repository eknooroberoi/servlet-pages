
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Taglib example</title>
    </head>
    <body>
        <h1>Taglib Directive tutorial:</h1>
        <hr>
        <c:set var="name" value="eknoor india"></c:set>
        <c:out value="${name}"></c:out>
        <c:if test="${3>2}">
            <h2>This is true</h2>
        </c:if>

        <%!
            int n1 = 23;
            int n2 = 0;
            String content=null;
        %>
        <%
            int division = n1 / n2;
        %>
        <h1>division = <%=division%></h1>
        <%--<%= content.length() %>--%>
    </body>
</html>
