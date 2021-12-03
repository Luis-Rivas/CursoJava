<%-- 
    Document   : interfaces
    Created on : 2-dic-2021
    Author     : diegocastro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h4 class="card-title"><p>Interfaces en Java</p></h4>
                          <h7 class="card-text"><p>Un interfaz es una lista de acciones que puede llevar a cabo un determinado objeto. Sorpresa, ¿eso no eran los métodos que se definen en una clase? Casi, en una clase además de aparecer los métodos aparecía el código para dichos métodos, en cambio en un interfaz sólo existe el prototipo de una función, no su código.
                          <h7 class="card-text"><p>Veamoslo con un ejemplo: Pensemos en un interfaz que en su lista de métodos aparezcan los métodos despegar, aterrizar, servirComida y volar. Todos pensamos en un avión, ¿verdad? El motivo es sencillamente que avión es el concepto que engloba las acciones que hemos detallado antes, a pesar que existan muchos objetos avión diferentes entre sí, por ejemplo Boeing 747, Boeing 737, MacDonell-Douglas.</p></h7>                      
                          <div><h7 class="card-text">Lo realmente interesante es que todos ellos, a pesar de pertenecer a clases distintas, poseen el interfaz avión, es decir poseen los métodos detallados en la lista del interfaz avión.</h7></div>
                          <div><h7 class="card-text">Esto significa también que a cualquier avión le podemos pedir que vuele, sin importarnos a que clase real pertenezca el avión, evidentemente cada clase especificará como volará el avión (porque proporciona el código de la función volar). En java un interfaz define la lista de método. Veamos la estructura de una interfaz:</h7></div>
                          <div><h7 class="card-text"><p>Para declarar una interfaz se utiliza:</p></h7></div>
                          <p><img src="./img/interfaz_1.png" class="img-fluid rounded-start" alt="..."></p>
                          <div><h7 class="card-text"><p>"modificar_acceso" puede ser una clase de objetos que nos permite utilizar herencia en abstracción constante en las clases en las que se implemente. Para implementarla en una clase, se utiliza la forma:</p></h7></div>
                          <p><img src="./img/interfaz_2.png" class="img-fluid rounded-start" alt="..."></p>
                          </div>                                                                              
                        </div>git a
                      </div>
                    </div>
              
                  

                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-text"><p>Ventajas de las Interfaces</p></h5>
                          <div><h7 class="card-text">⚫Organizar la programación.</h7></div>
                          <div><h7 class="card-text">⚫Permiten declarar constantes que van a estar disponibles para todas las clases que queramos (implementando esa interfaz)</h7></div>
                          <div><h7 class="card-text">⚫Obligar a que ciertas clases utilicen los mismos métodos (nombres y parámetros).</h7></div>
                          <div><h7 class="card-text">⚫Establecer relaciones entre clases que no estén relacionadas.</h7></div>
                        </div>
                      </div>
                    </div>
                  </div>


                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Contenido multimedia</p></h5>
                          <p align="center"><iframe width="560" height="315" src="https://www.youtube.com/embed/7MlB-K9AMxY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>             </div>
                  </div>
                </div>
