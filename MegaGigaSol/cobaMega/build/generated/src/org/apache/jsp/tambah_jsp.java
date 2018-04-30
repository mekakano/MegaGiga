package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;
import javax.swing.JOptionPane;

public final class tambah_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("         <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<link href=\"2.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<style type=\"text/css\">\n");
      out.write("<!--\n");
      out.write("body {\n");
      out.write("\tbackground-image: url(bg.jpg);\n");
      out.write("\tbackground-repeat: no repeat;\n");
      out.write("\theight: 100%;\n");
      out.write("\twidth: 100%;\n");
      out.write("\tbackground-size: 100%;\n");
      out.write("}\n");
      out.write("-->\n");
      out.write("</style>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            *{margin:auto;padding:0;}\n");
      out.write("            #con2{width:500px;padding:30px;}\n");
      out.write("            p{margin-bottom:10px;}\n");
      out.write("            label{display:inline-block;width:150px;}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <img src=\"yarddd.png\" height=\"140px\" align=\"left\"/> \n");
      out.write("        <script>\n");
      out.write("            function validate(evt) {\n");
      out.write("  var theEvent = evt || window.event;\n");
      out.write("  var key = theEvent.keyCode || theEvent.which;\n");
      out.write("  key = String.fromCharCode( key );\n");
      out.write("  var regex = /[0-9]|\\./;\n");
      out.write("  if( !regex.test(key) ) {\n");
      out.write("    theEvent.returnValue = false;\n");
      out.write("    if(theEvent.preventDefault) theEvent.preventDefault();\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("function isEmpty(){\n");
      out.write("     var data=document.getElementById(\"kodeBarang\").value;\n");
      out.write("     if(data.length==0){\n");
      out.write("       alert(\"Kode Barang Harus Diisi\");\n");
      out.write("       return false;\n");
      out.write("     }\n");
      out.write("     return true;\n");
      out.write("  }\n");
      out.write("            </script>\n");
      out.write("        <div id=\"con2\">\n");
      out.write("           \n");
      out.write("        \n");
      out.write("        <br/>\n");
      out.write("\t<br/>\n");
      out.write("\t<br/>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<br />\n");
      out.write("\t\n");
      out.write("\t<br />\n");
      out.write("        <br />\n");
      out.write("\t\n");
      out.write("\t<br />\n");
      out.write("        <br />\n");
      out.write("\t\n");
      out.write("\t<br />\n");
      out.write("            <h3 align=\"center\">Tambah Data</h3><p></p>\n");
      out.write("            <form action=\"\" method=\"post\">\n");
      out.write("                <p>\n");
      out.write("                    <label>KodeBarang</label><input type=\"text\" name=\"KodeBarang\"/>\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                    <label>NamaBarang</label><input type=\"text\" name=\"NamaBarang\"/>\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                    <label>HargaJual</label><input  type=\"number\"  name=\"HargaJual\" onkeypress='validate(event)'/>\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                    <label>HargaBeli</label><input type=\"number\" name=\"HargaBeli\" onkeypress='validate(event)' />\n");
      out.write("                </p>\n");
      out.write("                 <p>\n");
      out.write("                     <label>Satuan</label><input type=\"number\" name=\"Satuan\" onkeypress='validate(event)' />\n");
      out.write("                </p>\n");
      out.write("                <p>\n");
      out.write("                    <label>Kategori</label>\n");
      out.write("                    <select name=\"Kategori\">\n");
      out.write("    <option value=\"Accessory\">Accessory</option>\n");
      out.write("    <option value=\"Racing Parts\">Racing Parts</option>\n");
      out.write("    <option value=\"Wheels\">Wheels</option>\n");
      out.write("  </select>\n");
      out.write("                </p>\n");
      out.write("               \n");
      out.write("                <p>\n");
      out.write("                    <label></label><input type=\"submit\" name=\"submit\" value=\"Simpan\" onClick=\"return isEmpty()/>\n");
      out.write("                    <a href=\"index.jsp\">Kembali</a>\n");
      out.write("                </p>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");

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

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
