<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ include file="FuenteDatos.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp" %>
        <title>INICIANDO CURSO</title>
    </head>
    <body>
        <div class="spinner-border text-primary" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
        <c:if test="${empty param.tema or empty param.nivel}">
            <c:redirect url="Basico.jsp">
                <c:param name="msg" value="usuario o clave vacios"/>
            </c:redirect>
        </c:if>
        
        <!--Agregar progreso de curso avanzado-->
        <c:choose>
            <c:when test="${not empty param.nivel}">
                <sql:query dataSource="${fuenteDatos}" var="datos">
                    SELECT inscripcion.id_inscripcion,curso.nivel_curso,curso.id_curso from usuario
                    inner join inscripcion on inscripcion.id_usuario=usuario.id_usuario
                    inner join curso on curso.id_curso=inscripcion.id_curso
                    WHERE usuario.id_usuario=? and inscripcion.id_curso=?; 
                    <sql:param value="${sessionScope.id_user}"/>
                    <sql:param value="${param.nivel}"/>
                </sql:query>
            </c:when>
        </c:choose>
        <!--seleccionar acción(eliminar o agregar)-->            
        <c:choose>
            <c:when test="${param.Action eq 'Eliminar'}">
                <sql:update dataSource="${fuenteDatos}" var="result">
                DELETE FROM temas_finalizados where temas_finalizados.id_tema=? and temas_finalizados.id_inscripcion=?;
                <sql:param value="${param.tema}"/>
                <sql:param value="${datos.rows[0].id_inscripcion}"/>
                </sql:update>
            </c:when>
            <c:otherwise>
                <sql:update dataSource = "${fuenteDatos}" var = "result">
                    INSERT INTO temas_finalizados (id_finalizado, id_tema, id_inscripcion) VALUES (NULL, ?, ?);
                    <sql:param value="${param.tema}"/>
                    <sql:param value="${datos.rows[0].id_inscripcion}"/>
                </sql:update>
            </c:otherwise>
        </c:choose><!--fin de proceso de seleccion-->
        <sql:query dataSource="${fuenteDatos}" var="count">
            select count(*) as cant from temas_finalizados where temas_finalizados.id_inscripcion=? 
            <sql:param value="${datos.rows[0].id_inscripcion}"/>
        </sql:query>
        <c:choose>
            <c:when test="${datos.rows[0].id_curso eq '1'}">
                <c:if test="${count.rows[0].cant < 9}">    
                    <sql:update dataSource = "${fuenteDatos}" var = "result">
                        update inscripcion 
                        set avance_curso = (?/8*100) where id_inscripcion=?;
                        <sql:param value="${count.rows[0].cant}"/>
                        <sql:param value="${datos.rows[0].id_inscripcion}"/>
                    </sql:update>    
                </c:if>
            </c:when>
            <c:when test="${datos.rows[0].id_curso eq '2'}">
                <c:if test="${count.rows[0].cant < 9}">    
                    <sql:update dataSource = "${fuenteDatos}" var = "result">
                        update inscripcion 
                        set avance_curso = (?/8*100) where id_inscripcion=?;
                        <sql:param value="${count.rows[0].cant}"/>
                        <sql:param value="${datos.rows[0].id_inscripcion}"/>
                    </sql:update>    
                </c:if>
            </c:when>
            <c:when test="${datos.rows[0].id_curso eq '3'}">
                <c:if test="${count.rows[0].cant < 6}">    
                    <sql:update dataSource = "${fuenteDatos}" var = "result">
                        update inscripcion 
                        set avance_curso = (?/5*100) where id_inscripcion=?;
                        <sql:param value="${count.rows[0].cant}"/>
                        <sql:param value="${datos.rows[0].id_inscripcion}"/>
                    </sql:update>    
                </c:if>
            </c:when>
        </c:choose>
        <script>
            setTimeout(function () {
                    <c:choose>
                        <c:when test="${param.nivel eq '1'}">
                            location.href="Basico.jsp";
                        </c:when>
                        <c:when test="${param.nivel eq '2'}">
                            location.href="Intermedio.jsp";
                        </c:when>
                        <c:when test="${param.nivel eq '3'}">
                            location.href="Avanzado.jsp";
                        </c:when>
                        <c:otherwise>
                            location.href = "NivelesDificultad.jsp";
                        </c:otherwise>
                    </c:choose>
                
            }, 0);
        </script>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    </body>
</html>
