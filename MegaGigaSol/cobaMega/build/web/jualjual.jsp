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
                    <label>Tanggal Faktur</label><input type="text" name="TanggalFaktur" placeholder="YYYY-MM-DD" />
                </p>
                 <p>
                    <label>Nama Konsumen</label><input type="text" name="NamaKonsumen" />
                </p>
                <p>
                    <label>Kode Barang</label><input type="text" name="KodeBarang" value='<%=rs.getString("KodeBarang")%>'/>
                </p>
                <p>
                    <label>Jumlah</label><input type="text" name="Jumlah" />
                </p>
                
                 <p>
                    <label>Harga Satuan</label><input type="text" name="HargaSatuan"  value='<%=rs.getString("Satuan")%>'/>
                </p>
                 <p>
                     <label>Harga Total</label><input type="text" name="HargaTotal" value="<%=rs.getString("Satuan")%>"  />
                </p>
               
                <p>
                    <label></label><input type="submit" name="submit" value="Update"/>
                    <a href="beli.jsp">Kembali</a>
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
String a=request.getParameter("TanggalFaktur");
String b=request.getParameter("NamaKonsumen");
String c=request.getParameter("KodeBarang");
String d=request.getParameter("Jumlah");
String e=request.getParameter("HargaSatuan");
String f=request.getParameter("HargaTotal");

String Host = "jdbc:mysql://localhost:3306/megagiga";
//membuat koneksi ke database dengan jdbc
Connection connection = null;
PreparedStatement ps=null;
Class.forName("com.mysql.jdbc.Driver").newInstance();



int updateQuery=0;

if(a!=null && b!=null && c!=null && d!=null && e!=null && f!=null){
    if(a!="" && b!="" && c!="" && d!="" && e!="" && f!=""){
         try{
        connection=DriverManager.getConnection(Host, "root", "");
        String query="Insert into penjualan(TanggalFaktur,NamaKonsumen,KodeBarang,Jumlah,HargaSatuan,HargaTotal)values(?,?,?,?,?,?)";
        ps=connection.prepareStatement(query);
        ps.setString(1,a);
        ps.setString(2,b);
        ps.setString(3,c);
        ps.setString(4,d);
        ps.setString(5,e);
        ps.setString(6,f);
        updateQuery=ps.executeUpdate();
        if(updateQuery!=0){
            
            response.sendRedirect("index.jsp");
        }
    }catch(Exception ex){
        out.println("Koneksi bermasalah");
        
 
    }finally{
        ps.close();
        connection.close();
    }
    }
}
%>
