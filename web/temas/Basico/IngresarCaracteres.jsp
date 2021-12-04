<%-- 
    Document   : IngresarCaracteres
    Created on : 03-dic-2021, 20:47:35
    Author     : Luifran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="card mb-3 caja-contenedor3">
                <div class="row g-0">
                  <div class="col-md-12">
                    <div class="card-body">
                      <h4 class="card-title"><p>Ingreso de caracteres desde el teclado</p></h4>
                      <h4 class="card-title"><p>Lectura de datos por teclado en Java, utilizando Scanner y BufferedReader</p></h4>
                      <h7 class="card-text"><p>La entrada o lectura de datos en Java es uno de los conceptos más importantes y fundamentales al momento de interactuar con el usuario de nuestro programa. La entrada de datos en Java, a diferencia de otros lenguajes es un poco complicada (no demasiado) y existen diferentes formas de hacerlo, unas más complejas que otras. En esta sección veremos dos maneras sencillas de leer datos para nuestro programa en Java, veremos entonces dos formas de leer datos del usuario por teclado. La primera usando las clases BufferedReader y InputStreamReader ambas de la librería java.io y la segunda con la clase Scanner de la librería java.util.</p></h7>
                      <div><h7 class="card-text"><p>Comencemos entonces nuestros ejemplos para la lectura por teclado en Java usando la clase BufferedReader y InputStreamReader.</p></h7></div>
                      <h4 class="card-title"><p>Lectura de datos por teclado con BufferedReader y InputStreamReader</p></h4>
                      <h7 class="card-text"><p>La entrada de datos con estas dos clases se puede hacer un menos de tres líneas según lo que necesitemos hacer, veremos cómo leer números y texto y las particularidades de ambos casos al usar estas clases.</p></h7>
                      <img src="./img/ing_caracteres1.PNG" class="img-fluid rounded-start" alt="...">
                      <div><h7 class="card-text">Como pudimos ver en el código anterior, ha sido bastante sencillo obtener la entrada del usuario y almacenar ese valor en una variable. El único "problema" es que BufferedReader únicamente posee el método readLine() para leer la entrada y este siempre retorna String, de modo que para obtener un número debemos leer primero como String y luego enviarle dicho String al método parseInt() de la clase Integer. Hay que ser muy cuidadosos con Integer.parseInt() pues si el usuario no ingreso un número sino letras, se disparará una excepción que debemos controlar (más adelante veremos esto con detalle).</h7></div>
                      
                      <h5 class="card-title"><p>Contenido multimedia</p></h5>
                      <iframe width="560" height="315" src="https://www.youtube.com/embed/PXeqa6xzaD0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                                     
                    </div>
                  </div>
                </div>
              </div>


              <div class="card mb-3 caja-contenedor3">
                <div class="row g-0">
                  <div class="col-md-12">
                    <div class="card-body">
                      
                      <h4 class="card-title"><p>Lectura de entrada por teclado usando la clase Scanner</p></h4>
                      <div><h7 class="card-text">La clase Scanner de la librería java.util es también muy sencilla para obtener datos de entrada del usuario, a diferencia de BufferedReader, Scanner si posee un método para la lectura de números y para la lectura de texto que nos ayudarán a facilitar un poco las cosas, veamos:</h7></div>
                      <img src="./img/ing_caracteres2.PNG" class="img-fluid rounded-start" alt="...">
                      <div><h7 class="card-text">Con este código hemos podido realizar la lectura de datos del usuario muy fácil, pues ya no nos tuvimos que preocupar por el tipo de dato, solo debemos usar el método adecuado según sea entero, String, float, etc.</h7></div>
                      
                      <h5 class="card-title"><p>Contenido multimedia</p></h5>
                      <iframe width="560" height="315" src="https://www.youtube.com/embed/89wR1OXLjPE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                      
                    </div>
                  </div>
                </div>
              </div>
