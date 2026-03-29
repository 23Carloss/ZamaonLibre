/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import DAO.ProductoDAO;
import Modelos.Producto;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author HP
 */
@WebServlet(name = "ProductosServlet", urlPatterns = {"/ProductosServlet"})
public class ProductosServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ProductosServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProductosServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          
        String accion = request.getParameter("accion");
        ProductoDAO dao = new ProductoDAO();
            if(accion.equals("seleccionar")){
                int id =  Integer.parseInt(request.getParameter("id"));
                Producto seleccion = dao.obtenerPorId(id);
                HttpSession session = request.getSession();
                session.setAttribute("producto", seleccion);
                request.getRequestDispatcher("/Admin/EditarProducto.jsp").forward(request, response);
            
            }else if(accion.equals("eliminar")){
                dao.eliminar(Integer.parseInt(request.getParameter("id")));
                response.sendRedirect(request.getContextPath()+"/CatalogoServlet?accion=admin");
            }
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        String accion = request.getParameter("accion");
        ProductoDAO dao = new ProductoDAO();
        if(accion.equals("agregar")){
            Producto producto =new Producto();         
            String urlImagen = request.getParameter("imagen");
            String nombre = request.getParameter("nombre");
            String StringPrecio = request.getParameter("precio");
            int precio = Integer.parseInt(StringPrecio);
            String descripcion = request.getParameter("descripcion");
            String StringStock = request.getParameter("stock");
            int stock = Integer.parseInt(StringStock);
            
            producto.setNombre(nombre); producto.setPrecio(precio); producto.setDescripcion(descripcion); producto.setStock(stock) ; producto.setImagen(urlImagen);
            dao.crear(producto);
            request.getRequestDispatcher("/CatalogoServlet?accion=admin").forward(request, response);
        }
        else if(accion.equals("editar")){
            
            Producto productoEditado = new Producto();
            productoEditado.setId(Integer.parseInt(request.getParameter("id")));
            productoEditado.setNombre(request.getParameter("nombre"));
            productoEditado.setPrecio(Integer.parseInt(request.getParameter("precio")));
            productoEditado.setDescripcion(request.getParameter("descripcion"));
            productoEditado.setStock(Integer.parseInt(request.getParameter("stock")));
            productoEditado.setImagen(request.getParameter("imagen"));
            
            dao.actualizar(productoEditado);
            
            response.sendRedirect(request.getContextPath()+"/CatalogoServlet?accion=admin");
        }
         
        
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
