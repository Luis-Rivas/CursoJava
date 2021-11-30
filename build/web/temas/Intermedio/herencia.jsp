<%-- 
    Document   : herencia
    Created on : 25-nov-2021, 15:59:14
    Author     : Luifran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h4 class="card-title"><p>Herencia en Java</p></h4>
                          <h7 class="card-text"><p>La herencia es un pilar importante de OOP (Programación Orientada a Objetos). Es el mecanismo en Java por el cual una clase permite heredar las características (atributos y métodos) de otra clase. Aprenda más a continuación.
                          <h7 class="card-text"><p>En el lenguaje de Java, una clase que se hereda se denomina superclase. La clase que hereda se llama subclase. Por lo tanto, una subclase es una versión especializada de una superclase. Hereda todas las variables y métodos definidos por la superclase y agrega sus propios elementos únicos.</p></h7>                      
                          <h5 class="card-text"><p>Terminología importante.</p></h5>
                          <div><h7 class="card-text">⚫Superclase: la clase cuyas características se heredan se conoce como superclase (o una clase base o una clase principal).</h7></div>
                          <div><h7 class="card-text">⚫Subclase: la clase que hereda la otra clase se conoce como subclase (o una clase derivada, clase extendida o clase hija). La subclase puede agregar sus propios campos y métodos además de los campos y métodos de la superclase.</h7></div>
                          <div><h7 class="card-text"><p>⚫Reutilización: la herencia respalda el concepto de “reutilización”, es decir, cuando queremos crear una clase nueva y ya hay una clase que incluye parte del código que queremos, podemos derivar nuestra nueva clase de la clase existente. Al hacer esto, estamos reutilizando los campos/atributos y métodos de la clase existente.</p></h7></div>

                          </div>                                                                              
                        </div>
                      </div>
                    </div>
              
                  

                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>¿Qué es Herencia?</p></h5>
                          <h7 class="card-text"><p>Podemos definir la herencia como la capacidad de crear clases que adquieren de manera automática los miembros (atributos y métodos) de otras clases que ya existen, pudiendo al mismo tiempo añadir atributos y métodos propios.</p></h7>
                          <h5 class="card-text"><p>Ventajas de la Herencia</p></h5>
                          <div><h7 class="card-text">⚫Reutilización del código: En aquellos casos donde se necesita crear una clase que, además de otros propios, deba incluir los métodos definidos en otra, la herencia evita tener que reescribir todos esos métodos en la nueva clase.</h7></div>
                          <div><h7 class="card-text">⚫Mantenimiento de aplicaciones existentes: Utilizando la herencia, si tenemos una clase con una determinada funcionalidad y tenemos la necesidad de ampliar dicha funcionalidad, no necesitamos modificar la clase existente (la cual se puede seguir utilizando para el tipo de programa para la que fue diseñada) sino que podemos crear una clase que herede a la primera, adquiriendo toda su funcionalidad y añadiendo la suya propia.</h7></div>
                                                                                                            
                        </div>
                      </div>
                    </div>
                  </div>



                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Tipos De Herencia En Java</p></h5>
                          <div><h7 class="card-text">⚫Herencia única: en la herencia única, las subclases heredan las características de solo una superclase. En la imagen a continuación, la clase A sirve como clase base para la clase derivada B.</h7></div>
                           <div><h7 class="card-text">⚫Herencia Multinivel: en la herencia multinivel, una clase derivada heredará una clase base y, además, la clase derivada también actuará como la clase base de otra clase. En la imagen inferior, la clase A sirve como clase base para la clase derivada B, que a su vez sirve como clase base para la clase derivada C. En Java, una clase no puede acceder directamente a los miembros de los “abuelos”.</h7></div>
                           <div><h7 class="card-text">⚫Herencia Múltiple (a través de interfaces): en Herencia múltiple, una clase puede tener más de una superclase y heredar características de todas las clases principales. Tenga en cuenta que Java no admite herencia múltiple con clases. En Java, podemos lograr herencia múltiple solo a través de Interfaces. En la imagen a continuación, la Clase C se deriva de la interfaz A y B.</h7></div>
                           <div><h7 class="card-text">⚫Herencia Jerárquica: en la herencia jerárquica, una clase sirve como una superclase (clase base) para más de una subclase. En la imagen inferior, la clase A sirve como clase base para la clase derivada B, C y D.</h7></div>
                           <div><h7 class="card-text">⚫Herencia Híbrida (a través de Interfaces): Es una mezcla de dos o más de los tipos de herencia anteriores. Como Java no admite herencia múltiple con clases, la herencia híbrida tampoco es posible con clases. En Java, podemos lograr herencia híbrida solo a través de Interfaces.</h7></div>
                          <p><img src="./img/herencias.png" class="img-fluid rounded-start" alt="..."></p>  
                          
                        </div>
                      </div>
                    </div>
                  </div>


                   <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Ejemplo de cómo usar la herencia en Java</p></h5>
                          <h7 class="card-text"><p>La palabra clave utilizada para la herencia es extends</p></h7>
                          <h7 class="card-text"><p>Ejemplo: Comencemos con un breve ejemplo que ilustra varias de las características clave de la herencia. El siguiente programa crea una superclase llamada DosDimensiones, que almacena el ancho y la altura de un objeto bidimensional, y una subclase llamada Triangulo. Observe cómo se usa la palabra clave extends para crear una subclase.</p></h7>
                          <p><img src="./img/herencia_ejemplo1.PNG" class="img-fluid rounded-start" alt="..."></p>
                          <p><img src="./img/herencia_ejemplo2.PNG" class="img-fluid rounded-start" alt="..."></p>
                          <h7 class="card-text"><p>Su salida será:</p></h7>
                          <p><img src="./img/herencia_ejemplo3.PNG" class="img-fluid rounded-start" alt="..."></p>
                          <h7 class="card-text"><p>Nota: En el programa anterior, cuando se crea un objeto de clase Triangulo, una copia de todos los métodos y campos de la superclase adquiere memoria en este objeto. Es por eso que, al usar el objeto de la subclase, también podemos acceder a los miembros de una superclase. </p></h7>
                          <h7 class="card-text"><p>Tenga en cuenta que durante la herencia solo se crea el objeto de la subclase, no de la superclase.</p></h7>
                      </div>
                    </div>
                  </div>
                </div>


                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Contenido multimedia</p></h5>
                          <p align="center"><iframe width="560" height="315" src="https://www.youtube.com/embed/CYNLhg42O9c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
                      </div>
                    </div>
                  </div>
                </div>
