
package Controller;

import Modelo.User;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "UsersController", urlPatterns = {"/UsersController"})
public class UsersController extends HttpServlet {
    
    String listar="vistas/Users/listar.jsp";
    String add="vistas/Users/add.jsp";
    String edit="vistas/Users/edit.jsp";
    String inicio="index.jsp";
       
    User u = new User();
    PersonaDAO dao=new PersonaDAO();
    private int id;
    public int nivel = 0;

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
        
        else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
      
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idper",request.getParameter("id"));
            acceso=edit;
        }
        
        else if(action.equalsIgnoreCase("eliminar")){
            id=Integer.parseInt(request.getParameter("id"));
            u.setId(id);
            dao.eliminar(id);
            acceso=listar;        
        }
        else if(action.equalsIgnoreCase("logout")){
            sesion.invalidate();
            acceso=inicio;
        }
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        
        //processRequest(request, response);
        
        HttpSession sesion = request.getSession(true);  
        
        String acceso = "";
        
        String action = request.getParameter("accion");
        
        
        if(sesion.getAttribute("nivel")==null){
        
            acceso=inicio;
        }
            
        if(action.equalsIgnoreCase("Login")){
            
            String user = request.getParameter("txtUser");
            String pass = request.getParameter("txtPass");
            u.setUser(user);
            u.setPass(pass);
            nivel = dao.login(u);
            
            if(nivel != 0){
                sesion.setAttribute("user", user);
                sesion.setAttribute("nivel", nivel);
                String msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>&times;</button>Bievenido a nuestro CRUD J2EE!!</div>";
                request.setAttribute("msg",msg);
                acceso=listar;
            }
            else {
                String msg = "<div class='alert alert-danger'><button type='button' class='close' data-dismiss='alert'>&times;</button>Error de validación!!</div>";
                request.setAttribute("msg",msg);
                acceso=inicio;
            }
                    
        }
        
        else if(action.equalsIgnoreCase("Agregar")){

            String dni=request.getParameter("txtDni");
            //String nom=request.getParameter("txtNom");
            String nom = new String(request.getParameter("txtNom").getBytes("ISO-8859-1"),"UTF-8");
            int comuna_id = Integer.parseInt(request.getParameter("txtComuna_id"));
            
            u.setDni(dni);
            u.setNom(nom);
            u.setComuna_id(comuna_id);
            
            dao.add(u);
            String msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>&times;</button>Registro grabado satisfactoriamente!</div>";
            request.setAttribute("msg",msg);
            acceso=listar;

        }
        
        else if(action.equalsIgnoreCase("Actualizar")){
            id=Integer.parseInt(request.getParameter("txtid"));
            String dni=request.getParameter("txtDni");
            String nom = new String(request.getParameter("txtNom").getBytes("ISO-8859-1"),"UTF-8");
            int comuna_id = Integer.parseInt(request.getParameter("txtComuna_id"));
            
            u.setId(id);
            u.setDni(dni);
            u.setNom(nom);
            u.setComuna_id(comuna_id);
            
            dao.edit(u);            
            String msg = "<div class='alert alert-success'><button type='button' class='close' data-dismiss='alert'>&times;</button>Registro modificado satisfactoriamente!</div>";
            request.setAttribute("msg",msg);
            acceso=listar;
        }
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    @Override
    public String getServletInfo(){
        return "Short description";
    }// </editor-fold>

    private void alert(String welcome_User){
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}