<!DOCTYPE html>
<html lang="es">
<%@page import= "java.util.*,  Modelos.*"  %>
<% HttpSession sesion = request.getSession(); 
           String admin = (String) sesion.getAttribute("admin");
%>
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
                <a href="<%= request.getContextPath() %>/CatalogoServlet?accion=admin">Catalogo</a>
                <a href="<%= request.getContextPath() %>/Carrito.jsp">Carrito</a>
                <a href="<%= request.getContextPath() %>/Pedidos.jsp">Pedidos</a>
                <a href="<%= request.getContextPath() %>/AdministradorServlet?accion=panel">Administrador</a>
                <a href="<%= request.getContextPath() %>/logIn.jsp">Iniciar sesion</a>

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
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                <% 
                        List<Resenha> lista = (List<Resenha>) request.getAttribute("resenhas");
                        List<Producto> listaProductos = (List<Producto>) request.getAttribute("productos");
                        String URLimagenProducto = "";
                %>
                    
                     <% for(Resenha r: lista){
                            for(Producto p: listaProductos){
                                if(r.getProductoId() == p.getId()){
                                    URLimagenProducto = p.getImagen();
                                }
                         
                     %>
                        <tr>
                            <td><img src="<%= URLimagenProducto %>"></td>
                            <td>
                                <%= r.getAutor() %>
                            </td>
                            <td> <%= r.getCalificacion() %> Estrellas</td>
                            <td> <%= r.getComentario()%></td>
                            <td>
                                <a href= "<%= request.getContextPath() %>/ResenhasServlet?accion=eliminar&id=<%= r.getId()%>" >
                                    <button type="submit">
                                   Eliminar Resenhia
                                </button>
                                </a>
                            </td>
                        </tr>  
                        <% } %> 
                       <% } %>  
                    </tbody>
                </table>
            </main>
            <footer class = "footer">
                Aplicaciones Web - Unidad 2
            </footer>
        </div>
      
    </body>
</html>