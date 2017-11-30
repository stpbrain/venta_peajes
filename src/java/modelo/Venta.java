/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author papalominos
 */
public class Venta {
    int id,rut,cantidad,valor;
    String nombre,direccion,comprador,carretera,opcDePago,opcDeRetiro;

    public void Init() {
        this.id = 0;
        this.rut = 0;
        this.cantidad = 0;
        this.valor = 0;
        this.nombre = "";
        this.direccion = "";
        this.comprador = "";
        this.carretera = "";
        this.opcDePago = "";
        this.opcDeRetiro = "";
    }

    public Venta() {
        Init();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRut() {
        return rut;
    }

    public void setRut(int rut) {
        this.rut = rut;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getComprador() {
        return comprador;
    }

    public void setComprador(String comprador) {
        this.comprador = comprador;
    }

    public String getCarretera() {
        return carretera;
    }

    public void setCarretera(String carretera) {
        this.carretera = carretera;
    }

    public String getOpcDePago() {
        return opcDePago;
    }

    public void setOpcDePago(String opcDePago) {
        this.opcDePago = opcDePago;
    }

    public String getOpcDeRetiro() {
        return opcDeRetiro;
    }

    public void setOpcDeRetiro(String opcDeRetiro) {
        this.opcDeRetiro = opcDeRetiro;
    }
    
    
    
    
}
