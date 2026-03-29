<!DOCTYPE html>
<html lang="es">
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
                <a href="<%= request.getContextPath() %>/CatalogoServlet">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>Administrador.jsp">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                <section class="PanelAdmin">
                    <h1>Panel administrador</h1>
                    <ul>
                        <li><a href="<%= request.getContextPath() %>/gestionUsuarios.jsp"</a>Administrar usuarios</li>
                        <li><a href="<%= request.getContextPath() %>/CatalogoServlet?accion=admin"</a>Catalogo de productos</li>
                        <li><a href="<%= request.getContextPath() %>/gestionPedidos.jsp"</a>Administrar pedidos</li>
                        <li><a href="<%= request.getContextPath() %>/gestionarReseñas.jsp"</a>Administrar reseñas</li>
                    </ul>
                </section>
                

            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>