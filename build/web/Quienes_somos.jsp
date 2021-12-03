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
        <title>¿Quienes Somos?</title>
        <style>
            .table{text-align:center}
        </style>
    </head>
    <body>
        <%@include file="Nav.jsp" %>
            <div class="card mb-3 caja-contenedor3">
                <div class="row g-0">
                    <div class="col-md-12">
                        <div class="card-body">
                            <h4 class="card-title"><p>El equipo está conformado por 7 estudiantes de la Universidad De El Salvador que se encargará del desarrollo del sitio web. Los cuales poseen los conocimientos informáticos necesarios para participar en el diseño y programación de la página web aunque no sea la especialidad de su puesto.. A cointinuacion se muestran los nombre de los estudiantes del equipo:</p></h4>
                                <table class="table">
                                    <thead>
                                      <tr>
                                        <td><h3 class="card-title"><p>Apellido</p></h3></td>
                                        <td><h3 class="card-title"><p>Nombre</p></h3></td>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td><h4 class="card-title"><p>Castro Cruz</p></h4></td>
                                        <td><h4 class="card-title"><p>Diego David</p></h4></td>
                                      </tr>   
                                      <tr>
                                        <td><h4 class="card-title"><p>Clímaco Jiménez</p></h4></td>
                                        <td><h4 class="card-title"><p>Roberto Isaac</p></h4></td>
                                      </tr>
                                      <tr>
                                        <td><h4 class="card-title"><p>Montes Tobar</p></h4></td>
                                        <td><h4 class="card-title"><p>José Porfirio</p></h4></td>
                                      </tr>
                                      <tr>
                                        <td><h4 class="card-title"><p>Rivas Moz</p></h4></td>
                                        <td><h4 class="card-title"><p>Luis Francisco</p></h4></td>
                                      </tr>
                                      <tr>
                                        <td><h4 class="card-title"><p>Salazar Abrego</p></h4></td>
                                        <td><h4 class="card-title"><p>Kevin Arnoldo</p></h4></td>
                                      </tr>
                                      <tr>
                                        <td><h4 class="card-title"><p>Villalta Muñoz</p></h4></td>
                                        <td><h4 class="card-title"><p>Kevin Josue</p></h4></td>
                                      </tr>
                                       <tr>
                                        <td><h4 class="card-title"><p>Zavaleta Perez</p></h4></td>
                                        <td><h4 class="card-title"><p>Pedro Alexander</p></h4></td>
                                      </tr>
                                    </tbody>
                                </table>               
                        </div>
                    </div>
                </div>           
            </div>
            
            <div class="card mb-3 caja-contenedor3">
                <div class="row g-0">
                    <div class="col-md-12">
                        <div class="card-body"> 
                            <h1 class="card-title text-center"><p>Misión de la Universidad</p></h1>
                            <h4 class="card-text"><p>Institución en nuestro país eminentemente académica, rectora de la educación superior, formadora de profesionales con alores éticos firmes, garante del desarrollo, de la ciencia, el arte, la cultura y el deporte. Crítica de la realidad, con capacidad de proponer soluciones a los problemas nacionales a través de la investigación filosófica, científica artística y tecnológica; de carácter universal.</p></h4>                
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="card mb-3 caja-contenedor3">
                <div class="row g-0">
                    <div class="col-md-12">
                        <div class="card-body"> 
                            <h1 class="card-title text-center"><p>Visión de la Universidad</p></h1>
                            <h4 class="card-text"><p>Ser una universidad transformadora de la educación superior y desempeñar un papel protagónico relevante, en la transformación de la conciencia crítica y prepositiva de la sociedad salvadoreña, con liderazgo en la innovación educativa y excelencia académica, a través de la integración de las funciones básicas de la universidad: la docencia la investigación y la proyección social.</p></h4>                
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="card mb-3 caja-contenedor3">
                <div class="row g-0">
                    <div class="col-md-12">
                        <div class="card-body"> 
                            <h1 class="card-title text-center"><p>Historia de la Universidad</p></h1>
                            <h4 class="card-text"><p>La Universidad de El Salvador fue fundada el 16 de febrero de 1841 por medio de un decreto emitido por la Asamblea Constituyente, que recién se había instalado, y suscrito por el diputado presidencial Juan José Guzmán y los diputados secretarios Leocadio Romero y Manuel Barberena. La orden de ejecución fue promulgada por Juan Nepomuceno Fernández Lindo y Zelaya, quien gobernó el país en su carácter de jefe provisorio de Estado del 7 de enero de 1841 al 1 de febrero de 1842.</p></h4>
                            <h4 class="card-text"><p>La ejecución del decreto de fundación corrió a cargo del jefe de sección encargado del Ministerio de Relaciones y Gobernación, quien dispuso su impresión, publicación y circulación. La UES inició sus actividades hasta l843 impartiendo matemáticas puras, lógica, moral, metafísica y física general. En 1880, se subdividió en facultades, algunas de las cuales desaparecieron tiempo después, mientras que otras nuevas fueron creadas. El artículo 61 de la Constitución de la República de El Salvador de 1983 establece que la universidad de El Salvador “goza de autonomía en el aspecto docente, administrativo y económico”.</p></h4>
                            <h4 class="card-text"><p>La Constitución también establece la obligación del Estado de “asignar anualmente una partida de su presupuesto para asegurar y acrecentar el patrimonio” de ésta.  El funcionamiento de los órganos de gobierno de la UES está previsto en la Ley Orgánica de la Universidad de El Salvador, aprobada mediante Decreto Legislativo No. 597, del 29 de abril de 1999, publicado en el Diario Oficial No. 96, Tomo No. 343, del 25 de mayo de 1999.  La Rectoría es la máxima autoridad ejecutiva de esta universidad pública y tiene a su cargo ejecutar y hacer cumplir las resoluciones de la Asamblea General Universitaria y del Consejo Superior Universitario.</p></h4>
                        </div>
                    </div>
                </div>
            </div>

        <%@include file="Footer.jsp" %>
    </body>
</html>
