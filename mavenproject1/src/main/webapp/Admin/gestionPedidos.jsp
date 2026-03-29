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
                <a href="<%= request.getContextPath() %>/CatalogoServlet?accion=admin">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>/AdministradorServlet?accion=admin">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                 <table  class = "Catalogo">
                    <h1>Gestion de Pedido</h1>
                    <thead>
                        <tr>
                            <th>Numero de Pedido</th>
                            <th>Correo Electronico del cliente</th>
                            <th>Estado del Pedido</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>434-2323-233</td>
                            <td>
                                carlos@outlook.es
                            </td>
                            <td>Pendiente</td>
                            <td>
                                <button>Cambiar Estado</button>
                            </td>
                        </tr>
                        <tr>
                            <td>433-2364-232</td>
                            <td>
                                carlos@outlook.es
                            </td>
                            <td>Entregado</td>
                            <td>
                                <button>Cambiar Estado</button>
                            </td>
                            
                        </tr>
                    </tbody>    
                </table>

            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>