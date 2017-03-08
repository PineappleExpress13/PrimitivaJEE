<%-- 
    Document   : BoletosGrafico
    Created on : 08-mar-2017, 9:32:11
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
        <div align="center">
            <h3>Generación de apuestas en modo texto</h3>
            <%if(error.equals("1")){%>
            <p>Introduzca un número de boletos correcto(Solo numeros entre 1 y 10)</p>
            <%}%>
            <form action="Grafico" method="POST">
                Nº de boletos:<input type="text" placeholder="Nº de boletos" id="boletos" name="boletos"/>
                <p><input type="submit" value="Enviar"/></p>
                
            </form>
        </div>
    </body>
</html>