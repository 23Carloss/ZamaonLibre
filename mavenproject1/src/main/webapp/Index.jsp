<%-- 
    Document   : Index
    Created on : 27 mar 2026, 7:51:56 p.m.
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
                <a href="Administrador.jsp">Administrador</a> <!--Mandarlo al servlet de admin-->
                <a href="logIn.jsp">Iniciar sesion</a>

            </aside>
            <main class = "contenido">
                <h1>Zonama Libre</p>
                <h3>Luis Carlos Manjarrez Gonzalez</h3>
                <h3>252724</h3>

            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>
