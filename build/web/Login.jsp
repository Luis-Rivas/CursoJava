<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp" %>
        <title>Iniciar sesión</title>
    </head>
    <body>
        <div class="sticky-top" style="border-bottom: solid #CECECE 1px; background-color:white;">
                <ul class="nav nav-pills nav-fill">
                    <li class="nav-item"><a class="nav-link active" href="index.jsp">VOLVER AL INICIO</a></li>
                    <li class="nav-item"><a class="nav-link" href="NivelesDificultad.jsp"></a></li>
                    <li class="nav-item"><a class="nav-link" href="./quienes_somos.html"></a></li>
                    <li class="nav-item"><a class="nav-link" href="./descripcion.html"></a></li>
                    <li class="nav-item"><a class="nav-link" href="./Registro.jsp">Registrar</a></li>
                </ul>
            </div>
        <div id="container">
            
            <div id="container" style="margin-top: 5%;width: 25%;margin-left: 37.5%;">
            <h1 style="text-align: center;">INICIAR SESIÓN</h1>
            <c:if test="${not empty param.msg}">
                <p style="color:red;">Error: ${param.msg}</p>
            </c:if>
                <form class="form group" name="login" action="Verificar.jsp" method="post">
                <!-- Username -->
                <label for="usuario">Usuario:</label>
                <input class="form-control" name="usuario" id="usuario" type="input">
                <!-- Password -->
                <label for="clave">Clave:</label>
     
                    <input class="form-control" name="clave" id="clave" type="password">
                <div id="lower">
                    <br><input type="submit"  class="btn btn-primary" value="Ingresar">
                </div>
                    <br><a href="Registro.jsp">Registrarme</a>
            </form>       
        </div>
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
