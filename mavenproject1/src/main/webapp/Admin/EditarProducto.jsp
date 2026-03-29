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
                <a href="<%= request.getContextPath() %>/Administrador.jsp">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>


            </aside>
            <main class = "contenido">
                <div class = "agregarProducto">
                    <form action="<%= request.getContextPath() %>/ProductosServlet" method="post">
                        <input type="hidden" name="accion" value="editar">
                    <label for="descripion">URL de la imagen del producto</label>
                    <input id="imagen" type="text" name="Imagen" >
                    <label for="descripion">Nombre del producto</label>
                    <input id="nombre" type="text" name="nombre" value="taladro 2000">
                    <label for="descripion">Descripcion del producto</label>
                    <input id="descripion" type="text" name="descripion" value="Taladro tipo martillo">
                    <label for="Precio">Precio del producto</label>
                    <input id="Precio" type="number" name="Precio" value="2000">
                    <label for="Stock">Stock del producto</label>
                    <input id="Stock" type="number" name="Stock" value="50">
                    <a href="administracionCatalago.jsp">
                        <button>Editar producto</button>
                    </a> 
                    
                    <a href="<%= request.getContextPath() %>/Admin/administracionCatalago.jsp">
                        <button>Cancelar</button>
                    </a> 
                    </form>
                </div>
                
            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>