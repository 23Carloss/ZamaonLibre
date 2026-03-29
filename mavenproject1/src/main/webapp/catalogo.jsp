<!DOCTYPE html>
<%@page import= "java.util.*,  Modelos.Producto, DAO.ProductoDAO"  %>

<html lang="es">
    <head></head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="./styles.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Zamaon Libre</title>

        <body>
        <div class = "layout">
            <!--barra superior-->
            <header class = "header">
                
                <a href="PerfilUsuario.jsp">Perfil</a>
                <a href="AdminServlet?accion=logout">Cerrar sesión</a>

            </header>
            <!--menu lateral-->
            <aside class="sidebar">
                <a href="index.jsp">Inicio</a>
                <a href="<%= request.getContextPath() %>/CatalogoServlet?accion=usuario">Catalogo</a>
                <a href="Carrito.jsp">Carrito</a>
                <a href="Pedidos.jsp">Pedidos</a>
                <a href="Administrador.jsp">Administrador</a>
                <a href="logIn.jsp">Iniciar sesion</a>

            </aside>
        <main class = "contenido">
                <section class = "Filtros">
                    <input type="text" placeholder="Buscar Producto">
                    <input type="number" placeholder="Precio">
                    <label><input type="radio" name="Precio">Menor</label>
                    <label><input type="radio" name="Precio">Mayor</label>
                    <button>Filtrar</button>

                </section>
            <table  class = "Catalogo">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        List<Producto> lista = (List<Producto>) request.getAttribute("productos");
                    %>
                     <% for(Producto p: lista){ 
                     %>
                    <tr>
                        <td>
                            <div class="contenedorImagen">
                                <img src="<%= p.getImagen()%>">
                            </div>
                        </td>
                        <td><%= p.getNombre() %></td>
                        <td class ="precio"><%= p.getPrecio() %></td>
                        <td class = "acciones">
                                <a href="DetallesTaladro.jsp">Detalles</a>
                                <button>Agregar al Carrito</button>
                                <button type="submit">
                                    <a href="CreareseñasTaladro.jsp">Dejar Reseña</a>
                                </button>
                        </td>
                    </tr>
                    <% } %>
        
                </tbody>
                  
            </table>
        </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
        </body>
    </html>