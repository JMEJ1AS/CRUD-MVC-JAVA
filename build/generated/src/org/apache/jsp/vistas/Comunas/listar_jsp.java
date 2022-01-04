package org.apache.jsp.vistas.Comunas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import java.util.List;
import Modelo.Comuna;
import ModeloDAO.ComunaDAO;

public final class listar_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/vistas/Comunas/../navbar/navbar.jsp");
  }

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
      out.write("\n");
      out.write("        <link href=\"css/font-awesome/css/font-awesome.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <link href=\"css/theme.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <script src=\"js/jquery-1.8.2.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/jquery.dataTables.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\" type=\"text/javascript\"></script>\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function() {\n");
      out.write("                $('#comunas').dataTable({\"sPaginationType\": \"full_numbers\"});\n");
      out.write("            });\n");
      out.write("        </script> \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <br>\n");
      out.write("            ");
HttpSession sesion = request.getSession(true); 
      out.write("\n");
      out.write("<nav class=\"navbar navbar-default\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\" aria-expanded=\"false\">\n");
      out.write("        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("        <span class=\"icon-bar\"></span>\n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"#\">Nombre Proyecto</a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("      <ul class=\"nav navbar-nav\">\n");
      out.write("        <li><a href=\"UsersController?accion=listar\">Listar personas</a></li>\n");
      out.write("        <li><a href=\"ComunasController?accion=listar\">Listar comunas</a></li>\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("          <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">Dropdown <span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"#\">Action</a></li>\n");
      out.write("            <li><a href=\"#\">Another action</a></li>\n");
      out.write("            <li><a href=\"#\">Something else here</a></li>\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("            <li><a href=\"#\">Separated link</a></li>\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("            <li><a href=\"#\">One more separated link</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      <form class=\"navbar-form navbar-left\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Search\">\n");
      out.write("        </div>\n");
      out.write("        <button type=\"submit\" class=\"btn btn-default\">Submit</button>\n");
      out.write("      </form>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("        <li><a href=\"#\">Link</a></li>\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\"><i class=\"icon-user\"></i> ");
      out.print(sesion.getAttribute("user"));
      out.write("<span class=\"caret\"></span></a>\n");
      out.write("          <ul class=\"dropdown-menu\">\n");
      out.write("            <li><a href=\"#\">Action</a></li>\n");
      out.write("            <li><a href=\"#\">Another action</a></li>\n");
      out.write("            <li><a href=\"#\">Something else here</a></li>\n");
      out.write("            <li role=\"separator\" class=\"divider\"></li>\n");
      out.write("            <li><a href=\"UsersController?accion=logout\">Cerrar Sesión</a></li>\n");
      out.write("          </ul>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div><!-- /.navbar-collapse -->\n");
      out.write("  </div><!-- /.container-fluid -->\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("            <h1>Comunas</h1>\n");
      out.write("                ");
 
                    if(request.getAttribute("msg") != null){
                        out.print(request.getAttribute("msg"));
                    }
                
      out.write("\n");
      out.write("                <hr>            \n");
      out.write("                <br>\n");
      out.write("            <br>\n");
      out.write("            <table id=\"comunas\" class=\"table table-striped table-hover\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th class=\"text-center\">ID</th>\n");
      out.write("                        <th>NOMBRES</th>\n");
      out.write("                        <th class=\"text-center\">REGION ID</th>\n");
      out.write("                        <th class=\"text-center\">NOMBRE REGION</th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    ");

                        ComunaDAO dao=new ComunaDAO();
                        List<Comuna>list=dao.listar();
                        Iterator<Comuna>iter=list.iterator();
                        Comuna cmn=null;
                        while(iter.hasNext()){
                            cmn=iter.next();
                    
      out.write("                \n");
      out.write("                    <tr>\n");
      out.write("                        <td class=\"text-center\">");
      out.print(cmn.getId());
      out.write("</td>\n");
      out.write("                        <td>");
      out.print(cmn.getNombre());
      out.write("</td>\n");
      out.write("                        <td class=\"text-center\">");
      out.print(cmn.getRegion_id());
      out.write("</td>\n");
      out.write("                        <td class=\"text-center\">");
      out.print(cmn.getNombreRegion());
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    \n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                \n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <br>   \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
