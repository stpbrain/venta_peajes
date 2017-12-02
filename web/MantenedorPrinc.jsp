<%-- 
    Document   : index
    Created on : 29-nov-2017, 2:37:19
    Author     : papalominos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Venta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(true);
    Integer oc = (Integer) sesion.getAttribute("oc");
    Integer rut = (Integer) sesion.getAttribute("rut");
    ArrayList<Venta> listVent = (ArrayList<Venta>) sesion.getAttribute("ListaVenta");
    String c = "";
    String e = "";
    int t = 0;
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
        <title>Compra de Pases de Carretera </title>
    </head>
    <body style="width: 100%">
        <div class="container-fluid text-center">
            <script type="text/javascript">
                var bannersnack_embed = {"hash": "bxj82kthw", "width": 728, "height": 90, "t": 1511953470, "userId": 32899651, "type": "html5"};
            </script>
            <script type="text/javascript" src="//cdn.bannersnack.com/iframe/embed.js"></script>
            <!--
            inicio modal 
            -->
            <div class="container " style="position: absolute; right: 650px ">
                <input type="text" name="ordendecompra" value="Su orden es la N°<%=oc%>" class="btn btn-link"/><br>
                <input type="submit" name="btn_pedido_anterior" value="Pedido anterior" class="btn btn-link"/><br>
                <!-- Trigger the modal with a button -->
                <button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">Ayuda</button>
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Seccion de Ayuda</h4>
                            </div>
                            <div class="modal-body">
                                <p>Para poder contactar a soporte, favor llamar a Fono: <h6 style="color: blue"> 55-555-555 </h6> o enviar un correo a <h6 style="color: green">soporteRapidinPass@rapidinpass.cl</h6> </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <div class="container " style="position: absolute; right: -900px " >
            <table class="text-center" >
                <tr>
                    <td><input type="submit" name="btn_inicio" value="Ver Carreteras" class="btn btn-link" ></td>
                </tr>
            </table>
        </div> 
    <form action="./ServletPrincipal" method="POST" name="f2">
        <div class="container" style="width: 900px "  >
            <div class="text-center"><h3>Ingrese datos de la empresa</h3></div>
            <input type="text" name="ordendecompra" value="<%=oc%>" style="display: none"/> 
            <table class="table container text-center table-striped table-bordered table-hover" >
                <tr>
                    <td>Rut:</td>
                <% 
                    if (rut != null) {
                        c = "Value='" + rut + "'";
                        e = "readonly";
                    }
                %>
                    <td><input type="text" name="rut_empresa"  <%=c%> class="form" maxlength="9" <%=e%> required=""></td>
                </tr>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre_empresa" class="form" required=""</td>
                </tr>
                <tr>
                    <td>Direccion:</td>
                    <td><input type="text" name="direccion" class="form" required=""</td>
                </tr>
                <tr>
                    <td>Comprado por:</td>
                    <td><input type="text" name="comprador" class="form" required=""</td>
                </tr>
            </table>
            <hr style="border-top: 3px solid #0000ff">
            <table>
                <tr>
                    <th>Seleccione Carretera , indique la cantidad y Agregue al pedido</th>
                </tr>
                <tr>
                    <td>
                        <select name="autopista" required="">
                            <option value="nadan los patos en el agua" >Seleccione una ruta </option>
                            <option value="Autopista Central" >Ruta 05 - Autopista Central - Santiago </option>
                            <option value="Ruta del Maipo" >Ruta 05 - Ruta del Maipo</option>
                            <option value="Autopista Nororiente" >Ruta 68 - Autopista Nororiente - Santiago</option>
                            <option value="Costanera Norte" >Ruta 68 - Costanera Norte - Santiago</option>
                            <option value="Vespucio Norte" >Ruta 78 - Vespucio Norte - Santiago </option>
                            <option value="Vespucio Sur" >Ruta 78 - Vespucio Sur - Santiago</option>
                        </select>
                    </td>
                    <td>
                        <input type="submit" name="btn_agregar_autopista" value="Agregar"class="btn btn-success"/>
                    </td>
                </tr>
            </table>
        </div>
    </form> 
    <br>
    <br>
    <div class="container" style="width: 900px " >
        <table class="table container text-center table-striped table-bordered table-hover">
            <tr>
                <th class="text-center">Carretera</th>
                <th class="text-center">Cantidad</th>
                <th class="text-center">Valor</th>
            </tr>
        <% 
            if (listVent != null) {
                for (Venta elem : listVent) {
        %>
            <tr>
                <td class="text-center"><%= elem.getCarretera()%> </td>
                <td class="text-center"><%= elem.getCantidad()%></td>
                <td class="text-center"><%= elem.getValor()%></td>
            </tr>
        <% 
                    t = t + elem.getValor(); 
                }
            }
        %>
        </table>
    </div>
<form action="./ServletPrincipal" method="POST" name="f4">
    <div class="container" style="position: absolute; right: 150px; top: 450px">
        <table>
            <tr>
                <th>Opciones de Pago</th>
            </tr>
            <tr>
                <td><input type="radio" name="op_pago">Transferencia</td>
            </tr>
            <tr>
                <td><input type="radio" name="op_pago" required="">Pago en Linea</td>
            </tr>
            <tr>
                <td><input type="radio" name="op_pago">Orden de Compra</td>
            </tr>    
            <td></td>
            </tr>
        </table>
        <br/>
        <table>
            <tr>
                <th>Opciones de Retiro</th>
            </tr>
            <tr>
                <td><input type="radio" name="op_retiro">Oficina</td>
            </tr>
            <tr>
                <td><input type="radio" name="op_retiro" required="">Envio Cliente</td>
            </tr>
        </table>
    </div>
    <div class="container text-center">
        <h3> El total de la compra es : <%= t%></h3>
        <input type="submit" name="btn_comprar" value="Comprar">
    </div>
</form>        
</body>
</html>
