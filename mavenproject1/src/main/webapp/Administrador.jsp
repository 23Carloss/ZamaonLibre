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
                <a href="index.jsp">Inicio</a>
                <a href="catalogo.jsp">Catalogo</a>
                <a href="Carrito.jsp">Carrito</a>
                <a href="Pedidos.jsp">Pedidos</a>
                <a href="Administrador.jsp">Administrador</a>
                <a href="logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                <section class="PanelAdmin">
                    <h1>Panel administrador</h1>
                    <ul>
                        <li><a href="gestionUsuarios.jsp"</a>Administrar usuarios</li>
                        <li><a href="administracionCatalogo.jsp"</a>Catalogo de productos</li>
                        <li><a href="gestionPedidos.jsp"</a>Administrar pedidos</li>
                        <li><a href="gestionarReseñas.jsp"</a>Administrar reseñas</li>
                    </ul>
                </section>
                

            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>