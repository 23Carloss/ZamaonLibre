/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package DAO;

import Modelos.Resenha;
import conexionBD.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Interfaces.ICRUD;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
public class ResenhasDAO implements ICRUD<Resenha>{
    private Connection con;

    public ResenhasDAO() {
        con = ConexionBD.getConnection();
    }
    
    public List<Resenha> obtenerTodos(){
        List<Resenha> lista = new ArrayList<>();
        try{
            String statement = "Select * from resenhas";
            PreparedStatement ps = con.prepareStatement(statement);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Resenha r = new Resenha();
                    r.setId(rs.getInt("id"));
                    r.setCalificacion(rs.getInt("calificacion"));
                    r.setComentario(rs.getString("resenhia"));
                    r.setProductoId(rs.getInt("productoId"));
                    r.setAutor(rs.getString("autor"));
                    lista.add(r);
                   }
            return lista;
        }catch(Exception e){
             System.out.println("Error en ResenhasDAO: " + e.getLocalizedMessage());
        }
        return lista;
        
    }
    
    public void eliminarPorId(int id){
        try{
            PreparedStatement ps = con.prepareStatement(
                "DELETE FROM resenhas WHERE id=?"
            );
            ps.setInt(1, id);
            ps.executeUpdate();
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }    
    }

    @Override
    public void crear(Resenha obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }



    @Override
    public Resenha obtenerPorId(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void actualizar(Resenha obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
    
}
