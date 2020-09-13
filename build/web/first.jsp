
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random" %>
<%@page isErrorPage="true" %>
<%@page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                margin: 0px;
                padding: 0px;
            }
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%!
            int a = 50;
            int b = 10;
            String name = "india";

            public int dosum() {
                return a + b;
            }

            public String reverse() {
                StringBuffer br = new StringBuffer(name);
                return br.reverse().toString();
            }
        %>
        <%
            out.println(a);
            out.println("<br>");
            out.println(b);
            out.println("<br>");
            out.println("SUM is " + dosum());
            out.println("<br>");
            out.println("REVERSE is " + reverse());
            out.println("<br>");
        %>
        <h1 style="color: pink; background: green">Sum is: <%= dosum()%></h1>

        <h1>Random number: 
            <%
                Random r = new Random();
                int n = r.nextInt(10);
            %>
            <%= n%>

            <%@include file="header.jsp" %>
        </h1>
    </body>
</html>
