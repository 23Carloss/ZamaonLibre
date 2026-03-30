<!DOCTYPE html>
<html lang="es">
    <%@page import= "java.util.*,  Modelos.*,  DAO.PedidoDAO"%>
    <%String admin = (String) session.getAttribute("admin");%>
    <head>
        <link rel="stylesheet" href="./styles.css">
        <meta name="viewport" content="width=device-width, initial-scale= 1.0">
        <title>Zonama Libre</title>
    </head>
    <body>
        <div class = "layout">
            <!--barra superior-->
            <header class = "header">
                
                <div a href="PerfilUsuario.jsp">Perfil</div>
                <div>Cerrar sesion</div>
            </header>
            <!--menu lateral-->
            <aside class="sidebar">
                <a href="<%= request.getContextPath() %>/index.jsp">Inicio</a>
                <a href="<%= request.getContextPath() %>/CatalogoServlet?accion=admin">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>/AdministradorServlet?accion=panel">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                 <table  class = "Catalogo">
                    <h1>Gestion de Pedido</h1>
                    <thead>
                        <tr>
                            <th>ID de Pedido</th>
                            <th>ID del cliente</th>
                            <th>Estado del Pedido</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        
                        <%  List<Pedido> listaPedidos = (List<Pedido>)request.getSession().getAttribute("listaPedidos");
                        
                        for(Pedido p : listaPedidos){
                            int Total = 0;
                            for (Producto producto : p.getListaProductos()) {
                                Total += producto.getPrecio();
                            }
                    
                    %>
                    <input type="hidden" name="accion" value="editar">    
                    <tr>
                            <td>ID pedido: <%= p.getId()%>.</td>
                            <td>
                                ID user: <%= p.getUsuarioId()%> 
                            </td>
                            <td><%= p.getEstado().toString() %></td>
                            <td>
                                <a href="<%= request.getContextPath() %>/PedidosServlet?accion=cambiarEstado&id=<%= p.getId() %>">
                                    <button type="button">Cambiar Estado</button>
                                </a>
                            </td>
                        </tr>
                        <% }%>
                    </tbody>    
                </table>
                            
            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>