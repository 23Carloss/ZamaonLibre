/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package DAO;

import Interfaces.ICRUD;
import Modelos.EstadosEnvio;
import Modelos.Pedido;
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
public class PedidoDAO implements ICRUD<Pedido>{
    private Connection con;

    public PedidoDAO() {
        con = ConexionBD.getConnection();
    }

    @Override
    public void crear(Pedido obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Pedido> obtenerTodos() {
        List<Pedido> listaP = new ArrayList<>();
        try{
            String stm = "Select * from Pedidos";
            PreparedStatement ps = con.prepareStatement(stm);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Pedido p = new Pedido();
                p.setId(rs.getInt("id"));
                String estado = rs.getString("estado");
                EstadosEnvio estadoEnvio = EstadosEnvio.valueOf(estado);
                p.setEstado(estadoEnvio);
                p.setListaProductos(obtenerProductosPorPedido(rs.getInt("id")));
                p.setPrecioTotal(rs.getInt("precioTotal"));
                p.setUsuarioId(rs.getInt("usuarioId"));
                listaP.add(p);
                 
            }
            System.out.println(listaP.toString());
            return listaP;
        }catch(Exception e){
            System.out.println("Error en PedidoDAO:ObtenerTodos:  " + e.getMessage());
        }
        return listaP;
    }

    @Override
    public Pedido obtenerPorId(int id) {
        Pedido p = null;
        try{
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM productos WHERE id=?"
            );
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                p = new Pedido();
                    p.setId(rs.getInt("id"));
                    String estado = rs.getString("estado");
                    EstadosEnvio estadoEnvio = EstadosEnvio.valueOf(estado);
                    p.setEstado(estadoEnvio);
                    p.setListaProductos(obtenerProductosPorPedido(rs.getInt("id")));
                    p.setPrecioTotal(rs.getInt("precioTotal"));
                    p.setUsuarioId(rs.getInt("usuarioId"));
               
            }
            return p;    
        }catch(Exception e){
            
        }
        return p;
    }

    public void actualizarEstado(int id, EstadosEnvio estado) {
        try {
            String sql = "UPDATE Pedidos SET estado = ? WHERE id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, estado.name());
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch(Exception e){
            e.printStackTrace();
        }
    }
    
    
    @Override
    public void actualizar(Pedido obj) {
        try{
            PreparedStatement ps = con.prepareStatement(
                "UPDATE Pedidos SET precioTotal =?, estado=?, WHERE id=?"
            );
            ps.setInt(1, obj.getPrecioTotal());
            ps.setString(2, obj.getEstado().toString());
            ps.setInt(3, obj.getId());
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }
    }

    @Override
    public void eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    private List<Producto> obtenerProductosPorPedido(int pedidoId){
        List<Producto> listaP = new ArrayList<>();
        
        try{
            String statement = "Select * from Pedido_Productos pdsP left join Productos p on pdsP.productoId = p.id where pds.id = ?";
            PreparedStatement ps = con.prepareStatement(statement);
            ps.setInt(1, pedidoId);
            ResultSet rs = ps.executeQuery();  
            while(rs.next()){
                Producto p = new Producto();
                p.setId(rs.getInt("id"));
                p.setImagen(rs.getString("URLImagen"));
                p.setDescripcion(rs.getString("descripcion"));
                p.setNombre(rs.getString("nombre"));
                p.setPrecio(rs.getInt("precio"));
                p.setStock(rs.getInt("stock"));
                listaP.add(p);
            }
            return listaP;
            
        }catch(Exception e){
            System.out.println("Error en PedidoDAO : "  + e.getMessage());
        }
        return listaP;
    }
    
    
}
    
   
   
