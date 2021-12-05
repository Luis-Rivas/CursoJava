<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@include file="FuenteDatos.jsp" %>
<c:set var="pageId" value="CursoJava" />
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp" %>
        <title>Niveles-Curso Java</title>
    </head>
    <body>
        
        <sql:query dataSource = "${fuenteDatos}" var = "datos">
            Select nivel_curso,inscripcion.avance_curso from usuario inner join inscripcion on inscripcion.id_usuario=usuario.id_usuario inner join curso on curso.id_curso = inscripcion.id_curso WHERE usuario.id_usuario=?;
            <sql:param value="${sessionScope.id_user}"/>
        </sql:query>
        
        <div id="contenedor">
            <%@include file="Nav.jsp" %>
            <!--Descripcion inicial de la pagina-->
            <div class="card mb-3 caja-contenedor">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="./img/niñopensativo.jpg" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                          <h1 class="card-title">¿Por dónde debo empezar?</h1>
                          <h4 class="card-text">¡Bienvenido! te presentamos a continuación los diferentes niveles de complejidad que tenemos disponibles para tí.</h4>
                          <h4 class="card-text">Tenemos tres niveles de complejidad únicos diseñados especialmente para tí:</h4>
                          <h4 class="card-text">⚫ Nivel básico.</h4>
                          <h4 class="card-text">⚫ Nivel intermedio.</h4>
                          <h4 class="card-text">⚫ Nivel avanzado.</h4>
                          <h4 class="card-text">Dependiendo de tus habilidades y conocimientos previos elegirás un nivel u otro, dentro de cada nivel se encuentran los respectivos contenidos que esperan por tí.</h4>
                          <h4 class="card-text">¡Buena suerte!</h4>                         
                        </div>
                    </div>
                </div>
            </div><!-- Fin de la descripcion inicial-->
     
            <h1 style="text-align: center;">Seleccionar Nivel</h1>
            <div>
                <c:forEach var="row" items="${datos.rows}">
                    <c:if test="${row.nivel_curso eq 'Basico'}">
                        <c:set var="Basico" value="1"/>
                        <c:set var="Avance_Basico" value="${row.avance_curso}"/>
                    </c:if>
                    <c:if test="${row.nivel_curso eq 'Intermedio'}">
                        <c:set var="Intermedio" value="1"/>
                        <c:set var="Avance_Intermedio" value="${row.avance_curso}"/>
                    </c:if>
                    <c:if test="${row.nivel_curso eq 'Avanzado'}">
                        <c:set var="Avanzado" value="1"/>
                        <c:set var="Avance_Avanzado" value="${row.avance_curso}"/>
                    </c:if>
                </c:forEach>
                <div id="Basico">
                    <!--Dificultad Básico-->
                  <div class="card mb-3 caja-contenedor2">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="./img/dificultad_baja.png" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h2 class="card-title">Nivel Básico</h2>
                          <h5 class="card-text">Descripción: Nivel recomendado para principiantes o personas que no tienen conocimientos previos sobre el lenguaje de programación de Java.</h5>
                          <h5 class="card-text">Requisitos: Conocimientos básicos sobre computación.</h5>
                          <h5 class="card-text">Contenidos a desarrollar:</h5>
                          <h5 class="card-text">⚫ Hola mundo, comentarios en Java.</h5>
                          <h5 class="card-text">⚫ Tipos de datos, inicialización de variables.</h5>            
                          <h5 class="card-text">⚫ Conversión de tipos de datos.</h5>
                          <h5 class="card-text">⚫ Tipos de operadores.</h5>
                          <h5 class="card-text">⚫ Ingreso de caracteres desde teclado.</h5>
                          <h5 class="card-text">⚫ Manejo de "string".</h5>
                          <h5 class="card-text">⚫ Estructuras condicionales.</h5>
                          <h5 class="card-text">⚫ Bucles.</h5>
                          <div style="text-align: center;">                                         
                            <c:choose>
                        <c:when test="${Basico eq '1'}">
                            <div>Progreso: <c:out value="${Avance_Basico}"/>%</div>
                            <progress id="file" max="100" value="<c:out value="${Avance_Basico}"/>"> ${Avance_Basico}% </progress>
                            <div><a class="btn btn-primary" href="Basico.jsp">Continuar</a></div>
                        </c:when>
                        <c:when test="${empty sessionScope.user or sessionScope.user eq null}">
                            <div><a class="btn btn-primary" href="Basico.jsp" >Ingresar</a></div>
                        </c:when>
                        <c:otherwise>
                            <div><a  class="btn btn-primary" href="AgregarProgreso.jsp?usuario=${sessionScope.id_user}&nivel=1">Comenzar</a></div>
                        </c:otherwise>
                    </c:choose>
                          </div>                      
                        </div>                    
                      </div>
                    </div>
                  </div><!--Fin Dificultad Básico-->
                    
                </div>
                <div id="Intermedio">
                    <!--Nivel Intermedio-->
                  <div class="card mb-3 caja-contenedor2">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="./img/dificultad_media.png" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h2 class="card-title">Nivel Intermedio</h2>
                          <h5 class="card-text">Descripción: Nivel recomendado para personas con conocimientos previos sobre el lenguaje de programación de Java.</h5>
                          <h5 class="card-text">Requisitos: Comprender todos los contenidos del Nivel Básico.</h5>
                          <h5 class="card-text">Contenidos a desarrollar:</h5>
                          <h5 class="card-text">⚫ Matrices y funciones básicas (arreglos).</h5>
                          <h5 class="card-text">⚫ Introducción a la POO.</h5>            
                          <h5 class="card-text">⚫ Atributos.</h5>
                          <h5 class="card-text">⚫ Métodos.</h5>
                          <h5 class="card-text">⚫ Validaciones (try-cath).</h5>
                          <h5 class="card-text">⚫ Clases y objetos.</h5>
                          <h5 class="card-text">⚫ Herencia.</h5>
                          <h5 class="card-text">⚫ Interfaces y sus métodos.</h5>
                          <div style="text-align: center;">                                         
                            <c:choose>
                        <c:when test="${Intermedio eq '1'}">
                            <div>Progreso: <c:out value="${Avance_Intermedio}"/>%</div>
                            <progress id="file" max="100" value="<c:out value="${Avance_Intermedio}"/>"> ${Avance_Intermedio}% </progress>
                            <div><a class="btn btn-primary" href="Intermedio.jsp">Continuar</a></div>
                        </c:when>
                        <c:when test="${empty sessionScope.user or sessionScope.user eq null}">
                            <div><a class="btn btn-primary" href="Intermedio.jsp" >Ingresar</a></div>
                        </c:when>
                        <c:otherwise>
                            <div><a class="btn btn-primary" href="AgregarProgreso.jsp?usuario=${sessionScope.id_user}&nivel=2">Comenzar</a></div>
                        </c:otherwise>
                    </c:choose>
                          </div>                      
                        </div>                    
                      </div>
                    </div>
                  </div><!--Fin Nivel Intermedio-->
                    
                </div>
                <div id="Avanzado">
                    <!--Nivel Avanzado-->
                  <div class="card mb-3 caja-contenedor2">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="./img/dificultad_alta.png" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h2 class="card-title">Nivel Avanzado</h2>
                          <h5 class="card-text">Descripción: Nivel recomendado para personas con mucho conocimiento en el lenguaje de programación de Java.</h5>
                          <h5 class="card-text">Requisitos: Comprender todos los contenidos del Nivel Básico y del Nivel Intermedio.</h5>
                          <h5 class="card-text">Contenidos a desarrollar:</h5>
                          <h5 class="card-text">⚫ Creación de aplicaciones con Java Swing.</h5>
                          <h5 class="card-text">⚫ Uso de JButton, JPanel, JDialog.</h5>            
                          <h5 class="card-text">⚫ Uso de JComboBox, Jlist.</h5>
                          <h5 class="card-text">⚫ Uso de JOptionPane, JCheckBox, JLabel.</h5>
                          <h5 class="card-text">⚫ Generando ejecutables.</h5>                        
                          <div style="text-align: center;">                                         
                            <c:choose>
                                <c:when test="${Avanzado eq '1'}">
                                    <div>Progreso: <c:out value="${Avance_Avanzado}"/>%</div>
                                    <progress id="file" max="100" value="<c:out value="${Avance_Avanzado}"/>"> ${Avance_Avanzado}%</progress>
                                    <div><a class="btn btn-primary" href="Avanzado.jsp">Continuar</a></div>
                                </c:when>
                                <c:when test="${empty sessionScope.user or sessionScope.user eq null}">
                                    <div><a class="btn btn-primary" href="Avanzado.jsp" >Ingresar</a></div>
                                </c:when>
                                <c:otherwise>
                                    <div><a class="btn btn-primary" href="AgregarProgreso.jsp?usuario=${sessionScope.id_user}&nivel=3" >Comenzar</a></div>
                                </c:otherwise>
                            </c:choose>
                          </div>                      
                        </div>                    
                      </div>
                    </div>
                  </div><!--Fin Nivel Avanzado-->
                    
                </div>
            
            
            </div>
        </div>
            <%@include file="Footer.jsp" %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
