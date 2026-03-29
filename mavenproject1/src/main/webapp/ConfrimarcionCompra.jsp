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
                
                <a href="PerfilUsuario.jsp">Perfil</a>
                <a href="AdminServlet?accion=logout">Cerrar sesión</a>
            </header>
            <!--menu lateral-->
            <aside class="sidebar">
                <a href="<%= request.getContextPath() %>/index.jsp">Inicio</a>
                <a href="<%= request.getContextPath() %>/CatalogoServlet?accion=user">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>/AdministradorServlet?accion=user.jsp">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                    <h1>Confrimarcion de Compra</h1>
                    <table  class = "Caracteristicas">
                <thead>
                    <tr>
                        <th>Aspectos</th>
                        <th>informacion</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            Numero pedido
                        </td>
                        <td>434-2323-233</td>
                    </tr>
                    <tr>
                        <td>
                            Direccion 
                        </td>
                        <td>Plaza sesamo 2016</td>
                    </tr>
                    <tr>
                        <td>
                            Fecha de compra 
                        </td>
                        <td>06/03/2026</td>
                    </tr>
                    <tr>
                        <td>
                            Total productos
                        </td>
                        <td><Strong>$9000</Strong></td>
                    </tr>
                    <tr>
                        <td>
                            Costo de envio
                        </td>
                        <td>
                            $0.00
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Total a pagar
                        </td>
                        <td>
                            <Strong>$9000</Strong>
                        </td>
                    </tr>
                    <tr>
                        <td>Cargo a metodo de pago</td>
                        <td><strong>$9000</strong></td>
                    </tr>
                    
                </tbody>
            </table>
                <div class ="BotonesResenha">
                    <a href="index.jsp">
                    <button type="button">Confirmar</button>
                    </a> 
                </div>   
            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>