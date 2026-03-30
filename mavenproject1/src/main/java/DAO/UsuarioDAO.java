/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package DAO;

import Interfaces.ICRUD;
import Modelos.Usuario;
import conexionBD.ConexionBD;
import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
public class UsuarioDAO implements ICRUD<Usuario>{
    private Connection con;
    
    public UsuarioDAO() {
        con = ConexionBD.getConnection();
    }
    

    @Override
    public void crear(Usuario obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public List<Usuario> obtenerTodos() {
        List<Usuario> listaU = new ArrayList<>();
        try{
            String stm = "Select * from Usuarios";
            PreparedStatement ps = con.prepareStatement(stm);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Usuario u = new Usuario();
                    u.setId(rs.getInt("id"));
                    u.setUsuario(rs.getString("usuario"));
                    u.setCorreoE(rs.getString("correo_electronico"));
                    u.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                    u.setPassword(rs.getString("password"));
                    u.setTelefono(rs.getInt("telefono"));
                    listaU.add(u);
                    
            }
            return listaU;
        } catch(Exception e){
            
        }
        return listaU;
    }

    @Override
    public Usuario obtenerPorId(int id) {
        Usuario u = null;
        try{
            String stm = "Select * from Usuarios where id =?";
            PreparedStatement ps = con.prepareStatement(stm);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                u = new Usuario();
                    u.setId(rs.getInt("id"));
                    u.setUsuario(rs.getString("usuario"));
                    u.setCorreoE(rs.getString("correo_electronico"));
                    u.setFechaNacimiento(rs.getDate("fechaNacimiento"));
                    u.setPassword(rs.getString("password"));
                    u.setTelefono(rs.getInt("telefono"));
               
            }
            return u;
        }catch(Exception e){
            System.out.println("error en UsuarioDAO:ObtenrPorId :  " + e.getMessage());
        }
        return u;
    }

    @Override
    public void actualizar(Usuario obj) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
