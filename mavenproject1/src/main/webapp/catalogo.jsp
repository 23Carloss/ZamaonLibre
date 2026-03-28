<!DOCTYPE html>
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
                
                <a href="PerfilUsuario.html">Perfil</a>
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
                <section class = "Filtros">
                    <input type="text" placeholder="Buscar Producto">
                    <input type="number" placeholder="Precio">
                    <label><input type="radio" name="Precio""">Menor</label>
                    <label><input type="radio" name="Precio""">Mayor</label>
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
                    <tr>
                        <td>
                            <img src="Imagenes/taladro.webp" alt="Taladro">
                        </td>
                        <td>Taladro 2000</td>
                        <td class ="precio">$2000</td>
                        <td class = "acciones">
                                <a href="DetallesTaladro.html">Detalles</a>
                                <button>Agregar al Carrito</button>
                                <button type="submit">
                                    <a href="CreareseñasTaladro.html">Dejar Reseña</a>
                                </button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="Imagenes/images.jfif" alt="Audifonos">                        </td>
                        <td>Audifonos A50</td>
                        <td class ="precio">$3500</td>
                        <td class = "acciones">
                                <a href="DetallesAudifonos.html">Detalles</a>
                                <button>Agregar al Carrito</button>
                                <button type="submit">
                                    <a href="CreareseñasAudifonos.html">Dejar Reseña</a>
                                </button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="Imagenes/taladro.webp" alt="Taladro">
                        </td>
                        <td>Taladro 2000</td>
                        <td class ="precio">$2000</td>
                        <td class = "acciones">
                                <a href="DetallesTaladro.html">Detalles</a>
                                <button>Agregar al Carrito</button>
                                <button type="submit">
                                    <a href="CreareseñasTaladro.html">Dejar Reseña</a>
                                </button>
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