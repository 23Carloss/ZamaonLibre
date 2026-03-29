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
                <section class = "Filtros">
                    <input type="text" placeholder="Buscar Producto">
                    <input type="number" placeholder="Precio">
                    <label><input type="radio" name="Precio""">Menor</label>
                    <label><input type="radio" name="Precio""">Mayor</label>
                    <button>Filtrar</button>
                    <a href="agregarProducto.jsp">
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
                    <tr>
                        <td>
                            <img src="Imagenes/taladro.webp" alt="Taladro">
                        </td>
                        <td>Taladro 2000</td>
                        <td class ="precio">$2000</td>
                        <td class = "acciones">
                                <button type="submit">
                                    <a href="EditarProducto.jsp">Editar Producto</a>
                                </button>
                                <button type="submit">
                                    Eliminar producto
                                </button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="Imagenes/images.jfif" alt="Audifonos">                        </td>
                        <td>Audifonos A50</td>
                        <td class ="precio">$3500</td>
                        <td class = "acciones">
                           <button type="submit">
                                    <a href="EditarProducto.jsp">Editar Producto</a>
                                </button>
                                 <button type="submit">
                                    Eliminar producto
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
                                <button type="submit">
                                    <a href="EditarProducto.jsp">Editar Producto</a>
                                </button>
                                <button type="submit">
                                    Eliminar producto
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