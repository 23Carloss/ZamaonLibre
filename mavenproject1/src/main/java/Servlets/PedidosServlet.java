/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import DAO.PedidoDAO;
import Modelos.EstadosEnvio;
import Modelos.Pedido;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author HP
 */
@WebServlet(name = "PedidosServlet", urlPatterns = {"/PedidosServlet"})
public class PedidosServlet extends HttpServlet {

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
            out.println("<title>Servlet PedidosServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PedidosServlet at " + request.getContextPath() + "</h1>");
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
            PedidoDAO dao = new PedidoDAO();
            List<Pedido> listaP = dao.obtenerTodos();
            request.getSession().setAttribute("listaPedidos", listaP);
            String accion = request.getParameter("accion");
            if(accion.equals("admin")){
                request.getRequestDispatcher("/Admin/gestionPedidos.jsp").forward(request, response);
            }
            else if("cambiarEstado".equals(accion)){
                int id = Integer.parseInt(request.getParameter("id"));
                Pedido pedido = dao.obtenerPorId(id);
                request.setAttribute("pedido", pedido);
                request.getRequestDispatcher("/Admin/cambiarEstado.jsp").forward(request, response);
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
        PedidoDAO dao = new PedidoDAO();
        if("cambiarEstado".equals(accion)){
            int id = Integer.parseInt(request.getParameter("id"));
            EstadosEnvio nuevoEstado = EstadosEnvio.valueOf(request.getParameter("estado"));
            dao.actualizarEstado(id, nuevoEstado);
            response.sendRedirect(request.getContextPath() + "/PedidosServlet?accion=admin");
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
