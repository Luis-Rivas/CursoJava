<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@include file="FuenteDatos.jsp" %>
<c:set var="pageId" value="Descripcion" />

<!DOCTYPE html>
<html>
    <head>
     <%@include file="Head.jsp"%>
        <title>Descripción-Curso Java</title>
    </head>
    <body>
        <%@include file="Nav.jsp" %>
        <!--Contenido de la página-->
            <!--<div class="position-relative">-->
                <div class="card mb-3 caja-contenedor">
                    <div class="row g-0">
                      <div class="col-md-4">
                          <img src="./img/code.jpg" class="img-fluid rounded-start" alt="curso java" style="width:200px;">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Descripción del sitio</h5>
                          <p class="card-text">En el CURSO JAVA puedes aprender a programar desde lo más básico, hasta un nivel avanzado.
                              Puedes registrarte en el sitio para llevar un mejor control de tu progreso en los temas que posee el curso,
                              
                          </p>
                          <p class="card-text"><small class="text-muted">JAVA<>CODE</small></p>
                        </div>
                      </div>
                    </div>
                  </div>
            <!--</div>-->
            <!--Carrusel-->
            <div class="card caja-contenedor">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="./img/ejemplo1.jpg" class="d-block w-100" alt="..." style="height: 40rem;">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>JAVA<>CODE</h5>
                                <a class="btn btn-primary rounded-pill" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    ¿Como empezar?
                                   </a>
                                <p>Curso Java</p>
                              </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./img/ejemplo2.jpg" class="d-block w-100" alt="..." style="height: 40rem;" >
                            <div class="carousel-caption d-none d-md-block">
                                <h5>JAVA<>CODE</h5>
                                <a class="btn btn-primary rounded-pill" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    ¿Como empezar?
                                </a>
                                <p>Curso Java</p>
                              </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./img/ejemplo3.jpg" class="d-block w-100" alt="..." style="height: 40rem;">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>JAVA<>CODE</h5>
                                <a class="btn btn-primary rounded-pill" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    ¿Como empezar?
                                   </a>
                                <p>Curso Java</p>
                              </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
            <!--seccion.¿como empezar?-->
              <div class="caja-contenedor">
                  <div class="collapse" id="collapseExample">
                    <div class="card card-body">
                        <h2>Guía Rápida del sitio</h2>
                        <div class="row row-cols-1 row-cols-md-2 g-4">
                            <div class="col">
                                <div class="card border-primary" style="max-width: auto;height:23rem;">
                                    <div class="card-header"><img src="img/Descripcion_1.jpg" style="width: 90%;"></div>
                                    <div class="card-body text-primary">
                                        <h5 class="card-title">Acceder al contenido</h5>
                                        <p class="card-text">En la pestaña <a href="NivelesDificultad.jsp">curso java</a> encontrarás los tres niveles de dificultad del curso,  </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card border-danger" style="max-width: auto;height:23rem;">
                                    <div class="card-header"><img src="img/Descripcion_2.jpg" style="width: 90%;"></div>
                                    <div class="card-body text-danger">
                                        <h5 class="card-title">Navegar por los temas</h5>
                                        <p class="card-text">Dentro de cada nivel de dificultad puedes acceder fácilmente a los distintos temas a través del panel lateral de navegación.</p>
                                    </div>
                                </div>
                            </div>    
                            <div class="col">
                                <div class="card border-success" style="max-width: auto;height:23rem;">
                                    <div class="card-header"><img src="img/Descripcion_3.jpg" style="width: 90%;"></div>
                                    <div class="card-body text-success">
                                        <h5 class="card-title">Gestionar progreso</h5>
                                        <p class="card-text">Registrate en el curso y controla tu progreso dentro de cada nivel de dificultad, marca como finalizados los temas que hayas terminado con el botón guardar progreso.</p>
                                    </div>
                                </div>
                            </div>    
                            <div class="col">
                                <div class="card border-secondary" style="max-width: auto;height:23rem;">
                                    <div class="card-header"><img src="img/Descripcion_4.jpg" style="width: 90%;"></div>
                                    <div class="card-body text-secondary">
                                        <h5 class="card-title">Conoce la historia de java</h5>
                                        <p class="card-text">Si eres un poco curioso, te resultará interesante conocer un poco sobre la historia de Java.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                  </div>
              </div>
            <%@include file="Footer.jsp" %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    </body>
</html>
