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
        <title>Curso Java</title>
    </head>
    <body>
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
        <div>
            <h1>NIVEL INTERMEDIO</h1>
            <div class="accordion" id="accordionExample">
                
                
                <div id="tema1" class="accordion-item">
                  <h2 class="accordion-header" id="headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                        <Strong>Matrices y funciones básicas(Arreglos)</Strong>
                        <c:if test="${not empty tema1}">
                            <form>
                                <label for="finalizado1" >Completado</label>
                                <input type="checkbox" id="finalizado1" checked/>
                            </form>
                        </c:if>
                    </button>
                  </h2>
                  <div id="collapseOne" class="accordion-collapse <c:if test="${not empty tema1}">collapse</c:if>" aria-labelledby="panelsStayOpen-headingOne" >
                    <div class="accordion-body">
                        <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                            <a href="MarcarFinalizado.jsp?tema=15&nivel=2&Action=<c:if test="${not empty tema1}">Eliminar</c:if>">Guardar Progreso</a>
                        </c:if>
                      <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                  </div>
                </div>
                    
                    
                <div id="tema2" class="accordion-item">
                  <h2 class="accordion-header" id="headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                        <strong>Introduccion a la POO</strong>
                    <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                        <form action="MarcarFinalizado.jsp">
                            <label for="finalizado1" >Completado</label>
                            <input type="checkbox" id="finalizado1" <c:if test="${not empty tema2}">checked</c:if>/>
                        </form>
                    </c:if>
                    </button>
                  </h2>
                  <div id="collapseTwo" class="accordion-collapse <c:if test="${not empty tema2}">collapse</c:if>" aria-labelledby="panelsStayOpen-headingTwo">
                    <div class="accordion-body">
                    <c:if test="${not empty sessionScope.user}">
                    <a href="MarcarFinalizado.jsp?tema=16&nivel=2&Action=<c:if test="${not empty tema2}">Eliminar</c:if>">Guardar Progreso</a></c:if>
                      <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                  </div>
                </div>
                    
                    
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingThree">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                        <strong>Atributos</strong>
                      <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                        <form>
                            <label for="finalizado1" >Completado</label>
                            <input type="checkbox" id="finalizado1" <c:if test="${not empty tema3}">checked</c:if>/>
                        </form>
                    </c:if>
                    </button>
                  </h2>
                  <div id="collapseThree" class="accordion-collapse <c:if test="${not empty tema3}">collapse</c:if>" aria-labelledby="panelsStayOpen-headingThree">
                    <div class="accordion-body">
                <a href="MarcarFinalizado.jsp?tema=17&nivel=2&Action=<c:if test="${not empty tema3}">Eliminar</c:if>">Guardar Progreso</a>
                      <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingFour">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                        <strong>Métodos</strong>
                        <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                            <form>
                                <label for="finalizado1" >Completado</label>
                                <input type="checkbox" id="finalizado1" <c:if test="${not empty tema4}">checked</c:if>/>
                            </form>
                        </c:if>
                    </button>
                  </h2>
                  <div id="collapseFour" class="accordion-collapse <c:if test="${not empty tema4}">collapse</c:if>" aria-labelledby="panelsStayOpen-headingFour">
                    <div class="accordion-body">
                        <a href="MarcarFinalizado.jsp?tema=18&nivel=2&Action=<c:if test="${not empty tema4}">Eliminar</c:if>">Guardar Progreso</a>
                        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                  </div>
                </div>
                <div id="tema5" class="accordion-item">
                  <h2 class="accordion-header" id="headingFive">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                        <strong>Validaciones (try-catch)</strong>
                        <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                            <form>
                                <label for="finalizado1" >Completado</label>
                                <input type="checkbox" id="finalizado1" <c:if test="${not empty tema5}">checked</c:if>/>
                            </form>
                        </c:if>
                    </button>
                  </h2>
                  <div id="collapseFive" class="accordion-collapse <c:if test="${not empty tema5}">collapse</c:if>" aria-labelledby="panelsStayOpen-headingFive">
                    <div class="accordion-body">
                        <a href="MarcarFinalizado.jsp?tema=19&nivel=2&Action=<c:if test="${not empty tema5}">Eliminar</c:if>">Guardar Progreso</a>
                        <%@include file="temas/Intermedio/try_catch.jsp"%> 
                    </div>
                  </div>
                </div>
                <div id="tema6" class="accordion-item">
                  <h2 class="accordion-header" id="headingSix">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                        <strong>Clases y Objetos</strong>
                        <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                            <form>
                                <label for="finalizado1" >Completado</label>
                                <input type="checkbox" id="finalizado1" <c:if test="${not empty tema6}">checked</c:if>/>
                            </form>
                        </c:if>
                    </button>
                  </h2>
                  <div id="collapseSix" class="accordion-collapse <c:if test="${not empty tema6}">collapse</c:if>" aria-labelledby="panelsStayOpen-headingSix">
                    <div class="accordion-body">
                        <a href="MarcarFinalizado.jsp?tema=20&nivel=2&Action=<c:if test="${not empty tema6}">Eliminar</c:if>">Guardar Progreso</a>
                        <%@include file="temas/Intermedio/clases_objetos.jsp"%>    
                    </div>
                  </div>
                </div>
                <div id="tema7" class="accordion-item">
                  <h2 class="accordion-header" id="headingSeven">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                        <strong>Herencia</strong>
                        <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                            <form>
                                <label for="finalizado1" >Completado</label>
                                <input type="checkbox" id="finalizado1" <c:if test="${not empty tema7}">checked</c:if>/>
                            </form>
                        </c:if>
                    </button>
                  </h2>
                  <div id="collapseSeven" class="accordion-collapse <c:if test="${not empty tema7}">collapse</c:if>" aria-labelledby="panelsStayOpen-headingSeven">
                    <div class="accordion-body">
                        <a href="MarcarFinalizado.jsp?tema=21&nivel=2&Action=<c:if test="${not empty tema7}">Eliminar</c:if>">Guardar Progreso</a>
                        <%@include file="temas/Intermedio/herencia.jsp"%> 
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <h2 class="accordion-header" id="headingOcho">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOcho" aria-expanded="false" aria-controls="collapseOcho">
                        <strong>Interfaces</strong>
                        <c:if test="${(not empty sessionScope.user) && (result.rows[0].cant >0)}">
                            <form>
                                <label for="finalizado1" >Completado</label>
                                <input type="checkbox" id="finalizado1" <c:if test="${not empty tema8}">checked</c:if>/>
                            </form>
                        </c:if>
                    </button>
                  </h2>
                  <div id="collapseOcho" class="accordion-collapse <c:if test="${not empty tema8}">collapse</c:if>" aria-labelledby="panelsStayOpen-headingOcho">
                    <div class="accordion-body">
                        <a href="MarcarFinalizado.jsp?tema=22&nivel=2&Action=<c:if test="${not empty tema8}">Eliminar</c:if>">Guardar Progreso</a>
                        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
                    </div>
                  </div>
                </div>
            </div>
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
