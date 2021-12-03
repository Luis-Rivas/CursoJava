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
        <title></title>
    </head>
    <body>
        <div class="spinner-border text-primary" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
        <c:if test="${empty param.usuario or empty param.clave}">
            <c:redirect url="Login.jsp">
                <c:param name="msg" value="usuario o clave vacios"/>
            </c:redirect>
        </c:if>

        <sql:query dataSource = "${fuenteDatos}" var = "result">
            SELECT count(*) as cant from usuario where correo_usuario=? and password=?;
            <sql:param value="${param.usuario}"/>
            <sql:param value="${param.clave}"/>
        </sql:query>
        <c:if test="${result.rows[0].cant < 1}"> 
            <c:redirect url="Login.jsp">
                <c:param name="msg" value="usuario o clave incorrectos"/>
            </c:redirect>
        </c:if> 
        <sql:query dataSource = "${fuenteDatos}" var = "datos">
            SELECT * from usuario where correo_usuario=? and password=?;
            <sql:param value="${param.usuario}"/>
            <sql:param value="${param.clave}"/>
        </sql:query>
        
        <c:set var="user" value="${datos.rows[0].correo_usuario}" scope="session" />
        <c:set var="nombre" value="${datos.rows[0].nombre_usuario}" scope="session" />
        <c:set var="apellido" value="${datos.rows[0].apellido_usuario}" scope="session" />
        <c:set var="id_user" value="${datos.rows[0].id_usuario}" scope="session" />
        
                <script>
            setTimeout(function () {
                location.href = "index.jsp";
            },0);
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
