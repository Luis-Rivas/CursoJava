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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="Nav.jsp" %>
        <!--Contenido de la página-->
            <!--<div class="position-relative">-->
                <div class="card mb-3 caja-contenedor">
                    <div class="row g-0">
                      <div class="col-md-4">
                        <img src="./img/code.jpg" class="img-fluid rounded-start" alt="...">
                      </div>
                      <div class="col-md-8">
                        <div class="card-body">
                          <h5 class="card-title">Descripción del sitio</h5>
                          <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
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
                                <p>Some representative placeholder content for the first slide.</p>
                              </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./img/ejemplo2.jpg" class="d-block w-100" alt="..." style="height: 40rem;" >
                            <div class="carousel-caption d-none d-md-block">
                                <h5>JAVA<>CODE</h5>
                                <a class="btn btn-primary rounded-pill" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    ¿Como empezar?
                                </a>
                                <p>Some representative placeholder content for the first slide.</p>
                              </div>
                        </div>
                        <div class="carousel-item">
                            <img src="./img/ejemplo3.jpg" class="d-block w-100" alt="..." style="height: 40rem;">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>JAVA<>CODE</h5>
                                <a class="btn btn-primary rounded-pill" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    ¿Como empezar?
                                   </a>
                                <p>Some representative placeholder content for the first slide.</p>
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
                      Some placeholder content for the collapse component. This panel is hidden by default but revealed when the user activates the relevant trigger.
                      <a href="#nav">as</a>
                    </div>
                  </div>
              </div>
            <%@include file="Footer.jsp" %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    
    </body>
</html>
