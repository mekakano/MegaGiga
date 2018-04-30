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
	
	
	<ul class="menu">
    <li><a href="tambah.jsp"><img src="tambah.png" height="80px" border="0"></a></li>
    <li><a href="Beli.jsp"><img src="penjualan.png" height="80px" border="0"></a>
         <li><a href="Beli.jsp"><img src="pembelian.png" height="80px" border="0"></a>
        
    </li>
        </ul>
	
	<br />
	
	<br />
        <br />
	
	<br />
        <br />
	
	
        
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
                String Data = "select * from barang";
                rs = statement.executeQuery(Data);
            %>
            <table border="1" cellspacing="0" cellpadding="0" width="50%">
                <tr style="background-color: #f45959";">
                    <th>KodeBarang</th>
                    <th>NamaBarang</th>
                    <th>Harga Jual</th>
                    <th>Harga Beli</th>
                    <th>Satuan</th>
                    <th>Kategori</th>
                    <th>Aksi</th>
                </tr>
                <%
                while (rs.next()) {
                %>
                <tr >
                    <td><%=rs.getString("KodeBarang")%></td>
                    <td><%=rs.getString("NamaBarang")%></td>
                    <td><%=rs.getString("HargaJual")%></td>
                    <td><%=rs.getString("HargaBeli")%></td>
                    <td><%=rs.getString("Satuan")%></td>
                    <td><%=rs.getString("Kategori")%></td>
                    <td><a href="jualjual.jsp?u=<%=rs.getString("KodeBarang")%>" >Beli</a> </td>
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