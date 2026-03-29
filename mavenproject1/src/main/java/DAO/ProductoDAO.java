/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package DAO;

import Interfaces.Crud;
import Modelos.Producto;
import conexionBD.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
public class ProductoDAO implements Crud<Producto>{
    Connection con;
    public ProductoDAO() {
        con = ConexionBD.getConnection();
    }
    

    @Override
    public List obtenerTodos() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }


    @Override
    public void eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void crear(Producto obj) {
        try{
            
            PreparedStatement ps = con.prepareStatement("insert into productos (URLImagen, nombre, precio, descripcion, stock) values (?, ?, ?, ?,?)");
            ps.setString(1, obj.getImagen());
            ps.setString(2, obj.getNombre());
            ps.setInt(3, obj.getPrecio());
            ps.setString(4, obj.getDescripcion());
            ps.setInt(5, obj.getStock());
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }    
    }

    @Override
    public void actualizar(Producto obj) {
        
    }

    @Override
    public Producto obtenerPorId(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
