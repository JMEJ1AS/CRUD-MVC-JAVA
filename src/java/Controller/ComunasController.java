
package Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ComunasController extends HttpServlet {
    
    String inicio="index.jsp";
    
    String listar="vistas/Comunas/listar.jsp";
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession sesion = request.getSession(true);
        
        String acceso="";
        
        String action=request.getParameter("accion");
        
        if(sesion.getAttribute("nivel")==null){
        
            acceso=inicio;
        }
        
        else if(action.equalsIgnoreCase("listar")){
            
            acceso=listar;
        }
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
