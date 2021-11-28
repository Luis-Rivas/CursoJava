<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ include file="FuenteDatos.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INICIANDO CURSO</title>
    </head>
    <body>
        <h1>Verificación de Usuarios</h1>
        <c:if test="${empty param.usuario or empty param.nivel}">
            <c:redirect url="NivelesDificultad.jsp">
                <c:param name="msg" value="usuario o clave vacios"/>
            </c:redirect>
        </c:if>
        <!--Agregar progreso de curso avanzado-->
        <sql:update dataSource = "${fuenteDatos}" var = "result">
            INSERT INTO inscripcion (id_inscripcion, id_usuario, id_curso, avance_curso) VALUES (NULL, ?, ?, '0.0');
            <sql:param value="${param.usuario}"/>
            <sql:param value="${param.nivel}"/>
        </sql:update>
       
        <script>
            setTimeout(function () {
                location.href = "NivelesDificultad.jsp";
            }, 1);
        </script>
    </body>
</html>
