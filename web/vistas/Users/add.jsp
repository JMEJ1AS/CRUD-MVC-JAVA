<%-- 
    Document   : add
    Created on : 29-oct-2018, 15:10:34
    Author     : jmejias
--%>
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
                <h1>Agregar Persona</h1>
                <hr>
                <form action="UsersController" method="post">
                DNI:<br> 
                <input 
                    class="form-control" 
                    type="text" 
                    name="txtDni"
                    id="txtDni"
                    oninput="checkRut(this)" 
                    placeholder="Ingrese RUT"
                    required
                    /><br>
                Nombres:<br>
                <input class="form-control" type="text" name="txtNom" id="txtNom" required/><br>
                Comuna:<br>
                <select name="txtComuna_id" class="form-control" required>
                    <option value="">Seleccionar</option>
                    <%  
                        ComunaDAO dao=new ComunaDAO();
                        List<Comuna>list=dao.listar();
                        Iterator<Comuna>iter=list.iterator();
                        Comuna cmn=null;
                        while(iter.hasNext()){
                            cmn=iter.next();
                    %>
                    <option value="<%=cmn.getId()%>"><%=cmn.getNombre()%></option>
                    <%}%>
                </select><br>
                <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                <a class="btn btn-default" href="UsersController?accion=listar">Regresar</a>
            </form>
            </div>
        </div>
    </body>
</html>
<script src="js/validarRUT.js" type="text/javascript"></script>   