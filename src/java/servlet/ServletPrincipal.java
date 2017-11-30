/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import Controlador.ControladorVenta;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.Venta;

/**
 *
 * @author papalominos
 */
@WebServlet(name = "ServletPrincipal", urlPatterns = {"/ServletPrincipal"})
public class ServletPrincipal extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
           
             RequestDispatcher dispatcher = null;
              HttpSession sesion = request.getSession();
             
              String btn_entrar = request.getParameter("btn_entrar");
              String btn_agregar_autopista = request.getParameter("btn_agregar_autopista");
              String btn_comprar = request.getParameter("btn_comprar");
              
              if(btn_entrar != null)
              {
                  ControladorVenta cv = new ControladorVenta();
              sesion.setAttribute("oc", cv.OrdenCompra());
                    dispatcher = request.getRequestDispatcher("/MantenedorPrinc.jsp");
                    dispatcher.forward(request, response);
                   
              }
              if(btn_agregar_autopista != null)
              {
                  String ocT = request.getParameter("ordendecompra");
                  int oc = Integer.parseInt(ocT);
                  
                  String rut_empresa = request.getParameter("rut_empresa");
                  int rut_emp = Integer.parseInt(rut_empresa);
                  String nombre_empresa = request.getParameter("nombre_empresa");
                  String direccion = request.getParameter("direccion");
                  String comprador = request.getParameter("comprador");
                  String autopista = request.getParameter("autopista");
                  Venta v = new Venta();
                  v.setId(oc);
                  v.setRut(rut_emp);
                  v.setNombre(nombre_empresa);
                  v.setDireccion(direccion);
                  v.setComprador(comprador);
                  v.setCarretera(autopista);
                  
                  ControladorVenta cv = new ControladorVenta();
                  cv.insertaParcial(v);
                  sesion.setAttribute("rut",rut_emp);
                  sesion.setAttribute("ListaVenta",cv.ListaVenta(v.getId(), v.getRut()));
                 
                   dispatcher = request.getRequestDispatcher("/MantenedorPrinc.jsp");
                    dispatcher.forward(request, response);
                  
                  
                  
              
              }
            if(btn_comprar != null)
            {
                String opc_pago = request.getParameter("op_pago");
                String opc_retiro = request.getParameter("op_retiro");
                ControladorVenta c = new ControladorVenta();
                Integer orden = (Integer) sesion.getAttribute("oc");
                Integer rut = (Integer) sesion.getAttribute("rut");
                
                c.DatosPagoRetiro(orden,rut,opc_pago,opc_retiro);
                
                 dispatcher = request.getRequestDispatcher("/Boleta.jsp");
                    dispatcher.forward(request, response);
            
            }
        }
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
