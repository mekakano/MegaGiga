<%-- 
    Document   : update
    Created on : Apr 30, 2018, 1:38:34 PM
    Author     : MEKAKANO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
        <style type="text/css">
            *{margin:auto;padding:0;}
            #con2{width:500px;padding:30px;}
            p{margin-bottom:10px;}
            label{display:inline-block;width:150px;}
        </style>
    </head>
    <body>
         <img src="yarddd.png" height="140px" align="left"/> 
        
        <br/>
	<br/>
	<br/>
	
	
	<br />
	
	<br />
        <br />
	
	<br />
       
	
	
        <div id="con2">
            <h3 align="center">Update Data</h3><p></p>
            <form action="" method="post">
                 <%
                try {
                    String Host = "jdbc:mysql://localhost:3306/megagiga";
                    Connection connection = null;
                    Statement statement = null;
                    ResultSet rs = null;
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection(Host, "root", "");
                    statement = connection.createStatement();
                    String u=request.getParameter("u");
                    
                    String Data = "select * from barang where KodeBarang='"+u+"'";
                    rs = statement.executeQuery(Data);
                    while (rs.next()) {
                %>   
                <p>
                    <label></label><input type="hidden" name="KodeBarang" value='<%=rs.getString("KodeBarang")%>'/>
                </p>
                <p>
                    <label>Nama</label><input type="text" name="NamaBarang" value='<%=rs.getString("NamaBarang")%>'/>
                </p>
                <p>
                    <label>Harga Jual</label><input type="text" name="HargaJual"  value='<%=rs.getString("HargaJual")%>'/>
                </p>
                 <p>
                    <label>Harga Beli</label><input type="text" name="HargaBeli"  value='<%=rs.getString("HargaBeli")%>'/>
                </p>
                 <p>
                    <label>Satuan</label><input type="text" name="Satuan"  value='<%=rs.getString("Satuan")%>'/>
                </p>
               <label>Kategori</label>
                    <select name="Kategori">
                        value=
                       
    <option value="Accessory">Accessory</option>
    <option value="Racing Parts">Racing Parts</option>
    <option value="Wheels">Wheels</option>
  </select>
                </p>
               
                <p>
                    <label></label><input type="submit" name="submit" value="Update"/>
                    <a href="index.jsp">Kembali</a>
                </p>
                <%   }
                    rs.close();
                    statement.close();
                    connection.close();
                } catch (Exception ex) {
                    out.println("Can't connect to database.");
                }
                %>
            </form>
        </div>
    </body>
</html>

<%
String a=request.getParameter("KodeBarang");
String b=request.getParameter("NamaBarang");
String c=request.getParameter("HargaJual");
String d=request.getParameter("HargaBeli");
String e=request.getParameter("Satuan");
String f=request.getParameter("Kategori");
//membuat variabel untuk nampung alamat untuk akses database nantinya.
String url="jdbc:mysql://localhost:3306/megagiga";
//membuat koneksi ke database dengan jdbc
Connection conn=null;
PreparedStatement ps=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
int updateQuery=0;
//untuk mengecek textbox name, city, dan phone tidak kosong
if(a!=null && b!=null && c!=null && d!=null && e!=null && f!=null){
    if(a!="" && b!="" && c!="" && d!="" && e!="" && f!=""){
         try{
        conn=DriverManager.getConnection(url,"root","");
        String query="update barang set NamaBarang=?,HargaJual=?,HargaBeli=?,Satuan=?,Kategori=? where KodeBarang='"+a+"'";
        ps=conn.prepareStatement(query);
        ps.setString(1,b);
        ps.setString(2,c);
        ps.setString(3,d);
        ps.setString(4,e);
        ps.setString(5,f);
        updateQuery=ps.executeUpdate();
        if(updateQuery!=0){
            //JOptionPane.showMessageDialog(null, "Berhasil Update Data");
            out.println("uh yeah");
            response.sendRedirect("index.jsp");
        }
    }catch(Exception ex){
        out.println("Koneksi bermasalah");
        
 
    }finally{
        ps.close();
        conn.close();
    }
    }
}
%>