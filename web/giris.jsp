<%-- 
    Document   : giris
    Created on : Mar 14, 2020, 7:20:22 PM
    Author     : yusifov
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id= "giris" scope="session" class="folder.kisi" />
        <jsp:setProperty name="giris" property="name"/>
        <jsp:setProperty name="giris" property="pass"/>
        <%
            response.sendRedirect(giris.next());
         %>
    </body>
</html>
