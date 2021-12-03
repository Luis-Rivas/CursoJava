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
        <%@include file="Head.jsp" %>
    </head>
    <body>
        <div class="spinner-border text-primary" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
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
            }, 0);
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    </body>
</html>
