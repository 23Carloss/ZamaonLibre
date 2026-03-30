/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package DAO;

import Modelos.Administrador;
import conexionBD.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
public class AdministradorDAO {
    private Administrador administradorLoggeado;
    private Connection conexionBD;
    public AdministradorDAO() {
        conexionBD = ConexionBD.getConnection();
    }
    
    public void agregarAdministrador(Administrador admin){
        try{
            String statement = "insert into Administradores (usuario, correo_electronico, contrasenia) values (?,?,?)";
            PreparedStatement ps = conexionBD.prepareStatement(statement);
            ps.setString(1, admin.getUsuario());
            ps.setString(2, admin.getCorreoE());
            ps.setString(3, admin.getPassword());
            ps.executeUpdate();
        }catch(Exception e){
            
        }
    }
    
    public Administrador buscarPorCorreo(String correE){
        try{
            String statement = "Select * from Administradores where correo_electronico = ?";
            PreparedStatement ps = conexionBD.prepareStatement(statement);
            ps.setString(1, correE);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                return rs.getObject(1, Administrador.class);
            }
        }catch(Exception e){
            
        }
        return null;
    }
    
    public boolean iniciarSesion(String CorreoE, String password){
        boolean validacion = false;
        try{
            String statement = "Select * from Administradores where correo_electronico = ? and contrasenia = ?";
            PreparedStatement ps =conexionBD.prepareStatement(statement);
            
            ps.setString(1, CorreoE);
            ps.setString(2, password);
            ResultSet rs =  ps.executeQuery();
            
            if(rs.next()){
                validacion =true;
            }
        }catch(Exception e){
            System.out.println(e.getLocalizedMessage());
        }
        return validacion;
                
    } 
    
    public void setAdmin(Administrador admin){
        administradorLoggeado =admin;
    }

    public Administrador getAdministradorLoggeado() {
        return administradorLoggeado;
    }
    

}
