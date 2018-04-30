<%-- 
    Document   : Beli
    Created on : Apr 30, 2018, 3:39:19 PM
    Author     : MEKAKANO
--%>

<%-- 
    Document   : index
    Created on : Apr 30, 2018, 12:56:31 PM
    Author     : MEKAKANO
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
<link href="2.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-image: url(bg.jpg);
	background-repeat: no repeat;
	height: 100%;
	width: 100%;
	background-size: 100%;
}
-->
</style>
    </head>
    <body>
        <img src="yarddd.png" height="140px" align="left"/> 
        
        <br/>
	<br/>
	<br/>
        <br/>
	<br/>
	<br/>
	<br/>
	<br/>
	<br/>
	
        <br/>
	<br/>
	
	
	
	<ul class="menu">
    <li><a href="index.jsp"><img src="home.png" height="80px" border="0"></a></li>
	
	<br />
        <br />
	
	<br />
        <br />
	
	<br/>
	
	
	
	
        
        <div id="con">
            
           
            <p></p>
            <%
            try {
                String Host = "jdbc:mysql://localhost:3306/megagiga";
                Connection connection = null;
                Statement statement = null;
                ResultSet rs = null;
                Class.forName("com.mysql.jdbc.Driver");
                connection = DriverManager.getConnection(Host, "root", "");
                statement = connection.createStatement();
                String Data = "select * from penjualan";
                rs = statement.executeQuery(Data);
            %>
            <table border="1" cellspacing="0" cellpadding="0" width="50%">
                <tr style="background-color: #f45959";">
                    <th>Nomor Faktur</th>
                    <th>Tanggal Faktur</th>
                    <th>Nama Konsumen</th>
                    <th>Kode Barang</th>
                    <th>Jumlah</th>
                    <th>Harga Satuan</th>
                    <th>Harga Total</th>
                </tr>
                <%
                while (rs.next()) {
                %>
                <tr>
                    <td><%=rs.getString("NomorFaktur")%></td>
                    <td><%=rs.getString("TanggalFaktur")%></td>
                    <td><%=rs.getString("NamaKonsumen")%></td>
                    <td><%=rs.getString("KodeBarang")%></td>
                    <td><%=rs.getString("Jumlah")%></td>
                    <td><%=rs.getString("HargaSatuan")%></td>
                     <td><%=rs.getString("HargaTotal")%></td>
                    
                </tr>
                <%   }    %>
            </table>
            
            </br>
            </br>
            
            
            <%
                rs.close();
                statement.close();
                connection.close();
            } catch (Exception ex) {
                out.println("Can't connect to database.");
            }
            %>
        </div>
    </body>
</html>
