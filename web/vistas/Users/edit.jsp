<%-- 
    Document   : edit
    Created on : 29-oct-2018, 15:10:51
    Author     : jmejias
--%>
<%@page import="Modelo.User"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Comuna"%>
<%@page import="ModeloDAO.ComunaDAO"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <%
                    PersonaDAO dao=new PersonaDAO();
                    int id=Integer.parseInt((String)request.getAttribute("idper"));
                    User u=(User)dao.list(id);
                %>
                <h1>Modificar Persona</h1>
                <hr>
                <form action="UsersController" method="post">
                    <input type="hidden" name="txtid" value="<%=u.getId()%>">
                    DNI: <br> 
                    <input class="form-control" type="text" name="txtDni" value="<%=u.getDni()%>"><br>
                    Nombres : <br>
                    <input class="form-control" type="text" name="txtNom" value="<%=u.getNom()%>"><br>
                    Comuna:<br>
                    <select name="txtComuna_id" class="form-control" required>
                        <option value="">Seleccionar</option>
                        <%  
                            ComunaDAO dao_comuna=new ComunaDAO();
                            List<Comuna>list=dao_comuna.listar();
                            Iterator<Comuna>iter=list.iterator();
                            Comuna cmn=null;
                           
                            while(iter.hasNext()){
                                cmn=iter.next();
                                String selected="";
                                
                                if(cmn.getId()==u.getComuna_id()){
                                    selected="selected";
                                }
                        %>
                        <option value="<%=cmn.getId()%>" <%=selected%> ><%=cmn.getNombre()%></option>
                        <%}%>
                    </select><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Actualizar">
                    <a class="btn btn-default" href="UsersController?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
    </body>
</html>
