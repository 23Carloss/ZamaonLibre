<!DOCTYPE html>
<html lang="es">
    <%String admin = (String) request.getAttribute("admin"); 
    %>
    <head>
        <link rel="stylesheet" href="./styles.css">
        <meta name="viewport" content="width=device-width, initial-scale= 1.0">
        <title>Zonama Libre</title>
    </head>
    <body>
        <div class = "layout">
            <!--barra superior-->
            <header class = "header">
                
                <a href="<%= request.getContextPath()%>/PerfilUsuario.jsp">Bienvenido <%= admin %></a>
                <a href="<%= request.getContextPath()%>/AdministradorServlet?accion=logout">Cerrar Sesion</a>
            </header>
            <!--menu lateral-->
            <aside class="sidebar">
                <a href="<%= request.getContextPath() %>/index.jsp">Inicio</a>
                <a href="<%= request.getContextPath() %>/CatalogoServlet">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>/AdministradorServlet?accion=panel">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                <section class="PanelAdmin">
                    <h1>Panel administrador</h1>
                    <ul>
                        <li><a href="<%= request.getContextPath() %>/Admin/gestionUsuarios.jsp"</a>Administrar usuarios</li>
                        <li><a href="<%= request.getContextPath() %>/CatalogoServlet?accion=admin"</a>Catalogo de productos</li>
                        <li><a href="<%= request.getContextPath() %>/PedidosServlet?accion=admin"</a>Administrar pedidos</li>
                        <li><a href="<%= request.getContextPath() %>/ResenhasServlet?accion=admin""</a>Administrar reseñas</li>
                    </ul>
                </section>
                

            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>