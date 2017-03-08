/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Primitiva.Servlets;

import Primitiva.modelo.Boleto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pineapple
 */
public class GeneradasGrafico extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String boletos = request.getParameter("boletos");
       int[] Apuestas = new int[10];
       Boleto[] boleto = new Boleto[10];
       int total=0;
       /*Recojo el nº de apuestas de cada boleto y creo el objeto*/
       for(int i=0;i<Integer.parseInt(boletos);i++)
       {
           Apuestas[i]=Integer.parseInt(request.getParameter("boleto"+i));
           boleto[i]= new Boleto(i+1,Apuestas[i]);
           String[] auxiliar = boleto[i].getApuestas();
           /*En función del nº de apuestas creo los atributos con los numeros*/
           //for(int j=0;j<Apuestas[i];j++){
              /* String[] parts = auxiliar[j].split(",");
               request.setAttribute("Boleto"+i+"Apuesta"+j+"Num1",parts[0]);
               request.setAttribute("Boleto"+i+"Apuesta"+j+"Num2",parts[0]);
               request.setAttribute("Boleto"+i+"Apuesta"+j+"Num3",parts[0]);
               request.setAttribute("Boleto"+i+"Apuesta"+j+"Num4",parts[0]);
               request.setAttribute("Boleto"+i+"Apuesta"+j+"Num5",parts[0]);
               request.setAttribute("Boleto"+i+"Apuesta"+j+"Num6",parts[0]);*/
              
           //}
       }
       request.setAttribute("numboletos",boletos);
       request.setAttribute("total",total);
       RequestDispatcher dispatcher=request.getRequestDispatcher("/GeneradasGrafico.jsp");
       dispatcher.forward(request, response);
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
