<%-- 
    Document   : try_catch
    Created on : 25-nov-2021, 15:45:34
    Author     : Luifran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

          <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h4 class="card-title"><p>Manejo de excepciones (try-catch)</p></h4>
                          <h7 class="card-text"><p>A continuación veremos como el lenguaje Java implementa su propio sistema de gestión de excepciones, o como hemos mencionado anteriormente, también llamado sistema de tratamiento de errores. También veremos los primeros ejemplos sencillos sobre la gestión de excepciones.</p></h7>
                          <div>  
                          <h7 class="card-text"><p>Sabemos hasta ahora que el control de flujo de un programa escrito en Java se lleva a cabo con sentencias del tipo if, while, for, return, break, etc. Estas sentencias forman un conjunto de palabras reservardas que determinan cierta funcionalidad. Pues bien, ninguna de ellas tiene en cuenta que se puedan producir errores en tiempo de ejecución de un programa y por tanto Java necesita de un conjunto de palabras nuevas para tener en cuenta que cualquier código puede fallar o ser mal interpretado en tiempo de ejecución.</p></h7>
                          </div>
                          <h7 class="card-text"><p>Vamos a ver tres de las palabras reservadas para tratamiento de excepciones:</p></h7>
                          <div><h7 class="card-text">⚫Try.</h7></div>
                          <div><h7 class="card-text">⚫Catch.</h7></div>
                          <div><h7 class="card-text"><p>⚫Finally.</p></h7></div>
                          <h7 class="card-text"><p>De forma introductoria diremos que hay dos formas de tratar errores en Java: capturarlos o lanzarlos. El uso de try – catch – finally corresponde a la captura de errores. Vamos a poner un símil sencillo: un error es algo inesperado, como encontrarte un ladrón dentro de tu casa. Cuando nos encontramos con un error podemos capturarlo (equivaldría a capturar el ladrón) o lanzarlo (equivaldría a tratar de hacer huir al ladrón, de hacer que salga fuera del lugar donde se encuentra).</p></h7>                                                                              
                        </div>
                      </div>
                    </div>
                  </div>

                  

                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Bloque Try</p></h5>
                          <h7 class="card-text"><p>Try en inglés es el verbo intentar, así que todo el código que vaya dentro de esta sentencia será el código sobre el que se intentará capturar el error si se produce y una vez capturado hacer algo con él. Lo ideal es que no ocurra un error, pero en caso de que ocurra un bloque try nos permite estar preparados para capturarlo y tratarlo. Así un ejemplo sería:</p></h7>
                          <img src="./img/bloque_try.PNG" class="img-fluid rounded-start" alt="...">                                                                                  
                        </div>
                      </div>
                    </div>
                  </div>


                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Bloque Catch</p></h5>
                          <h7 class="card-text"><p>En este bloque definimos el conjunto de instrucciones necesarias o de tratamiento del problema capturado con el bloque try anterior. Es decir, cuando se produce un error o excepción en el código que se encuentra dentro de un bloque try, pasamos directamente a ejecutar el conjunto de sentencias que tengamos en el bloque catch. Esto no es exactamente así pero ya explicaremos más adelante todo el funcionamiento. De momento para una mejor comprensión vamos a considerar que esto es así.</p></h7>
                          <p><img src="./img/bloque_catch.PNG" class="img-fluid rounded-start" alt="..."></p>  
                          <h7 class="card-text"><p>Fíjate que después de catch hemos puesto unos paréntesis donde pone “Exception e”. Esto significa que cuando se produce un error Java genera un objeto de tipo Exception con la información sobre el error y este objeto se envía al bloque catch.</p></h7>                                                                                
                        </div>
                      </div>
                    </div>
                  </div>


                   <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Bloque Finally</p></h5>
                          <h7 class="card-text"><p>Y para finalizar tenemos el bloque finally que es un bloque donde podremos definir un conjunto de instrucciones necesarias tanto si se produce error o excepción como si no y que por tanto se ejecuta siempre.</p></h7>
                          <p><img src="./img/bloque_finally.PNG" class="img-fluid rounded-start" alt="..."></p>
                      </div>
                    </div>
                  </div>
                </div>


                <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Ejemplo de manejo de errores</p></h5>
                          <h7 class="card-text"><p>A continuación vamos a ver cómo se comporta un programa con tratamiento de errores cuando se produce un error y cómo afecta al control de flujo del programa. Escribe este código en tu editor.</p></h7>
                          <p><img src="./img/prueba_try.PNG" class="img-fluid rounded-start" alt="..."></p>
                          <h7 class="card-text"><p>Se produce un error porque el método parseInt de la clase Integer espera que dentro de las comillas llegue un número y no una letra. Por ejemplo int n = Integer.parseInt("65"); sirve para transformar el String 65 en un int de valor 65. Al no encontrar un valor válido se produce un error de tipo java.lang.NumberFormatException.</p></h7>
                          <h7 class="card-text"><p>La salida obtenida en este caso donde se produce error es:</p></h7>
                          <p><img src="./img/consola_try.PNG" class="img-fluid rounded-start" alt="..."></p>
                      </div>
                    </div>
                  </div>
                </div>
                  

                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Contenido multimedia</p></h5>
                          <p align="center"><iframe width="560" height="315" src="https://www.youtube.com/embed/3j_eaXOOiSU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
                      </div>
                    </div>
                  </div>
                </div>
      

