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
import java.sql.ResultSet;
import java.util.ArrayList;
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
        List<Producto> lista = new ArrayList<>();

               try{
                   PreparedStatement ps = con.prepareStatement("SELECT * FROM productos");
                   ResultSet rs = ps.executeQuery();

                   while(rs.next()){
                       Producto p = new Producto();
                           p.setId(rs.getInt("id"));
                           p.setNombre(rs.getString("nombre"));
                           p.setPrecio(rs.getInt("precio"));
                           p.setStock(rs.getInt("stock"));
                           p.setDescripcion(rs.getString("descripcion"));
                           p.setImagen(rs.getString("URLImagen"));
                       
                       lista.add(p);
                   }
               }catch(Exception e){
                   System.out.println(e.getLocalizedMessage());
               }
               return lista;    
    }


    @Override
    public void eliminar(int id) {
        try{
            PreparedStatement ps = con.prepareStatement(
                "DELETE FROM productos WHERE id=?"
            );
            ps.setInt(1, id);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }    
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
        try{
            PreparedStatement ps = con.prepareStatement(
                "UPDATE productos SET URLImagen =?, nombre=?, precio=?, stock=?, descripcion = ? WHERE id=?"
            );
            ps.setString(1, obj.getImagen());
            ps.setString(2, obj.getNombre());
            ps.setInt(3, obj.getPrecio());
            ps.setInt(4, obj.getStock());
            ps.setInt(6, obj.getId());
            ps.setString(5, obj.getDescripcion());
                    
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }
    }

    @Override
    public Producto obtenerPorId(int id) {
        Producto p = null;
        try{
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM productos WHERE id=?"
            );
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                p = new Producto();
                    p.setId(rs.getInt("id"));
                    p.setNombre(rs.getString("nombre"));
                    p.setPrecio(rs.getInt("precio"));
                    p.setStock(rs.getInt("stock"));
                    p.setImagen(rs.getString("URLImagen"));
                    p.setDescripcion(rs.getString("descripcion"));
               
            }
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }
        return p;    
    }

}
