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
                
                <div a href="PerfilUsuario.html">Perfil</div>
                <div>Cerrar sesion</div>
            </header>
            <!--menu lateral-->
            <aside class="sidebar">
                <a href="index.html">Inicio</a>
                <a href="catalogo.html">Catalogo</a>
                <a href="Carrito.html">Carrito</a>
                <a href="Pedidos.html">Pedidos</a>
                <a href="Administrador.html">Administrador</a>
                <a href="logIn.html">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                <table  class = "Catalogo">
                    <h1>Gestion de reseñas</h1>
                    <thead>
                        <tr>
                            <th>Producto</th>
                            <th>Cliente</th>
                            <th>Calificacion</th>
                            <th>Comentario</th>
                            <th>fecha publicacion</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><img src="Imagenes/images.jfif"></td>
                            <td>
                                Ana López
                            </td>
                            <td>3 Estrellas</td>
                            <td>Funciona bien pero el cable es corto.</td>
                            <td>20/05/2025</td>
                            <td>
                                <button>Eliminar Reseña</button>
                            </td>
                        </tr>
                        <tr>
                            <td><img src="Imagenes/taladro.webp"></td>
                            <td>
                                Juan Pérez
                            </td>
                            <td>5 Estrellas</td>
                            <td>Muy buen producto, lo recomiendo.</td>
                            <td>10/09/2024</td>
                            <td>
                                <button>Eliminar Reseña</button>
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