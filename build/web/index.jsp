<%-- 
    Document   : login
    Created on : 29-oct-2018, 15:10:51
    Author     : jmejias
--%>

<%@page import="Modelo.User"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body> 
        <div class="container"> 
            <div id="loginbox" class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3"> 
                <div class="row">                
                    <div>
                      <img src="images/lock.png" width="128" height="128" alt="Inicio de sesión">
                    </div>
                </div>
                <div class="panel panel-default" >
                    <div class="panel-heading">
                        <div class="panel-title text-center">Inicio de sesión</div>
                    </div>     
                    <div class="panel-body" >
                        <form id="form" action="UsersController" method="post" class="form-horizontal">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="icon-user"></i></span>
                                <input type="text" class="form-control" name="txtUser" value="" placeholder="Nombre de usuario" autofocus="">                                        
                            </div>
                            <br>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="icon-unlock"></i></span>
                                <input type="password" class="form-control" name="txtPass" placeholder="Password">
                            </div>                                                                  
                            <br>
                            <div class="form-group">
                                <!-- Button -->
                                <div class="col-sm-12">
                                    <input class="btn btn-success btn-group-justified" type="submit" name="accion" value="Authentica">
                                </div>
                            </div>
                        </form>     
                    </div>                     
                </div>  
            </div>
        </div>        
    </body>
</html>