<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <div id="container" class="card" style="width:100%;">
    
        <div style="width:100%;">
            <h1 style="text-align: center;">CURSO JAVA</h1>
            <c:if test="${empty sessionScope.user}"><a href="Login.jsp" style="width: 5%; float:right;">Login</a></c:if>
            <c:if test="${not empty sessionScope.user}">
                <div class="dropdown" style="float:right; margin-right: 2%;">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                      ${sessionScope.nombre}
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                      <li><a class="dropdown-item" href="NivelesDificultad.jsp">Niveles</a></li>
                      <li><a class="dropdown-item" href="LogOut.jsp">Cerrar sesión</a></li>
                    </ul>
                </div>
            </c:if>
        </div>
                <div align="center"><img src="img/java.png" alt="java" style="width: 100px;"></div>
                <br>
            </div>
            <!--navbar-->
            <div class="sticky-top" style="border-bottom: solid #CECECE 1px; background-color:white;">
                <ul class="nav nav-pills nav-fill">
                    <li class="nav-item"><a class="nav-link <c:if test="${pageId eq 'Index'}">active</c:if>" href="index.jsp">INICIO</a></li>
                    <li class="nav-item"><a class="nav-link <c:if test="${pageId eq 'CursoJava'}">active</c:if>" href="NivelesDificultad.jsp">CURSO JAVA</a></li>
                    <li class="nav-item"><a class="nav-link <c:if test="${pageId eq 'QuienesSomos'}">active</c:if>" href="./Quienes_somos.jsp">¿QUIENES SOMOS?</a></li>
                    <li class="nav-item"><a class="nav-link <c:if test="${pageId eq 'Descripcion'}">active</c:if>" href="./Descripcion.jsp">DESCRIPCION DEL CURSO</a></li>
                    <li class="nav-item"><a class="nav-link <c:if test="${pageId eq 'Historia'}">active</c:if>" href="./Historia.jsp">HISTORIA JAVA</a></li>
                    
                </ul>
            </div>
    
    
    
    