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
                <h1>Carrito de compras</h1>
                <table  class = "Caracteristicas">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Precio</th>
                        <th>Cantidad</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Astro A50</td>
                        <td>$3500</td>
                        <td>2 unidades</td>
                        <td class = "acciones">
                                <button>Eliminar del Carrito</button>
                    </tr>
                    <tr>
                        <td>Taladro 2000</td>
                        <td>$2000</td>
                        <td>1 unidad</td>
                        <td class = "acciones">
                                <button>Eliminar del Carrito</button>
                    </tr>
                                                    
                    </tbody>
                </table>
                <div class="TotalCompra">
                    <p>Total del productos:     $9000</p>
                </div>
                <div class="ProcesoCompra">
                    <a href="ProcesodeCompra.jsp">
                    <button type="button">Continuar a pagar</button>
                    </a>
                </div>
                

            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>