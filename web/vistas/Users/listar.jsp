<%-- 
    Document   : listar
    Created on : 09-nov-2018, 20:05:47
    Author     : jmejias
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.User"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="css/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/theme.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function() {
                $('#personas').dataTable({"sPaginationType": "full_numbers"});
            });
        </script> 
    </head>
    <body>
        <div class="container">
            <br>
            <%@include file="../navbar/navbar.jsp" %>
            <h1>Personas</h1>
                <% 
                    if(request.getAttribute("msg") != null){
                        out.print(request.getAttribute("msg"));
                    }
                %>
                <hr>            
                <a class="btn btn-success" href="UsersController?accion=add"><i class="icon-plus"></i> Agregar Persona</a>
            <br>
            <br>
            <table id="personas" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th class="text-center">NUM</th>
                        <th class="text-center">DNI</th>
                        <th>NOMBRES</th>
                        <th>COMUNA</th>
                        <th class="text-center">ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        PersonaDAO dao=new PersonaDAO();
                        List<User>list=dao.listar();
                        Iterator<User>iter=list.iterator();
                        User usr=null;
                        int i=0;
                        while(iter.hasNext()){
                            usr=iter.next();
                            i = i + 1;
                    %>                
                    <tr>
                        <td class="text-center"><%=i%></td>
                        <td class="text-center"><%=usr.getDni()%></td>
                        <td><%=usr.getNom()%></td>
                        <td><%=usr.getNombreComuna()%></td>
                        <td class="text-center">                            
                            <a class="btn btn-warning"
                               title="Editar" 
                               href="UsersController?accion=editar&id=<%=usr.getId()%>">
                                <i class="icon-edit"></i>
                            </a>                                                       
                            <a class="btn btn-danger"
                               title="Eliminar"
                               href="UsersController?accion=eliminar&id=<%=usr.getId()%>">
                                <i class="icon-trash"></i>
                            </a>                        
                        </td>
                    </tr>                    
                    <%}%>               
                </tbody>
            </table>
        </div>
        <br>
        <br>   
    </body>
</html>