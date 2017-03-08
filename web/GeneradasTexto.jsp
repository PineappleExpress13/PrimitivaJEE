<%-- 
    Document   : GeneradasTexto
    Created on : 08-mar-2017, 8:09:43
    Author     : Pineapple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%     Object numboletos = request.getAttribute("numboletos");
        Object imp_total = request.getAttribute("total");
    int nboletos = Integer.parseInt(numboletos.toString());
    Object[] boletos = new Object[10];
    for(int i=0;i<nboletos;i++){
     boletos[i] = request.getAttribute("boleto"+i);  
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%for(int i=0;i<nboletos;i++){%>
        <pre><%=boletos[i]%></pre>
        <%}%>
        <p>El importe total es <%=imp_total%> €</p>
    </body>
</html>
