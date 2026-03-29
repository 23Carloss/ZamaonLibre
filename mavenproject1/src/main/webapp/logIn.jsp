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
                
                <div>Perfil</div>
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
                <section class ="contenedorInicioSesion">

                    <form action ="<%= request.getContextPath()%>/AdministradorServlet" method="post">
                        <input type="hidden" name="accion" value="logIn">  
                    <br>
                    <div name ="titulo"">
                        <h3> Inicia Sesion</h3>
                        <span>Completa la informacion y envia tus datos</span>
                    </div>
                    <br>
                    <div name ="Correo">
                        <label for="txt_correo">Correo de usuario</label>
                        <input id ="txt_correo"  name="txt_correo" type ="text">
                    </div>
                    <br>
                    <div name ="Password">
                        <label for="txt_pssw">Password</label>
                        <input id ="txt_pssw"  name="txt_password" type ="password" required>
                    </div>
                    <br>
                    <button name ="Btn_Confirmar">
                       Log In
                        
                    </button>
                        <a href="registro.jsp">Registro</a>                       
                </form>
        </section>

            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>