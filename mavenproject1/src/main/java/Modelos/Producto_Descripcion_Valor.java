/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Modelos;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
public class Producto_Descripcion_Valor {
    private int id;
    private String descripcion;
    private String valor;
    private int productoId;

    public Producto_Descripcion_Valor() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }

    public int getProductoId() {
        return productoId;
    }

    public void setProductoId(int productoId) {
        this.productoId = productoId;
    }

    @Override
    public String toString() {
        return "Producto_Descripcion_Valor{" + "id=" + id + ", descripcion=" + descripcion + ", valor=" + valor + ", productoId=" + productoId + '}';
    }
    
    
}
