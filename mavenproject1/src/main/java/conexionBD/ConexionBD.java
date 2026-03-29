/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package conexionBD;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author $Luis Carlos Manjarrez Gonzalez
 */
public class ConexionBD {

    private static final String URL = "jdbc:mysql://localhost:3306/ZamaonLibre";
    private static final String USER = "root";
    private static final String PASS = "552834";
    
    public static Connection getConnection() {
        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(URL, USER, PASS);
            System.out.println("Conectado a la BD");
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }

        return con;
    }
}

