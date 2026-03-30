/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Main;

import conexionBD.ConexionBD;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author HP
 */
public class DatosMock {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try (Connection con = ConexionBD.getConnection()) { // poner su root y psswd en la clase ConexionBD profe
            System.out.println("Conexion exitosa");
            insertarProductos(con);
            insertarUsuarios(con);
            insertarResenhas(con);
            insertarPedidos(con);
            insertarPedidoProductos(con);
            System.out.println("Todos los datos insertados correctamente");
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
 
    // ─────────────────────────────────────────
    // PRODUCTOS
    // ─────────────────────────────────────────
    static void insertarProductos(Connection con) throws Exception {
        String sql = "INSERT INTO productos (URLImagen, nombre, precio, stock, descripcion) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
 
        Object[][] productos = {
            {"https://m.media-amazon.com/images/I/71+ichAoOjL._AC_SY300_SX300_QL70_ML2_.jpg",  "Astro A50",                 3500, 10, "Audifonos inalambricos gaming con sonido surround"},
            {"https://http2.mlstatic.com/D_Q_NP_670463-MLA95395012399_102025-F.webp",  "Control PS5",               1200, 25, "Control DualSense para PlayStation 5"},
            {"https://http2.mlstatic.com/D_Q_NP_851835-MLA99476917042_112025-F.webp",  "Teclado Mecanico Redragon",  900, 15, "Teclado mecanico RGB para gaming"},
            {"https://m.media-amazon.com/images/I/61mpMH5TzkL.jpg",  "Mouse Logitech G502",        750, 20, "Mouse gaming con 11 botones programables"},
            {"https://m.media-amazon.com/images/I/612qvn+0zTL._AC_SY300_SX300_QL70_ML2_.jpg",  "Monitor LG 24",             4200,  8, "Monitor Full HD 144Hz para gaming"}
        };
        for (Object[] p : productos) {
            ps.setString(1, (String) p[0]);
            ps.setString(2, (String) p[1]);
            ps.setInt(3,    (int)    p[2]);
            ps.setInt(4,    (int)    p[3]);
            ps.setString(5, (String) p[4]);
            ps.executeUpdate();
        }
        System.out.println("Productos insertados");
    }
 
    // ─────────────────────────────────────────
    // USUARIOS
    // ─────────────────────────────────────────
    static void insertarUsuarios(Connection con) throws Exception {
        String sql = "INSERT INTO Usuarios (usuario, correo_electronico, contrasenia, telefono, fechaNacimiento) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
 
        Object[][] usuarios = {
            {"Carlos Mendoza", "carlos.mendoza@gmail.com",  "carlos123", 6441234567L, "1995-03-15"},
            {"Ana Garcia",     "ana.garcia@gmail.com",      "ana456",    6449876543L, "1998-07-22"},
            {"Luis Torres",    "luis.torres@hotmail.com",   "luis789",   6442345678L, "1990-11-08"},
            {"Maria Lopez",    "maria.lopez@gmail.com",     "maria321",  6448765432L, "2000-01-30"},
            {"Pedro Ramirez",  "pedro.ramirez@hotmail.com", "pedro654",  6443456789L, "1993-05-17"}
        };
 
        for (Object[] u : usuarios) {
            ps.setString(1, (String) u[0]);
            ps.setString(2, (String) u[1]);
            ps.setString(3, (String) u[2]);
            ps.setLong(4,   (long)   u[3]);
            ps.setString(5, (String) u[4]);
            ps.executeUpdate();
        }
        System.out.println("Usuarios insertados");
    }
 
    // ─────────────────────────────────────────
    // RESENHAS
    // ─────────────────────────────────────────
    static void insertarResenhas(Connection con) throws Exception {
        String sql = "INSERT INTO resenhas (usuarioId, calificacion, resenhia, productoId) VALUES (?, ?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
 
        Object[][] resenhas = {
            // Producto 1 - Astro A50
            {1, 5, "Excelente calidad de sonido, muy comodos",           1},
            {2, 4, "Buenos audifonos pero la bateria dura poco",         1},
            {3, 5, "Los mejores audifonos gaming que he tenido",         1},
            // Producto 2 - Control PS5
            {1, 5, "El haptico se siente increible en los juegos",       2},
            {2, 4, "Muy buen control, me gusta el diseno",               2},
            {3, 3, "Bueno pero se calienta un poco al cargar",           2},
            // Producto 3 - Teclado Redragon
            {1, 4, "Buena respuesta al escribir y el RGB es bonito",     3},
            {2, 5, "Excelente relacion calidad precio",                  3},
            {3, 4, "Muy buen teclado para gaming y trabajo",             3},
            // Producto 4 - Mouse Logitech
            {1, 5, "El mejor mouse que he usado, muy preciso",           4},
            {2, 4, "Comodo pero un poco pesado al principio",            4},
            {3, 5, "Perfecto para FPS, muy buena sensacion",             4},
            // Producto 5 - Monitor LG
            {1, 5, "Los 144Hz se notan muchisimo en los juegos",         5},
            {2, 4, "Buena imagen pero los colores necesitan ajuste",     5},
            {3, 5, "Excelente monitor para su precio",                   5}
        };
 
        for (Object[] r : resenhas) {
            ps.setInt(1,    (int)    r[0]);
            ps.setInt(2,    (int)    r[1]);
            ps.setString(3, (String) r[2]);
            ps.setInt(4,    (int)    r[3]);
            ps.executeUpdate();
        }
        System.out.println("Resenhas insertadas");
    }
 
    // ─────────────────────────────────────────
    // PEDIDOS
    // ─────────────────────────────────────────
    static void insertarPedidos(Connection con) throws Exception {
        String sql = "INSERT INTO Pedidos (usuarioId, estado, precioTotal) VALUES (?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
 
        Object[][] pedidos = {
            {1, "ENTREGADO", 4700},
            {2, "ENVIADO",   1650},
            {3, "ENREPARTO", 4200},
            {4, "PEDIDO",    5400},
            {5, "PEDIDO",    2850}
        };
 
        for (Object[] p : pedidos) {
            ps.setInt(1,    (int)    p[0]);
            ps.setString(2, (String) p[1]);
            ps.setInt(3,    (int)    p[2]);
            ps.executeUpdate();
        }
        System.out.println("Pedidos insertados");
    }
 
    // ─────────────────────────────────────────
    // PEDIDO_PRODUCTOS
    // ─────────────────────────────────────────
    static void insertarPedidoProductos(Connection con) throws Exception {
        String sql = "INSERT INTO PedidoProductos (pedidoId, productoId, cantidad) VALUES (?, ?, ?)";
        PreparedStatement ps = con.prepareStatement(sql);
 
        int[][] pedidoProductos = {
            // Pedido 1: Astro A50 + Control PS5
            {1, 1, 1},
            {1, 2, 1},
            // Pedido 2: Mouse + Teclado
            {2, 4, 1},
            {2, 3, 1},
            // Pedido 3: Monitor
            {3, 5, 1},
            // Pedido 4: Monitor + Control PS5
            {4, 5, 1},
            {4, 2, 1},
            // Pedido 5: Teclado + Mouse + Control PS5
            {5, 3, 1},
            {5, 4, 1},
            {5, 2, 1}
        };
 
        for (int[] pp : pedidoProductos) {
            ps.setInt(1, pp[0]);
            ps.setInt(2, pp[1]);
            ps.setInt(3, pp[2]);
            ps.executeUpdate();
        }
        System.out.println("PedidoProductos insertados");
    }
    
}
