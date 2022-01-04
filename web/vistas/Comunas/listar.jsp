<%-- 
    Document   : listar
    Created on : 19-nov-2018, 10:11:43
    Author     : Jorge Mejías Fuenzalida <mejias.jorge@gmail.com>
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
        <title>JSP Page</title>

        <link href="css/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/theme.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
        <script src="js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function() {
                $('#comunas').dataTable({"sPaginationType": "full_numbers"});
            });
        </script> 
    </head>
    <body>
        <div class="container">
            <br>
            <%@include file="../navbar/navbar.jsp" %>
            <h1>Comunas</h1>
                <% 
                    if(request.getAttribute("msg") != null){
                        out.print(request.getAttribute("msg"));
                    }
                %>
                <hr>            
                <br>
            <br>
            <table id="comunas" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th>NOMBRES</th>
                        <th class="text-center">REGION ID</th>
                        <th class="text-center">NOMBRE REGION</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ComunaDAO dao=new ComunaDAO();
                        List<Comuna>list=dao.listar();
                        Iterator<Comuna>iter=list.iterator();
                        Comuna cmn=null;
                        while(iter.hasNext()){
                            cmn=iter.next();
                    %>                
                    <tr>
                        <td class="text-center"><%=cmn.getId()%></td>
                        <td><%=cmn.getNombre()%></td>
                        <td class="text-center"><%=cmn.getRegion_id()%></td>
                        <td class="text-center"><%=cmn.getNombreRegion()%></td>
                    </tr>
                    
                    <%}%>
                
                </tbody>
            </table>
        </div>
        <br>
        <br>   
    </body>
</html>
