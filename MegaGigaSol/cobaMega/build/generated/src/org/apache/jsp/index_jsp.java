package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <img src=\"yarddd.png\" height=\"140px\" align=\"left\"/> \n");
      out.write("        \n");
      out.write("        <br/>\n");
      out.write("\t<br/>\n");
      out.write("\t<br/>\n");
      out.write("         <br/>\n");
      out.write("\t<br/>\n");
      out.write("\t<br/>\n");
      out.write("         <br/>\n");
      out.write("\t<br/>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("\t<ul class=\"menu\">\n");
      out.write("    <li><a href=\"tambah.jsp\"><img src=\"tambah.png\" height=\"80px\" border=\"0\"></a></li>\n");
      out.write("    <li><a href=\"Beli.jsp\"><img src=\"penjualan.png\" height=\"80px\" border=\"0\"></a>\n");
      out.write("         <li><a href=\"jual.jsp\"><img src=\"pembelian.png\" height=\"80px\" border=\"0\"></a>\n");
      out.write("        \n");
      out.write("    </li>\n");
      out.write("        </ul>\n");
      out.write("\t\n");
      out.write("\t<br />\n");
      out.write("\t\n");
      out.write("\t<br />\n");
      out.write("        <br />\n");
      out.write("\t\n");
      out.write("\t<br />\n");
      out.write("        <br />\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("        \n");
      out.write("        <div id=\"con\">\n");
      out.write("            \n");
      out.write("           \n");
      out.write("            <p></p>\n");
      out.write("            ");

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
            
      out.write("\n");
      out.write("            <table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"50%\">\n");
      out.write("                <tr style=\"background-color: #f45959\";\">\n");
      out.write("                    <th>KodeBarang</th>\n");
      out.write("                    <th>NamaBarang</th>\n");
      out.write("                    <th>Harga Jual</th>\n");
      out.write("                    <th>Harga Beli</th>\n");
      out.write("                    <th>Satuan</th>\n");
      out.write("                    <th>Kategori</th>\n");
      out.write("                    <th>Aksi</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                while (rs.next()) {
                
      out.write("\n");
      out.write("                <tr >\n");
      out.write("                    <td>");
      out.print(rs.getString("KodeBarang"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("NamaBarang"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("HargaJual"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("HargaBeli"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("Satuan"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("Kategori"));
      out.write("</td>\n");
      out.write("                    <td><a href=\"update.jsp?u=");
      out.print(rs.getString("KodeBarang"));
      out.write("\" >edit</a> / <a href=\"delete.jsp?d=");
      out.print(rs.getString("KodeBarang"));
      out.write("\" > hapus</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");
   }    
      out.write("\n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            </br>\n");
      out.write("            </br>\n");
      out.write("            \n");
      out.write("             \n");
      out.write("            ");

                rs.close();
                statement.close();
                connection.close();
            } catch (Exception ex) {
                out.println("Can't connect to database.");
            }
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
