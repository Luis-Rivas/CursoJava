<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CERRAR SESION</title>
    </head>
    <body>
        <h1>ACABA DE CERRAR SESION, esto se hace eliminando o vaciando las variables de sesión.</h1>
        <c:set var="user" value="" scope="session" />
        <c:set var="nombre" value="" scope="session" />
        <c:set var="apellido" value="" scope="session" />
        <c:set var="id_user" value="" scope="session" />
        <p style="color:red;">
                            <br>Dentro de unos segundos sera redirigido a la pagina de INICIO</p>
        <script>
                setTimeout(function () {
                    location.href = "index.jsp";
                }, 0);
            </script>
    </body>
</html>
