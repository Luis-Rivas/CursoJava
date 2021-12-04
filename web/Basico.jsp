<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ include file="FuenteDatos.jsp" %>
<c:set var="pageId" value="CursoJava"/>
<!DOCTYPE html>
<html>
<head>

<%@include file="Head.jsp" %>
<title>Nivel Básico</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
body{
	position: relative; /* required */
}
  
/* Custom style to stick list group on top */
.list-group{
    
    position: sticky;
    top: 10%;
}
</style>
</head>
<body data-bs-spy="scroll" data-bs-offset="15" data-bs-target="#myScrollspy">
    <%@include file="Nav.jsp" %>
    <sql:query dataSource="${fuenteDatos}" var="temas">
        select tema.nombre_tema,tema.id_tema,inscripcion.id_inscripcion from usuario
        inner join inscripcion on inscripcion.id_usuario=usuario.id_usuario
        inner join temas_finalizados ON temas_finalizados.id_inscripcion=inscripcion.id_inscripcion
        inner join tema on tema.id_tema=temas_finalizados.id_tema where usuario.id_usuario=? and tema.id_curso='1' order by id_tema; 
        <sql:param value="${sessionScope.id_user}"/>
    </sql:query>
    <sql:query dataSource = "${fuenteDatos}" var = "result">
            SELECT count(*) as cant from inscripcion where id_usuario=? and id_curso=1;
            <sql:param value="${sessionScope.id_user}"/>
        </sql:query>
                <c:forEach var="row" items="${temas.rows}">
                    <c:choose>
                    <c:when test="${row.id_tema eq '7'}">
                        <c:set var="tema1" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '8'}">
                        <c:set var="tema2" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '9'}">
                        <c:set var="tema3" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '10'}">
                        <c:set var="tema4" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '11'}">
                        <c:set var="tema5" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '12'}">
                        <c:set var="tema6" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '13'}">
                        <c:set var="tema7" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '14'}">
                        <c:set var="tema8" value="1"/>
                    </c:when>
                    </c:choose>
                </c:forEach>
<div class="container-lg my-2">
    <h1 style="text-aling:center;">Nivel Básico</h1>
    <div class="row">
        <div class="col-sm-3" id="myScrollspy">
            <div class="list-group">
                <a class="list-group-item list-group-item-action active" href="#section1">Hola Mundo, comentarios en java
                <c:if test="${not empty tema1}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section2">Tipos de datos e inicialización de variables
                <c:if test="${not empty tema2}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section3">Conversión de tipos de datos
                <c:if test="${not empty tema3}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section4">Tipos de operadores
                <c:if test="${not empty tema4}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section5">Leer caracteres desde el teclado
                <c:if test="${not empty tema5}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section6">Manejo de cadenas de caracteres
                <c:if test="${not empty tema6}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section7">Estructuras condicionales
                <c:if test="${not empty tema7}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section8">Bucles(Ciclos iterativos)
                <c:if test="${not empty tema8}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
            </div>
        </div>
        <div class="col-sm-9">
            <div id="section1">
                <h3>Hola Mundo, comentarios en java <c:if test="${not empty tema1}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a class="btn btn-primary" href="MarcarFinalizado.jsp?tema=7&nivel=1&Action=<c:if test="${not empty tema1}">Eliminar</c:if>">Guardar Progreso</a>   
                </c:if>
                <%@include file="temas/Basico/holamundo.jsp"%>
            </div><hr>
            <div id="section2">
                <div><h3>Tipos de datos e inicialización de variables<c:if test="${not empty tema2}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3></div>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a href="MarcarFinalizado.jsp?tema=8&nivel=1&Action=<c:if test="${not empty tema2}">Eliminar</c:if>">Guardar Progreso</a>
                </c:if>
                    <%@include file="temas/Basico/VariablesTipos.jsp"%>
            </div><hr>
            <div id="section3">
		<div><h3>Conversión de tipos de datos<c:if test="${not empty tema3}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3></div>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    
                <a href="MarcarFinalizado.jsp?tema=9&nivel=1&Action=<c:if test="${not empty tema3}">Eliminar</c:if>">Guardar Progreso</a>
                
                </c:if>
                <%@include file="temas/Basico/ConversionDeTIpos.jsp"%>
            </div><hr>
            <div id="section4">
                 <div><h3>Tipos de operadores<c:if test="${not empty tema4}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3></div>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                
                    <a href="MarcarFinalizado.jsp?tema=10&nivel=1&Action=<c:if test="${not empty tema4}">Eliminar</c:if>">Guardar Progreso</a>
                
                </c:if>
                 <%@include file="temas/Basico/TiposDeOperadores.jsp" %>
            </div><hr>
            <div id="section5">
                <div><h3>Leer caracteres desde el teclado<c:if test="${not empty tema5}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3></div>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                
                    <a href="MarcarFinalizado.jsp?tema=11&nivel=1&Action=<c:if test="${not empty tema5}">Eliminar</c:if>">Guardar Progreso</a>
                
                </c:if>
                    <%@include file="temas/Basico/IngresarCaracteres.jsp" %>
            </div><hr>
            <div id="section6">
                <div><h3>Manejo de cadenas de caracteres (String)<c:if test="${not empty tema6}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3></div>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                
                    <a href="MarcarFinalizado.jsp?tema=12&nivel=1&Action=<c:if test="${not empty tema6}">Eliminar</c:if>">Guardar Progreso</a>
                
                </c:if>
                    <%@include file="temas/Basico/ManejoDeString.jsp" %>
            </div><hr>
            <div id="section7">
                <div><h3>Estructuras condicionales <c:if test="${not empty tema7}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3></div>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                
                    <a href="MarcarFinalizado.jsp?tema=13&nivel=1&Action=<c:if test="${not empty tema7}">Eliminar</c:if>">Guardar Progreso</a>
               
                </c:if>
            </div><hr>
            <div id="section8">
                <div><h3>Bucles(Ciclos iterativos)<c:if test="${not empty tema8}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3></div>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
            
                    <a href="MarcarFinalizado.jsp?tema=14&nivel=1&Action=<c:if test="${not empty tema8}">Eliminar</c:if>">Guardar Progreso</a>
                
                </c:if>
            </div><hr>
            
        </div>
    </div>
</div>
            <%@include file="Footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
