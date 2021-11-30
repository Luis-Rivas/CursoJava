<%-- 
    Document   : clases_objetos
    Created on : 25-nov-2021, 15:59:02
    Author     : Luifran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h4 class="card-title"><p>Clases y Objetos</p></h4>
                          <h7 class="card-text"><p>Antes de que pueda seguir avanzando en su estudio de Java, necesita aprender sobre las clases. La clase es la esencia de Java. Es la base sobre la cual se construye todo el lenguaje Java porque la clase define la naturaleza de un objeto. Como tal, la clase forma la base para la programación orientada a objetos en Java.</p></h7>
                          <div>  
                          <h7 class="card-text"><p>Dentro de una clase se definen los datos y el código que actúa sobre esos datos. El código está contenido en métodos. Debido a que las clases, los objetos y los métodos son fundamentales para Java, los detallamos aquí. Tener una comprensión básica de estas características le permitirá escribir programas más sofisticados y comprender mejor ciertos elementos claves de Java que se describen más adelante.</p></h7>
                          </div>                                                                              
                        </div>
                      </div>
                    </div>
                  </div>

                  

                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>¿Qué es una clase?</p></h5>
                          <h7 class="card-text"><p>Dado que toda la actividad del programa Java ocurre dentro de una clase, hemos estado usando clases desde el comienzo de este curso. Por supuesto, solo se han utilizado clases extremadamente simples, y no hemos aprovechado la mayoría de sus características. Como verá, las clases son sustancialmente más poderosas que las limitadas presentadas hasta ahora.</p></h7>
                          <h7 class="card-text"><p>Una clase es una plantilla que define la forma de un objeto. Especifica los datos y el código que operará en esos datos. Java usa una especificación de clase para construir objetos. Los objetos son instancias de una clase. Por lo tanto, una clase es esencialmente un conjunto de planes que especifican cómo construir un objeto.</p></h7>                                                                                  
                        </div>
                      </div>
                    </div>
                  </div>


                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>La Forma General De Una Clase</p></h5>
                          <h7 class="card-text"><p>Cuando defines una clase, declaras su forma y naturaleza exactas. Para ello, especifique las variables de instancia que contiene y los métodos que operan en ellas. Aunque las clases muy simples pueden contener solo métodos o solo variables de instancia, la mayoría de las clases del mundo real contienen ambas. Una clase se crea al usar la palabra clave . Aquí se muestra una forma general simplificada de una definición de clase:</p></h7>
                          <p><img src="./img/clase.PNG" class="img-fluid rounded-start" alt="..."></p>                      
                          <h7 class="card-text"><p>Aunque no existe una regla sintáctica que se deba cumplir, una clase bien diseñada debería definir una y solo una entidad lógica. Por ejemplo, una clase que almacena nombres y números de teléfono normalmente no almacenará información sobre el mercado de valores, el promedio de precipitaciones u otra información no relacionada. El punto aquí es que una clase bien diseñada agrupa la información conectada lógicamente. ¡Poner información no relacionada en la misma clase des-estructurará rápidamente tu código!</p></h7>
                          <h7 class="card-text"><p>Hasta este punto, las clases que hemos estado utilizando tienen solo un método: . Pronto verás cómo crear otros. Sin embargo, observe que la forma general de una clase no especifica un método . Se requiere un método solo si esa clase es el punto de partida para su programa. Además, algunos tipos de aplicaciones Java no requieren un .</p></h7>                                                                                
                        </div>
                      </div>
                    </div>
                  </div>


                   <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Definición De Una Clase</p></h5>
                          <h7 class="card-text"><p>Para ilustrar las clases, desarrollaremos una clase que encapsula información sobre vehículos, tales como automóviles, furgonetas y camiones. Esta clase se llama vehículo, y almacenará tres elementos de la información sobre un vehículo: el número de pasajeros que puede llevar, su capacidad de combustible, y la cantidad media de combustible consumido (en millas por galón).</p></h7>
                          <h7 class="card-text"><p>Entonces, se define tres variables de instancia: pasajeros, capacidad y mpg. Observe que el vehículo no contiene ningún método. Por lo tanto, actualmente es una clase de sólo datos.</p></h7>
                          <p><img src="./img/definicion_clase.PNG" class="img-fluid rounded-start" alt="..."></p>
                          <h7 class="card-text"><p>Una definición de clase crea un nuevo tipo de datos. En este caso, el nuevo tipo de datos se llama Vehiculo. Usará este nombre para declarar objetos de tipo Vehiculo. Recuerde que una declaración de clase es sólo una descripción de tipo; no crea un objeto real. Así, el código anterior no hace que ningún objeto de tipo Vehiculo entre en existencia.</p></h7>
                      </div>
                    </div>
                  </div>
                </div>


                <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>¿Cómo se crea un objeto?</p></h5>
                          <h7 class="card-text"><p>Para crear realmente un objeto de vehículo, usará una instrucción como la siguiente:</p></h7>
                          <p><img src="./img/objeto1.PNG" class="img-fluid rounded-start" alt="..."></p>
                          <h7 class="card-text"><p>Después de que se ejecute esta declaración, minivan se refiere a una instancia del vehículo. Por lo tanto, tendrá la realidad “física“. Por el momento, no se preocupe por los detalles de esta declaración.</p></h7>
                          <h7 class="card-text"><p>Así, cada objeto del vehículo contendrá sus propias copias de las variables de la instancia pasajeros, capacidad, y mpg. Para acceder a estas variables, se usará el operador punto (.). El operador punto vincula el nombre de un objeto con el nombre de un miembro. La forma general del operador punto se muestra aquí:</p></h7>
                          <p><img src="./img/objeto2.PNG" class="img-fluid rounded-start" alt="..."></p>
                          <h7 class="card-text"><p>Por lo tanto, el objeto se especifica a la izquierda, y el miembro se pone a la derecha. Por ejemplo, para asignar la variable capacidad de minivan al valor 16, utilice la siguiente instrucción:</p></h7>
                          <p><img src="./img/objeto3.PNG" class="img-fluid rounded-start" alt="..."></p>
                          <h7 class="card-text"><p>En general, puede utilizar el operador punto para acceder a las variables de instancia y a los métodos. Aquí está un programa completo que utiliza la clase</p></h7>
                          <p><img src="./img/objeto4.PNG" class="img-fluid rounded-start" alt="..."></p>
                          <h7 class="card-text"><p>Si se desea saber el resultado del ejemplo anterior se debe imprimir el resultado de esta forma: System.out.println("La Minivan puede llevar " + minivan.pasajeros + " pasajeros con un rango de " + rango + " millas");</p></h7>
                          <h7 class="card-text"><p>El resultado será: La Minivan puede llevar 9 pasajeros con un rango de 300 millas</p></h7>
                          <h7 class="card-text"><p>Cuando compile este programa, encontrará que se han creado dos archivos .Class, uno para Vehiculo y otro para VehiculoDemo. El compilador de Java pone automáticamente cada clase en su propio archivo .class. No es necesario que tanto Vehiculo como la clase VehiculoDemo estén en el mismo archivo fuente. Podría poner cada clase en su propio archivo, llamado VehiculoDemo.java y VehiculoDemo.java, respectivamente.</p></h7>

                      </div>
                    </div>
                  </div>
                </div>
                  

                  <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h5 class="card-title"><p>Contenido multimedia</p></h5>                       
                          <p align="center"><iframe width="560" height="315" src="https://www.youtube.com/embed/ZFAhUKSJRXw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
                      </div>
                    </div>
                  </div>
                </div>
