<%-- 
    Document   : Boleta
    Created on : 30-nov-2017, 15:07:34
    Author     : papalominos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Venta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(true);
 Integer oc = (Integer) sesion.getAttribute("oc");
 ArrayList<Venta> listVent = (ArrayList<Venta>) sesion.getAttribute("ListaVenta");
 Integer rut = (Integer) sesion.getAttribute("rut");
 int t =0;
 String comp="";
 String nombre="";
 String direccion="";
    %>
<!DOCTYPE html>
<html>
    <head>
         <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="js/3.2.1/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
        <title>Boleta Final</title>
    </head>
    <body>
        <div class="container-fluid text-center">
            <script type="text/javascript">
            var bannersnack_embed = {"hash":"bxj82kthw","width":728,"height":90,"t":1511953470,"userId":32899651,"type":"html5"};
            </script>
            <script type="text/javascript" src="//cdn.bannersnack.com/iframe/embed.js"></script>
        </div>
        
        <div class="container text-center">
            <h2> Boletas de Rapidin Pass</h2>
             
           
        
        </div>
        <div class="container">
            <div class="container" style="width: 900px " >
          <table class="table container text-center table-striped table-bordered table-hover">
              <th class="text-center">Carretera</th>
              <th class="text-center">Cantidad</th>
              <th class="text-center">Valor</th>
            
           <% if(listVent != null)
              {
               for (Venta elem : listVent){%>
          <tr>
            
              <td class="text-center"><%= elem.getCarretera() %> </td>
              <td class="text-center"><%= elem.getCantidad() %></td>
              <td class="text-center"><%= elem.getValor() %></td>
             
              
          </tr>
          <% t= t+elem.getValor(); %>
          <% comp= elem.getComprador(); %>
          <% nombre= elem.getNombre(); %>
          <% direccion= elem.getDireccion(); %>
          
          
          <%}} %>
           </table>
           
           <br>
            <h3> El total de la compra es : $<%= t%>.-</h3>
           <br>
           <div class="container ">
               <table>
                   <tr class="text-center">
                       <td>
                           Su orden de compra es la N° <strong><%=oc%></strong>
            </td>
           </tr>
           <tr>
               <td>
         Comprador: <strong><%= nombre %></strong>
         </td>
           </tr>
           <tr>
               <td>
          Rut: <strong><%= rut%></strong></td>
           </tr>
           <tr>
          <td> Direccion: <strong><%= direccion%></strong></td>
           </tr>
           <tr>
          <td> Comprador: <strong><%=comp %></strong></td>
           </tr>
           
          </table>
      </div>
            
        </div>
       
          
       
      
      
    </body>
</html>
