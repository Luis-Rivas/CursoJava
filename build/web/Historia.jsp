<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@include file="FuenteDatos.jsp" %>
<c:set var="pageId" value="Historia" />

<!DOCTYPE html>
<html>
    <head>
     <%@include file="Head.jsp"%>
          <meta charset="UTF-8">
  <title>CodePen - Responsive horizontal timeline using Slick 1.9.0 / Bootstrap 4.5.2</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.css'><link rel="stylesheet" href="./style.css">
    </head>
    <body>
        <%@include file="Nav.jsp" %>
        <!--Contenido de la página-->
            <!--<div class="position-relative">-->
                <section class="timeline-carousel">
   <div class="container">
      <div class="row">
         <div class="col-8 offset-2 text-center mb-5">
            <h1>Historia del lenguaje de programacion Java</h1>
            <p class="lead text-muted">Java es un lenguaje de programación y una plataforma informática que fue comercializada por primera vez en 1995 por Sun Microsystems.</p> 
            <p>LINEA DE TIEMPO EVOLUCIÓN DE JAVA</p>
         </div>
      </div>
   </div>
   <div class="timeline-carousel__item-wrapper" data-js="timeline-carousel">
      
      <!--Timeline item-->
      <div class="timeline-carousel__item">
         <div class="timeline-carousel__image">
            <div class="media-wrapper media-wrapper--overlay" style="background: url(img/enero1991.png) center center; background-size:cover;"></div>
         </div>
         <div class="timeline-carousel__item-inner">
            <span class="year">Enero 1991</span>
            <span class="month">Inicios de JAVA</span>
            <p>Java nace en 1991 con el nombre "OAK", posteriormente cambiado por Green por problemas legales, y finalmente con la denominación actual JAVA..</p>
            <a href="https://en.wikipedia.org/wiki/Oak_(programming_language)" class="read-more" target="_blank">Read more</a>
         </div>
      </div>
      <!--/Timeline item-->
      
      <!--Timeline item-->
      <div class="timeline-carousel__item">
         <div class="timeline-carousel__image">
            <div class="media-wrapper media-wrapper--overlay" style="background: url(img/hotjava.jpg) center center; background-size:cover;"></div>
         </div>
         <div class="timeline-carousel__item-inner">
            <span class="year">ENERO 1992</span>
            <span class="month">Proyecto Verde</span>
            <p>En 1992 se presenta el proyecto verde, con los prototipos a bajo nivel. Entre 1993 y 1994 se trabaja para poder presentar un prototipo funcional (hotJava) donde se ve todo el potencial que JAVA puede ofrecer.</p>
            <a href="https://es.wikipedia.org/wiki/HotJava" class="read-more" target="_blank">Read more</a>
         </div>
      </div>
      <!--/Timeline item-->
      
      <!--Timeline item-->
      <div class="timeline-carousel__item">
         <div class="timeline-carousel__image">
            <div class="media-wrapper media-wrapper--overlay" style="background: url(img/enero1995.png) center center; background-size:cover;"></div>
         </div>
         <div class="timeline-carousel__item-inner">
            <span class="year">ENERO 1995</span>
            <span class="month">Establecimiento, Versiones de Java (1.0 -1.2)</span>
             <p>Java aparece en 1995 como un nuevo lenguaje de programación con soporte multiplataforma desarrollado por James Gosling y Sun MicroSystems.</p>
            <p>En 1995 finalmente, es presentada la versión alpha de java, y un año despues en 1996 es lanzado el primer JDK (JDK 1.0). El desarrollo de java a partir de entonces es imparable, se van presentando nuevos paquetes y librerías hasta la actualidad.</p>
            <a href="https://lineadeltiempohist.wixsite.com/lineadeltiempo/java-1995" class="read-more" target="_blank">Read more</a>
         </div>
      </div>
      <!--/Timeline item-->
      
      
      <!--Timeline item-->
      <div class="timeline-carousel__item">
         <div class="timeline-carousel__image">
            <div class="media-wrapper media-wrapper--overlay" style="background: url(img/enero1997.png) center center; background-size:cover;"></div>
         </div>
         <div class="timeline-carousel__item-inner">
            
            <span class="year">Enero 1997</span>
            
            <span class="month">Versión 1.1</span>
            <p>Aparece en 1997 e incorpora al lenguaje varias clases que faltaban como Readers /Writers ,Calendars y Bundles . Pero sin ningún lugar a duda su mayor aportación es la inclusión del estándar de JavaBeans y el API de JDBC para conexión a BD. Este último supone un salto importante en cuando a la utilización del lenguaje.</p>
            <a href="http://javahelpblack.weebly.com/versiones.html" class="read-more" target="_blank">Read more</a>
         </div>
      </div>
      <!--/Timeline item-->
      
      <!--Timeline item-->
      <div class="timeline-carousel__item">
         <div class="timeline-carousel__image">
            <div class="media-wrapper media-wrapper--overlay" style="background: url(img/enero2000.png) center center; background-size:cover;"></div>
         </div>
         <div class="timeline-carousel__item-inner">
            <span class="year">1998-2000</span>
            <span class="month">J2SE 1.2 - 1.3</span>
            <p>La palabra reservada (keyword) strictfp.
Reflexión en la programación.
La API gráfica ( Swing) fue integrada en las clases básicas.
La máquina virtual (JVM) de Sun fue equipada con un compilador JIT (Just in Time) por primera vez.
Java Plug-in.
Java IDL, una implementación de IDL (Interfaz para Descripción de Lenguaje) para la interoperabilidad con CORBA
Colecciones (Collections)</p>
            <p>La inclusión de la máquina virtual de HotSpot JVM (la JVM de HotSpot fue lanzada inicialmente en abril de 1999, para la JVM de J2SE 1.2)
RMI fue cambiado para que se basara en CORBA.
JavaSound
Se incluyó el Java Naming and Directory Interface (JNDI) en el paquete de librerías principales (anteriormente disponible como una extensión).
Java Platform Debugger Architecture (JPDA)</p>
            <a href="http://javahelpblack.weebly.com/versiones.html" class="read-more" target="_blank">Read more</a>
         </div>
      </div>
      <!--/Timeline item-->
      
      <!--Timeline item-->
      <div class="timeline-carousel__item">
         <div class="timeline-carousel__image">
            <div class="media-wrapper media-wrapper--overlay" style="background: url(img/enero2006.png) center center; background-size:cover;"></div>
         </div>
         <div class="timeline-carousel__item-inner">
            <span class="year">2006</span>
            <span class="month">Java SE 6 (2006): en esta versión, Sun cambió el nombre "J2SE" por Java SE y eliminó el ".0" del número de versión. </span>
            <p>Incluye un nuevo marco de trabajo y APIs que hacen posible la combinación de Java con lenguajes dinámicos como PHP, Python, Ruby y JavaScript.
Incluye el motor Rhino, de Mozilla, una implementación de Javascript en Java.
Incluye un cliente completo de Servicios Web y soporta las últimas especificaciones para Servicios Web, como JAX-WS 2.0, JAXB 2.0, STAX y JAXP.
Mejoras en la interfaz gráfica y en el rendimiento.</p>
            <a href="http://javahelpblack.weebly.com/versiones.html" class="read-more" target="_blank">Read more</a>
         </div>
      </div>
      <!--/Timeline item-->
      
      <!--Timeline item-->
      <div class="timeline-carousel__item">
         <div class="timeline-carousel__image">
            <div class="media-wrapper media-wrapper--overlay" style="background: url(img/enero2011.png) center center; background-size:cover;"></div>
         </div>
         <div class="timeline-carousel__item-inner">
            <span class="year">2011</span>
            <span class="month">Java SE 7 (2011): nueva versión que mejora la anterior.</span>
            <p>Soporte para XML dentro del propio lenguaje.
Un nuevo concepto de superpaquete.
Soporte para closures.
Introducción de anotaciones estándar para detectar fallos en el software.</p>
            <a href="http://javahelpblack.weebly.com/versiones.html" class="read-more" target="_blank">Read more</a>
         </div>
      </div>
      <!--/Timeline item
      <!--Timeline item-->
      <div class="timeline-carousel__item">
         <div class="timeline-carousel__image">
            <div class="media-wrapper media-wrapper--overlay" style="background: url(img/enero2014.png) center center; background-size:cover;"></div>
         </div>
         <div class="timeline-carousel__item-inner">
            <span class="year">2014</span>
            <span class="month">Java SE 8 (2014): nueva versión que mejora la anterior. Incluye la posibilidad de embeber JavaScript con Java y mejoras en la gestión de fechas y tiempo.</span>
            <p>Datos IANA 2015a: JDK 8u45 contiene datos de zona horaria IANA versión 2015a. 
Corrección de bug: Mejora del manejo de archivos jar. A partir de la versión JDK 8u45, la herramienta jar ya no permite la barra inicial "/" y ".." (punto-punto) como componente de ruta de acceso en el nombre de archivo de entrada zip al crear nuevos elementos y/o extraer de archivos jar y zip. Si es necesario, la nueva opción de línea de comandos "-P" debe utilizarse de forma explícita para conservar el punto-punto y/o el componente de ruta de acceso absoluta.
Corrección de bug: La aplicación JNLP con la sección "resource" anidada falla con NPE en la carga en jre8u40. Una aplicación JNLP con etiquetas resources anidadas dentro de una etiqueta java o j2se puede devolver una NPE. Ya se ha solucionado el problema. La etiqueta resources solo debe usarse si se utiliza realmente java.</p>
            <a href="http://javahelpblack.weebly.com/versiones.html" class="read-more" target="_blank">Read more</a>
         </div>
      </div>
      <!--/Timeline item-->

   </div>
</section>
<!-- partial -->
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js'></script><script  src="./script.js"></script>
            <%@include file="Footer.jsp" %>           
    </body>
</html>
