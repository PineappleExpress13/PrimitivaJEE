<%-- 
    Document   : Login
    Created on : 08-mar-2017, 4:08:45
    Author     : Pineapple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String error = request.getParameter("e");
    if(error == null)
        error="no";%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%if(error.equals("1")){%>
        
        <p>Login incorrecto</p>
        <%}%>
        <form action="Index" method="POST">
            <p>Usuario:    <input type="text" id="user" name="user" /></p>
            <p>Contraseña: <input type="password" id="pass" name="pass" /></p>
            <p><input type="submit" id="" name="" value="Entrar"/></p>
        </form>
    </body>
</html>
