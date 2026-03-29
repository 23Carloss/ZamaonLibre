<html lang="es">
    <%@page import= "jakarta.servlet.http.*, Modelos.Producto"  %>
    
        <% HttpSession sesion = request.getSession(); 
           String admin = (String) sesion.getAttribute("admin");
        
        %>
        <% Producto producto = (Producto) session.getAttribute("producto"); %>
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
                <a href="<%= request.getContextPath()%>/AdministradorServlet?accion=logout"></a>
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
                <div class = "agregarProducto">
                    <form action="<%= request.getContextPath() %>/ProductosServlet" method="post">
                        <input type="hidden" name="accion" value="editar">
                        <input type="hidden" name="id" value="<%= producto.getId() %>">
                    <label for="imagen">URL de la imagen del producto</label>
                    <input id="imagen" type="text" name= imagen value <%= producto.getImagen() %>>
                    <label for="nombre">Nombre del producto</label>
                    <input id="nombre" type="text" name="nombre" value= <%= producto.getNombre() %>>
                    <label for="descripcion">Descripcion del producto</label>
                    <input id="descripcion" type="text" name="descripcion" value=<%= producto.getDescripcion() %>>
                    <label for="precio">Precio del producto</label>
                    <input id="precio" type="number" name="precio" value=<%= producto.getPrecio()%>>
                    <label for="stock">Stock del producto</label>
                    <input id="stock" type="number" name="stock" value=<%= producto.getStock()%>>
                    
                    <button type="submit">Guardar cambios</button>
                    <button type="button" onclick="location.href= '<%= request.getContextPath() %>/Admin/administracionCatalago.jsp'">Cancelar</button>

                    </form>                 
                </div>
                
            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>