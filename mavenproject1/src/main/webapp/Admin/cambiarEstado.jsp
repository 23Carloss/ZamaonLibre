<%-- 
    Document   : cambiarEstado
    Created on : 29 mar 2026, 8:39:15 p.m.
    Author     : HP
--%>
<%@ page import="Modelos.Pedido" %>
<%@ page import="Modelos.EstadosEnvio" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Pedido pedido = (Pedido) request.getAttribute("pedido");
%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/styles.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cambiar Estado - Pedido #<%= pedido.getId() %></title>
    </head>
    <body>
        <div class="layout">

            <!-- Barra superior -->
            <header class="header">
                <div>Perfil</div>
                <a href="<%= request.getContextPath() %>/AdminServlet?accion=logout">Cerrar sesión</a>
            </header>

            <!-- Menu lateral -->
            <aside class="sidebar">
                <a href="<%= request.getContextPath() %>/index.jsp">Inicio</a>
                <a href="<%= request.getContextPath() %>/CatalogoServlet?accion=user">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>/AdministradorServlet?accion=panel">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>
            </aside>

            <main class="contenido">
                <h2>Pedido #<%= pedido.getId() %></h2>

                <div class="agregarProducto">
                    <form action="<%= request.getContextPath() %>/PedidosServlet" method="post">
                        <input type="hidden" name="accion" value="cambiarEstado">
                        <input type="hidden" name="id" value="<%= pedido.getId() %>">

                        <label for="estado">Estado del pedido</label>
                        <select name="estado" id="estado">
                            <% for(EstadosEnvio e : EstadosEnvio.values()){ %>
                                <option value="<%= e.name() %>"
                                    <%= e == pedido.getEstado() ? "selected" : "" %>>
                                    <%= e.name() %>
                                </option>
                            <% } %>
                        </select>

                        <button type="submit">Guardar cambio</button>
                        <button type="button"
                            onclick="location.href='<%= request.getContextPath() %>/PedidosServlet?accion=admin'">
                            Cancelar
                        </button>
                    </form>
                </div>
            </main>

            <footer class="footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
    </body>
</html>
