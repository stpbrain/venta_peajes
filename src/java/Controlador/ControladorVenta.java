/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DB.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import modelo.Venta;

/**
 *
 * @author papalominos
 */
public class ControladorVenta {
    
    public int OrdenCompra()
    {
        int oc =00;
        try {
            Conexion conn = new Conexion();
            Connection conexion = conn.getConnection("carreteras");
            Statement stms = conexion.createStatement();
            
       String ins = "INSERT secuencia VALUE (null);";
            
             stms.executeUpdate(ins);
      String orden = "select max(id) as orden from secuencia;";
      
      ResultSet rs = stms.executeQuery(orden);
      
      while(rs.next())
      {
          oc = rs.getInt("orden");
      }
       
      return oc;
      
        } catch (Exception e) {
            e.getStackTrace();
            return oc;
        }
    }
    
    public boolean insertaParcial(Venta v)
    {
        
        try {
            if(v.getCarretera().equals("nadan los patos en el agua"))
            {
                v.setValor(0);
            }
            if(v.getCarretera().equals("Autopista Central"))
            {
                v.setValor(2700);
            }
            if(v.getCarretera().equals("Ruta del Maipo"))
            {
                v.setValor(3100);
            }
            if(v.getCarretera().equals("Autopista Nororiente"))
            {
                v.setValor(2000);
            }
            if(v.getCarretera().equals("Costanera Norte"))
            {
                v.setValor(1100);
            }
            if(v.getCarretera().equals("Vespucio Norte"))
            {
                v.setValor(3000);
            }
            if(v.getCarretera().equals("Vespucio Sur"))
            {
                v.setValor(2000);
            }
            Conexion conn = new Conexion();
            Connection conexion = conn.getConnection("carreteras");
            Statement stms = conexion.createStatement();
            
            String inserta= "insert into datos values("+v.getId()+","+v.getRut()+",'"+v.getNombre()+"','"+v.getDireccion()+"','"+v.getComprador()+"','"+v.getCarretera()+"',1,'"+v.getOpcDePago()+"','"+v.getOpcDeRetiro()+"',"+v.getValor()+");";
            
             stms.executeUpdate(inserta);
             
             return true;
        } catch (Exception e) {
            e.getStackTrace();
            return false;
        }

    }
    
    public ArrayList ListaVenta(int oc, int rut)
    {
        ArrayList<Venta> list = new ArrayList<>();
        
        try {
             Conexion conn = new Conexion();
            Connection conexion = conn.getConnection("carreteras");
            Statement stms = conexion.createStatement();
            
             String listar = "select rut, nombre, direccion, comprador, carretera, sum(cantidad) as can, sum(valor) as val from datos where id ="+oc+" and rut = "+rut+" group by carretera ;";
      
      ResultSet rs = stms.executeQuery(listar);
      
      while(rs.next())
      {
          Venta v = new Venta();
          
          v.setRut(rs.getInt("rut"));
          v.setNombre(rs.getString("nombre"));
          v.setDireccion(rs.getString("direccion"));
          v.setComprador(rs.getString("comprador"));
          v.setCarretera(rs.getString("carretera"));
          v.setCantidad(rs.getInt("can"));
          v.setValor(rs.getInt("val"));
          list.add(v);
      }
           return list; 
            
        } catch (Exception e) {
            e.getStackTrace();
            return list;
        }
        
        
    }
    public void DatosPagoRetiro(int oc, int rut,String pago,String retiro)
    {
        try {
            Conexion conn = new Conexion();
            Connection conexion = conn.getConnection("carreteras");
            Statement stms = conexion.createStatement();
            
            String datos = "UPDATE datos SET opcion_de_pago = "+pago+", opcion_de_retiro = "+retiro+" where rut = "+rut+" and id = "+oc+"; ";
            
            stms.executeUpdate(datos);
            
        } catch (Exception e) {
            e.getStackTrace();
            
        }
    
    }
    
}
