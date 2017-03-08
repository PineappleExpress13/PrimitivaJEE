<%-- 
    Document   : ApuestaGrafico
    Created on : 08-mar-2017, 9:37:54
    Author     : Pineapple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%     Object boleto = request.getAttribute("Boletos");
    if(boleto == null)
        boleto=1;
    int x = Integer.parseInt(boleto.toString());%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center" >
            <h3>Generación de apuestas en modo texto</h3>
            <p>Se juegan <%=x%> boletos</p>
            <form action="GeneradasGrafico" method="post">
                <%for(int i=0;i<x;i++){%>
                    <p>Boleto <%=i+1%> - Nº de apuestas: 
                        <select name="boleto<%=i%>">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                          </select> 
                    </p>
                <%}%>
                <input type="hidden" name="boletos" value="<%=x%>">
                <input type="submit" value="Continuar"/>
           </form>
        </div>
    </body>
</html>