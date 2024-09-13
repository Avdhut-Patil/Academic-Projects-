<%-- 
    Document   : logout
    Created on : 10 Apr, 2021, 1:26:08 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%
          //  request.removeAttribute("");
            session.removeAttribute("userid");
            session.invalidate();
            response.sendRedirect("index.jsp");

        %>

    </body>
</html>
