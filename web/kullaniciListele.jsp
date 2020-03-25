<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : kullaniciListele
    Created on : Mar 14, 2020, 7:39:22 PM
    Author     : yusifov
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String driverName = "org.apache.derby.jdbc.ClientDriver";
    String dburl = "jdbc:derby://localhost:1527/deneme";
    String users = "abc";
    String pass = "123";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font color="#FF00FF"><strong>Select query in JSP</strong></font></h2>
<table align="center" cellpadding="4" cellspacing="4">
<tr>

</tr>
<tr bgcolor="#008000">
<td><b>adi</b></td>
<td><b>sifre</b></td>
<td><b>isim</b></td>
<td><b>tel </b></td>
</tr>
<%
try {
connection =  DriverManager.getConnection(dburl, users, pass);
statement = connection.createStatement();
String sql = "SELECT * FROM users";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {
%>
<tr bgcolor="#8FBC8F">

<td><%=resultSet.getString("adi")%></td>
<td><%=resultSet.getString("sifre")%></td>
<td><%=resultSet.getString("isim")%></td>
<td><%=resultSet.getString("tel")%></td>


</tr>

<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>