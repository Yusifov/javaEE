<%-- 
    Document   : kitab_ekle
    Created on : Mar 14, 2020, 8:22:13 PM
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
        <h1>Kitab ekle</h1>
        <jsp:useBean id= "kitab_ekle" scope="session" class="folder.goruntu_isleme" />
        <jsp:setProperty name="kitab_ekle" property="kitab_adi"  />
        <jsp:setProperty name="kitab_ekle" property="kitab_url" />
    </body>
</html>
