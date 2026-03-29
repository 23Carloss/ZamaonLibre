<!DOCTYPE html>
<%@page import= "java.util.*,  Modelos.Producto, DAO.ProductoDAO"  %>
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
                <a href="AdministradorServlet?accion=logout">Cerrar sesión</a>
            </header>
            <!--menu lateral-->
            <aside class="sidebar">
                <a href="<%= request.getContextPath() %>/index.jsp">Inicio</a>
                <a href="<%= request.getContextPath() %>/CatalogoServlet">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>/Administrador.jsp">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                <section class = "Filtros">
                    <input type="text" placeholder="Buscar Producto">
                    <input type="number" placeholder="Precio">
                    <label><input type="radio" name="Precio""">Menor</label>
                    <label><input type="radio" name="Precio""">Mayor</label>
                    <button>Filtrar</button>
                    <a href="<%= request.getContextPath() %>/Admin/agregarProducto.jsp">
                        <button>Agregar Producto</button>
                    </a>
                    

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
                            <img src="<%= p.getImagen()%>">
                        </td>
                        <td><%= p.getNombre() %></td>
                        <td class ="precio"><%= p.getPrecio() %></td>
                        <td class = "acciones">
                                <a href="<%= request.getContextPath() %>/Admin/EditarProducto.jsp">
                                    <button>
                                    Editar producto
                                </button></a>
                                <a href= "ProductosServlet?accion=eliminar&id=<%= p.getId()%>" >
                                <button>
                                   Eliminar producto
                                </button>
                                </a>
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