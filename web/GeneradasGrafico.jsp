<%-- 
    Document   : GeneradasGrafico.jsp
    Created on : 08-mar-2017, 9:48:53
    Author     : Pineapple
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Object numboletos = request.getAttribute("numboletos");
    Object total = request.getAttribute("total");
    int nboletos = Integer.parseInt(numboletos.toString());%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            th {  background-color: red; }
            td.m {background-color: darkturquoise;}
          </style>
    </head>
    <body>
       <%for(int i=0;i<nboletos;i++){%>
            <p>Nº de boleto: <%=i+1%></p>
            <% Object reintegro = request.getAttribute("Boleto"+i+"Reintegro");%>
            <p>Reintegro: <%=reintegro%></p>
            <% Object importe = request.getAttribute("Boleto"+i+"Importe");%>
            <p>Importe: <%=importe%>€</p>
            <% Object napuestas = request.getAttribute("Boleto"+i+"NumApuestas");
            int numApuestas = Integer.parseInt(napuestas.toString());
             for(int j=0;j<numApuestas;j++){%>
                <table border="1">
                    <% Object apuesta = request.getAttribute("Boleto"+i+"Apuesta"+j); %>
                    <%for(int k=0;k<10;k++){
                        if(k==0){%>
                        <tr>
                            <th><%=j+1%></th>
                            <%=AsignaNum(k + 10,apuesta.toString())%>
                            <%=AsignaNum(k + 20,apuesta.toString())%>
                            <%=AsignaNum(k + 30,apuesta.toString())%>
                            <%=AsignaNum(k + 40,apuesta.toString())%>
                        </tr>
                        <%}else{%>
                        <tr>
                            <%=AsignaNum(k,apuesta.toString())%>
                            <%=AsignaNum(k + 10,apuesta.toString())%>
                            <%=AsignaNum(k + 20,apuesta.toString())%>
                            <%=AsignaNum(k + 30,apuesta.toString())%>
                            <%=AsignaNum(k + 40,apuesta.toString())%>
                        </tr>
                        <%}%>
                    <%}%>
                </table>
             <%}%>
                             <hr>
       <%}%>
       
       <p>El importe total es : <%=total%> €</p>
</body>
</html>

<%!public String AsignaNum(int valor,String datos){
    String[] partes = datos.split(",");
    for(int i=0;i<partes.length;i++){
        if(valor==Integer.parseInt(partes[i]))
            return "<td class='m'>"+String.valueOf(valor)+"</td>";
    }
return "<td>"+String.valueOf(valor)+"</td>";
}%>
