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
                
                <a href="PerfilUsuario.jsp">Perfil</a>>
                <div>Cerrar sesion</div>
            </header>
            <!--menu lateral-->
            <aside class="sidebar">
                <a href="<%= request.getContextPath() %>/index.jsp">Inicio</a>
                <a href="<%= request.getContextPath() %>/CatalogoServlet?accion=admin">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>/Admin/Administrador.jsp">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
            <div class="agregarProducto">
                <form action="<%= request.getContextPath() %>/ProductosServlet" method="POST" >
                    <input type="hidden" name="accion" value="agregar">
                    
                    <label for="imagen">Sube la imagen del producto</label>
                    <input id="imagen" type="text" name="imagen">

                    <label for="nombre">Nombre del producto</label>
                    <input id="nombre" type="text" name="nombre">

                    <label for="descripion">Descripcion del producto</label>
                    <input id="descripion" type="text" name="descripcion">

                    <label for="Precio">Precio del producto</label>
                    <input id="Precio" type="number" name="precio">

                    <label for="Stock">Stock del producto</label>
                    <input id="Stock" type="number" name="stock">

                    <button type="submit">Añadir producto</button>

                    <a href="<%= request.getContextPath() %>/Admin/administracionCatalago.jsp" class="btn-cancelar">Cancelar</a>

                </form>
            </div>
                
            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>