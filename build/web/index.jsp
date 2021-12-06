<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@include file="FuenteDatos.jsp" %>
<c:set var="pageId" value="Index" />
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp" %>
        <title>Curso Java</title>
    </head>
    <body>
        <!--Diseño de la página-->
        <div>
            <%@include file="Nav.jsp" %>
                        <div class="card mb-3 caja-contenedor3">
                <div class="row g-0">
                    <div class="col-md-12">
                        <div class="card-body"> 
                            <h1 class="card-title text-center"><p>¡BIENVENIDO!</p></h1>
                            <h4 class="card-text"><p>¿Has estado buscando un curos de java? Entraste en el lugar indicado, aqui podras encontrar el curso mas completo de Java en toda la web. Los mejores ejemplos, los mejores videos y los temas mas importantes los tenemos aqui, para que llegues a convertirte en un experto en el lenguaje de programacion Java. </p></h4>
                            <p align="center"><img src="./img/index.png" class="img-fluid rounded-start" alt="..."></p>
                            <c:choose>
                                <c:when test="${empty sessionScope.user or sessionScope.user eq ''}">
                                    <h4 class="card-text"><p>Inicia Sesion para continuar donde lo dejaste o si eres nuevo tienes la opcion de registrarte, es fácil, rápido, gratis y podras llevar un control de tu progreso en el curso. </p></h4>
                                    <div align="center"><a class="btn btn-primary" href="Login.jsp" >Iniciar Sesion</a>
                                        <a class="btn btn-primary" href="Registro.jsp" >Registrate</a></div>
                                </c:when>
                                <c:otherwise>
                                    <div align="center"><a class="btn btn-primary" href="NivelesDificultad.jsp" >Continuar</a></div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
           
            <%@include file="Footer.jsp" %>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
