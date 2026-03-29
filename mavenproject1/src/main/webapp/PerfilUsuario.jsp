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
                 <section class = "ContenedorRegistro">
                    <form>
                        
                        <div name ="titulo"">
                            <h3> Nuevo usuario</h3>
                            <span>Completa la informacion y envia tus datos</span> <br>
                        </div>

                        <div name ="nombre">
                            <label for="text_name">Nombre</label>
                            <input id ="txt_name"  name="txt_name" type ="text" value="Luis Carlos M">
                        </div>

                        <div name ="Correo">
                            <label for="txt_correo">Correo</label>
                            <input id ="txt_correp"  name="txt_correo" type ="email" value="carlos@.outlook.es" >
                        </div>

                        <div name ="Telefono">
                            <label for="txt_tel">Telefono</label>
                            <input id ="txt_tel"  name="txt_tel" type ="number" value="865443253">
                        </div>

                        <div name ="Password">
                            <label for="txt_pssw">Password</label>
                            <input id ="txt_pssw"  name="txt_pssw" type ="password" requeried value="carlitos">
                        </div>
                        <div name ="Password">
                            <label for="txt_pssw">Confirma tu contraseÃ±a</label>
                            <input id ="txt_pssw"  name="txt_pssw" type ="password" requeried value="carlitos">
                        </div>
                        <div name ="Direccion de envio">
                            <label for="txt_DireccionEnvio">Direccion de envio</label>
                            <input id ="txt_pseudo"  name="txt_pseudo" type ="text" value="Plaza sesamo 2016">
                        </div>

                        <div name ="fechaNacimiento">
                            <label for="txt_fechaNacimiento">Fecha Nacimiento</label>
                            <input id ="txt_fechaNacimiento"  type ="date" name ="txt_fechaNacimiento" >
                        </div>
                        
                        <button name ="Btn_Clean">
                            <a href="logIn.jsp">Guardar Cambios</a>
                        </button>

            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>