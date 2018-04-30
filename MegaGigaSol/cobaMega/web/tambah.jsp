<%-- 
    Document   : tambah
    Created on : Apr 30, 2018, 11:34:00 AM
    Author     : MEKAKANO
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
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
        <script>
            function validate(evt) {
  var theEvent = evt || window.event;
  var key = theEvent.keyCode || theEvent.which;
  key = String.fromCharCode( key );
  var regex = /[0-9]|\./;
  if( !regex.test(key) ) {
    theEvent.returnValue = false;
    if(theEvent.preventDefault) theEvent.preventDefault();
  }
}

function isEmpty(){
     var data=document.getElementById("kodeBarang").value;
    
     
     if(data.toString()==""){
       alert("Semua Kolum Harus Diisi");
       return false;
     }
    
    
     
     return true;
  }
            </script>
        <div id="con2">
           
        
        <br/>
	<br/>
	<br/>
	
	
	<br />
	
	<br />
        <br />
	
	<br />
        <br />
	
	<br />
            <h3 align="center">Tambah Data</h3><p></p>
            <form action="" method="post">
                <p>
                    <label>KodeBarang</label><input type="text" name="KodeBarang" id="kodeBarang"/>
                </p>
                <p>
                    <label>NamaBarang</label><input type="text" name="NamaBarang" />
                </p>
                <p>
                    <label>HargaJual</label><input  type="number"  name="HargaJual" onkeypress='validate(event)'/>
                </p>
                <p>
                    <label>HargaBeli</label><input type="number" name="HargaBeli" onkeypress='validate(event)' />
                </p>
                 <p>
                     <label>Satuan</label><input type="number" name="Satuan" onkeypress='validate(event)' />
                </p>
                <p>
                    <label>Kategori</label>
                    <select name="Kategori">
    <option value="Accessory">Accessory</option>
    <option value="Racing Parts">Racing Parts</option>
    <option value="Wheels">Wheels</option>
  </select>
                </p>
               
                <p>
                    <label></label><input type="submit" name="submit" value="Simpan" onclick="return isEmpty()" />
                    <a href="index.jsp">Kembali</a>
                </p>
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
        String query="Insert into barang(KodeBarang,NamaBarang,HargaJual,HargaBeli,Satuan,Kategori)values(?,?,?,?,?,?)";
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