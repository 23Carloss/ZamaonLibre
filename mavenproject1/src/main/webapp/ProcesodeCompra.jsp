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
                <a href="AdminServlet?accion=logout">Cerrar sesión</a>
            </header>
            <!--menu lateral-->
            <aside class="sidebar">
                <a href="<%= request.getContextPath() %>/index.jsp">Inicio</a>
                <a href="<%= request.getContextPath() %>/CatalogoServlet?accion=user">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>/AdministradorServlet?accion=user.jsp">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                <section class="InformacionCompra">
                    <h1>Proceso de compra</h1>
                    <h2>Direccion a enviar</h2>
                    <h3>Luis Carlos M.</h3>
                    <label>Plaza sesamo 2016</label>

                </section>
                <table  class = "Caracteristicas">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Precio</th>
                        <th>Cantidad</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Astro A50</td>
                        <td>$7000</td>
                        <td>2 unidades</td>
                        
                    </tr>
                    <tr>
                        <td>Taladro 2000</td>
                        <td>$2000</td>
                        <td>1 unidad</td>
                    </tr>
                                                    
                    </tbody>
                </table>
                <div class="TotalCompra">
                    <p>Total del productos:     <strong>$9000</strong></p>
                </div>
                <section class="MetodosdePago">
                    <h2>Metodo de pago</h2>
                    <label>
                        <input type="radio" name="pago" value="Debito">Tarjeta de debito
                        <input type="radio" name="pago" value="Credito">Tarjeta de Credito
                        <input type="radio" name="pago" value="Paypal">Paypal
                        <input type="radio" name="pago" value="Deposito">Deposito

                    </label>
                </section>
                <div class ="BtnComprar">
                    <a href="ConfrimarcionCompra.jsp">
                    <button type="button">Confirmar compra</button>
                    </a>
                </div>

            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>