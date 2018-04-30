<%-- 
    Document   : delete
    Created on : Apr 30, 2018, 2:10:56 PM
    Author     : MEKAKANO
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        String id=request.getParameter("d");
       
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/megagiga", "root", "");
            Statement st = conn.createStatement();
            st.executeUpdate("DELETE FROM barang WHERE KodeBarang = '"+id+"'");
            response.sendRedirect("index.jsp");
        } catch(Exception e){}
        %>
    </body>
</html>
