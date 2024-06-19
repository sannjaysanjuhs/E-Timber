package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import databasecon.*;
import java.io.*;

public final class arbids_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("     <!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("<title>AgroPlus</title>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<style>\r\n");
      out.write("    body {\r\n");
      out.write("background-image:url(\"hl.jpg\");\r\n");
      out.write("background-size:100%;\r\n");
      out.write("font-family: Arial, Helvetica, sans-serif;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("* {box-sizing: border-box}\r\n");
      out.write("\r\n");
      out.write("#customers {\r\n");
      out.write("  font-family: \"Trebuchet MS\", Arial, Helvetica, sans-serif;\r\n");
      out.write("  border-collapse: collapse;\r\n");
      out.write("  width: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#customers td, #customers th {\r\n");
      out.write("  border: 1px solid #ddd;\r\n");
      out.write("  padding: 8px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#customers tr\r\n");
      out.write(" {background-color: #f2f2f2;}\r\n");
      out.write("\r\n");
      out.write("#customers tr:hover {background-color: #ddd;}\r\n");
      out.write("\r\n");
      out.write("#customers th {\r\n");
      out.write("  padding-top: 12px;\r\n");
      out.write("  padding-bottom: 12px;\r\n");
      out.write("  text-align: left;\r\n");
      out.write("  background-color: #4CAF50;\r\n");
      out.write("  color: white;\r\n");
      out.write("}\r\n");
      out.write("    </style>\r\n");
      out.write("    \r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("   <table id=\"customers\"><tr>      \t           \r\n");
      out.write("                           <th>Bidder Id</th>\r\n");
      out.write("                           <th>Bidder Name</th>\r\n");
      out.write("                           <th >Circle</th>\r\n");
      out.write("                           <th >Division</th>\r\n");
      out.write("                           <th >Depot</th>\r\n");
      out.write("                           <th >Bid Amount</th>\r\n");
      out.write("                           <th >Accept</th>\r\n");
      out.write("<!--                           <th>Reject</th>-->\r\n");
      out.write("             \r\n");
      out.write("                            </tr>\r\n");
      out.write("                                      \r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                        \t\r\n");
      out.write("         ");

		Connection con = null;
		String bidid=null,circle=null,div=null,depot=null,bidderid=null,bname=null,amount=null;
		
		try{
				con=databasecon.getconnection(); 
				Statement st=con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM bid WHERE bidderid=(SELECT bidderid FROM bid WHERE amount=(SELECT MAX(amount) FROM bid))");
				while(rs.next()) 
				{
					bidderid=rs.getString("biderid");
					bname=rs.getString("bname");
					circle=rs.getString("circle");
					div=rs.getString("division");
					depot=rs.getString("depot");
                                        amount=rs.getString("amount");
                                        bidid=rs.getString("bidid");
                                       
                                        
				

      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <tr>\r\n");
      out.write("                            <td >");
      out.print(bidderid);
      out.write("</td>     \r\n");
      out.write("                            <td >");
      out.print(bname);
      out.write("</td>\r\n");
      out.write("                            <td >");
      out.print(circle);
      out.write("</td>\r\n");
      out.write("                            <td >");
      out.print(div);
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print(depot);
      out.write("</td>\r\n");
      out.write("                            <td>");
      out.print(amount);
      out.write("</td>\r\n");
      out.write("                            <td><a href=\"acrebid.jsp?bidderid=");
      out.print(rs.getString("biderid"));
      out.write("\">Accept</a></td>\r\n");
      out.write("<!--                             <td><a href=\"bidreject.jsp?bidderid=");
      out.print(rs.getString("biderid"));
      out.write("\">Reject</a></td>-->\r\n");
      out.write("                            \r\n");
      out.write("                            \r\n");
      out.write("                            </tr>\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        ");

				}
						}
							
		catch (Exception e) {
			e.printStackTrace();
		}
		
		

      out.write("\r\n");
      out.write("                 \r\n");
      out.write("                 </table>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
