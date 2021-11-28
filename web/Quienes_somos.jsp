<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ include file="FuenteDatos.jsp" %>
<c:set var="pageId" value="QuienesSomos"/>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp"%>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Nav.jsp" %>
        <h1>Hello World!</h1>
        <%@include file="Footer.jsp" %>
    </body>
</html>
