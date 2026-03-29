/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package DAO;

import conexionBD.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
public class AdministradorDAO {

    public AdministradorDAO() {
    
    }
    
    public boolean iniciarSesion(String CorreoE, String password){
        boolean validacion = false;
        try{
            Connection conexionBD = ConexionBD.getConnection();
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

}
