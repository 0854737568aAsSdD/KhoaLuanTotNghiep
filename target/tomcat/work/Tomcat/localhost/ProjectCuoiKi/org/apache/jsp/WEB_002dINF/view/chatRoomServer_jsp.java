/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2022-04-13 00:24:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class chatRoomServer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Demo websocket</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<h2>Demo WebSocket Chat Room</h2>\r\n");
      out.write("\t<input id=\"textMessage\" type=\"text\" />\r\n");
      out.write("\t<input onclick=\"sendMessage()\" value=\"Send Message\" type=\"button\" />\r\n");
      out.write("\t<br />\r\n");
      out.write("\t<br />\r\n");
      out.write("\r\n");
      out.write("\t<textarea id=\"textAreaMessage\" rows=\"10\" cols=\"50\"></textarea>\r\n");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tvar websocket = new WebSocket(\r\n");
      out.write("\t\t\t\t\"ws://localhost:8080/ProjectCuoiKi/chatRoomServer\");\r\n");
      out.write("\t\twebsocket.onopen = function(message) {\r\n");
      out.write("\t\t\tprocessOpen(message);\r\n");
      out.write("\t\t};\r\n");
      out.write("\t\twebsocket.onmessage = function(message) {\r\n");
      out.write("\t\t\tprocessMessage(message);\r\n");
      out.write("\t\t};\r\n");
      out.write("\t\twebsocket.onclose = function(message) {\r\n");
      out.write("\t\t\tprocessClose(message);\r\n");
      out.write("\t\t};\r\n");
      out.write("\t\twebsocket.onerror = function(message) {\r\n");
      out.write("\t\t\tprocessError(message);\r\n");
      out.write("\t\t};\r\n");
      out.write("\r\n");
      out.write("\t\tfunction processOpen(message) {\r\n");
      out.write("\t\t\ttextAreaMessage.value += \"Server connect... \\n\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction processMessage(message) {\r\n");
      out.write("\t\t\tconsole.log(message);\r\n");
      out.write("\t\t\ttextAreaMessage.value += message.data + \" \\n\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction processClose(message) {\r\n");
      out.write("\t\t\ttextAreaMessage.value += \"Server Disconnect... \\n\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\tfunction processError(message) {\r\n");
      out.write("\t\t\ttextAreaMessage.value += \"Error... \" + message + \" \\n\";\r\n");
      out.write("\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\tfunction sendMessage() {\r\n");
      out.write("\t\t\tif (typeof websocket != 'undefined'\r\n");
      out.write("\t\t\t\t\t&& websocket.readyState == WebSocket.OPEN) {\r\n");
      out.write("\t\t\t\twebsocket.send(textMessage.value);\r\n");
      out.write("\t\t\t\ttextMessage.value = \"\";\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
