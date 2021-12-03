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
            select tema.nombre_tema,tema.id_tema from usuario
            inner join inscripcion on inscripcion.id_usuario=usuario.id_usuario
            inner join temas_finalizados ON temas_finalizados.id_inscripcion=inscripcion.id_inscripcion
            inner join tema on tema.id_tema=temas_finalizados.id_tema where usuario.id_usuario=? and tema.id_curso='2' order by id_tema; 
            <sql:param value="${sessionScope.id_user}"/>
        </sql:query>
        <sql:query dataSource = "${fuenteDatos}" var = "result">
            SELECT count(*) as cant from inscripcion where id_usuario=? and id_curso=2;
            <sql:param value="${sessionScope.id_user}"/>
        </sql:query>
                <c:forEach var="row" items="${temas.rows}">
                    <c:choose>
                    <c:when test="${row.id_tema eq '15'}">
                        <c:set var="tema1" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '16'}">
                        <c:set var="tema2" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '17'}">
                        <c:set var="tema3" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '18'}">
                        <c:set var="tema4" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '19'}">
                        <c:set var="tema5" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '20'}">
                        <c:set var="tema6" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '21'}">
                        <c:set var="tema7" value="1"/>
                    </c:when>
                    <c:when test="${row.id_tema eq '22'}">
                        <c:set var="tema8" value="1"/>
                    </c:when>
                    </c:choose>
                </c:forEach> 
<div class="container-lg my-2">
    <h1 style="text-aling:center;">Nivel Intermedio</h1>
    <div class="row">
        <div class="col-sm-3" id="myScrollspy">
            <div class="list-group">
                <a class="list-group-item list-group-item-action active" href="#section1">Matrices y funciones básicas
                <c:if test="${not empty tema1}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section2">Introducción a la POO
                <c:if test="${not empty tema2}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section3">Atributos
                <c:if test="${not empty tema3}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section4">Métodos
                <c:if test="${not empty tema4}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section5">Validaciones (try-catch)
                <c:if test="${not empty tema5}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section6">Clases y Objetos
                <c:if test="${not empty tema6}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section7">Herencia
                <c:if test="${not empty tema7}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
                <a class="list-group-item list-group-item-action" href="#section8">Interfaces
                <c:if test="${not empty tema8}">(Completado)<input type="checkbox" id="finalizado1" checked disabled/></c:if>
                </a>
            </div>
        </div>
        <div class="col-sm-9">
            <div id="section1">
                <h3>Matrices y funciones básicas(Arreglos)<c:if test="${not empty tema1}"><i class="bi bi-bookmark-check-fill" data-bs-toggle="tooltip" data-bs-placement="top" title="Finalizado"></i></c:if></h3>
                 
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a href="MarcarFinalizado.jsp?tema=15&nivel=2&Action=<c:if test="${not empty tema1}">Eliminar</c:if>">Guardar Progreso</a>
                </c:if>
                <%@include file="temas/Intermedio/try_catch.jsp"%>
            </div><hr>
            <div id="section2">
                <h3>Introducción a la POO <c:if test="${not empty tema2}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3>
                 
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a href="MarcarFinalizado.jsp?tema=16&nivel=2&Action=<c:if test="${not empty tema2}">Eliminar</c:if>">Guardar Progreso</a>
                </c:if>
                <%@include file="temas/Intermedio/POO.jsp"%>
            </div><hr>
            <div id="section3">
		<h3>Atributos <c:if test="${not empty tema3}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3>
                 
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a href="MarcarFinalizado.jsp?tema=17&nivel=2&Action=<c:if test="${not empty tema3}">Eliminar</c:if>">Guardar Progreso</a>
                </c:if>
                <%@include file="temas/Intermedio/atributos.jsp"%>
            </div><hr>
            <div id="section4">
                 <h3>Métodos <c:if test="${not empty tema4}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3>
                 
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a href="MarcarFinalizado.jsp?tema=18&nivel=2&Action=<c:if test="${not empty tema4}">Eliminar</c:if>">Guardar Progreso</a>
                </c:if>
                <%@include file="temas/Intermedio/metodos.jsp"%>
            </div><hr>
            <div id="section5">
                <h3>Validaciones (try-catch) <c:if test="${not empty tema5}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3>
                 
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a href="MarcarFinalizado.jsp?tema=19&nivel=2&Action=<c:if test="${not empty tema5}">Eliminar</c:if>">Guardar Progreso</a>
                </c:if>
                <%@include file="temas/Intermedio/try_catch.jsp"%>
            </div><hr>
            <div id="section6">
                <h3>Clases y Objetos <c:if test="${not empty tema6}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3>
                 
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a href="MarcarFinalizado.jsp?tema=20&nivel=2&Action=<c:if test="${not empty tema6}">Eliminar</c:if>">Guardar Progreso</a>
                </c:if>
                <%@include file="temas/Intermedio/clases_objetos.jsp"%>
            </div><hr>
            <div id="section7">
                <h3>Herencia <c:if test="${not empty tema7}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a href="MarcarFinalizado.jsp?tema=21&nivel=2&Action=<c:if test="${not empty tema7}">Eliminar</c:if>">Guardar Progreso</a>
                </c:if>
                <%@include file="temas/Intermedio/herencia.jsp"%>
            </div><hr>
            <div id="section8">
                <h3>Interfaces <c:if test="${not empty tema1}"><i class="bi bi-bookmark-check-fill"></i></c:if></h3>
                <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                    <a href="MarcarFinalizado.jsp?tema=22&nivel=2&Action=<c:if test="${not empty tema8}">Eliminar</c:if>">Guardar Progreso</a>
                </c:if>
                <%@include file="temas/Intermedio/interfaces.jsp"%>    
            </div><hr>
            
        </div>
    </div>
</div>
            <%@include file="Footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
