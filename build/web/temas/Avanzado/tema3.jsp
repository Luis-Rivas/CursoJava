<%-- 
    Document   : tema3
    Created on : 27-nov-2021, 16:56:59
    Author     : Luifran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h4 class="card-title"><p>JComboBox, JList</p></h4>
                          <h7 class="card-text"><p>El elemento JComboBox nos permite desplegar una lista de opciones, de la cual podemos seleccionar un ítem.</p></h7>
                          <img src="img/JComboBox_1.jpg" alt="JComboBox java swing" title="Ejemplo de JComboBox">
                          <div>  
                          <h7 class="card-text"><p>Una forma sencilla de agregar este elemento en nuestra aplicación es simplemente selecccionar el componente ComboBox de la paleta de componentes en NetBeans</p></h7>
                          <img src="img/JComboBox_2.jpg" alt="Insertar JComboBox" title="JComboBox desde Paleta de componentes">
                          </div>
                          <h7 class="card-text"><p>Para modificar la lista de opciones que contiene el combo box : <br> 1. Hacemos clic derecho sobre el elemento<br> 2. Se mostrará una cinta de opciones, seleccionamos la opción propiedades<br>3. En la ventana de propiedades del elemento buscamos la opción "model" y podemos agregar, quitar o modificar los ítems del JComboBox.</p></h7>
                          <img src="img/JComboBox_3.jpg" alt="Propiedades JComboBox"><br>
                          <p>Dentro de esta ventana de propiedades podemos editar diferentes propiedades del elemento, como cambiar el tipo y tamaño de fuente, agregar un tooltip, el ítem que se selecciona por defecto al ejecutar la aplicación, </p>
                          <p>Algunas de las funciones que posee este elemento son:</p>
                          <table class="table">
                              <tr>
                              <th>Función</th>
                              <th>Descripción</th>
                              </tr>
                              <tr>
                                  <td>getItemAt(int index)</td>
                                  <td>Obtiene el ítem de la posición especificada por el parámetro</td>
                              </tr>
                              <tr>
                                  <td>getSelectedIndex()</td>
                                  <td>Obtiene el índice del valor seleccionado en el elemento</td>
                              </tr>
                              <tr>
                                  <td>getItemCount()</td>
                                  <td>Devuelve la cantidad de Ítems contenidos en el combo box</td>
                              </tr>
                              <tr>
                                  <td>insertItemAt(String item, int index)</td>
                                  <td>Inserta un nuevo ítem a la lista del JComboBox</td>
                              </tr>
                              <tr>
                                  <td>setSelectedItem(int index)</td>
                                  <td>Selecciona el ítem que se encuentra en la posición especificada por el parámetro</td>
                              </tr>
                          </table>
                          <p>Ahora veamos un pequeño ejemplo de implementación del JComboBox.<br>Crearemos un programa con un combo box, un botón y un textbox. De modo que al hacer clic sobre el botón, se muestre en el textBox el valor del ítem que esté seleccionado en el JComboBox.</p>
                          <img src="img/EjemploJComboBox_1.jpg">
                          <p>Una vez colocados los elementos, cambiamos los nombres que tendrá cada elemento en el código, para ello, hacemos clic derecho sobre el elemento y seleccionamos la opción "Change Variable Name" y se mostrará un cuadro de texto donde podemos editar el nombre del elemento.</p>
                          <p>Para este ejemplo nombramos el JComboBox como jComboBox1, el boton ver como "btnVer" y el text box lo nombramos como "txtSeleccionado"</p>
                          <p>Ahora veremos como programar la acción.<br>Hacemos doble clic sobre el boton "ver", se nos mostrará el código de nuestro programa seleccionado en parte para editar el código de nuestro botón ver</p>
                          <img src="img/EjemploJComboBox_2.jpg">
                          <p>En esta parte colocaremos las instrucciones que se requieren para el funcionamiento del botón ver de nuestro programa.<br>
                            Creamos una variable llamada "selected" de tipo String, esta variable almacenará el item seleccionado en el JComboBox, utilizando las funciones .getItemAt(a ) y getSelectedIndex(). Luego asignamos al text box el valor de la variable "selected". El código queda de la siguiente forma: </p>
                          <img src="img/EjemploJComboBox_3.jpg">
                          <p>Y con eso ya tenemos finalizado el programa, ahora solo tienes que ejecutar y comprobar que funciona correctamente.</p>
                          <br>
                          <h5>Contenido multimedia</h5>
                          <iframe width="560" height="315" src="https://www.youtube.com/embed/9b-jDP7G0vs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    
                        </div>
                      </div>
                    </div>
                    
</div>
    <div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                        <div class="col-md-12">
                            <div class="card-body">
                                <h4 class="card-title">JList</h4>
                                <p>JList en Java Swing nos permite mostrar una lista de ítems de los cuales a diferencia del JComboBox se puede elegir uno o más.<br>
                                    Los métodos más utilizados para este elemento son:
                                </p>
                                <table class="table">
                              <tr>
                              <th>Función</th>
                              <th>Descripción</th>
                              </tr>
                              <tr>
                                  <td>AddElement(E object)</td>
                                  <td>Agrega un elemento al final de la lista</td>
                              </tr>
                              <tr>
                                  <td>insertElement(E object, int index)</td>
                                  <td>Inserta un elemento en la posicion indicada por el parámetro index.</td>
                              </tr>
                              <tr>
                                  <td>getElementAt(int index)</td>
                                  <td>Obtiene el elemento que se encuentra en la posición especificada.</td>
                              </tr>
                              <tr>
                                  <td>insertItemAt(String item, int index)</td>
                                  <td>Inserta un nuevo ítem a la lista del JComboBox</td>
                              </tr>
                              <tr>
                                  <td>removeElementAt(int index)</td>
                                  <td>Elimina el elemento que se encuentra en la posición indicada.</td>
                              </tr>
                              <tr>
                                  <td>removeElement(E object)</td>
                                  <td>Elimina el elemento especificado.</td>
                              </tr>
                          </table>
                                <p>Ejemplo:<br>Cargaremos una lista con objetos y los mostraremos en consola, para ello crearemos una clase llamada Color,a esta clase le agregaremos los atributos nombre y codigo, ambos de tipo String.<br>
                                   Creamos los contructores, getters y setters. En la clase principal que contiene el main, creamos varios colores y los agregamos en una lista. Finalmente recorremos la lista con un ciclo for-each para mostrarlos en la consola.
                                   <br>El código de la clase Color:<br><img src="img/EjemploJList_1.jpg">
                                   <br>El codigo de la clase principal queda de la siguiente forma:<br><img src="img/EjemploJList_2.jpg">
                                   <br>Al ejecutar el programa tenemos la siguiente salida:<br><img src="img/EjemploJList_3.jpg">
                                </p>
                                <br>
                                <h5>Contenido multimedia</h5>
                          <iframe width="560" height="315" src="https://www.youtube.com/embed/hZtY3aOaG28" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    
                            </div>
                    </div>
                  </div>
        </div>
