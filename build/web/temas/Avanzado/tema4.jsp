<%-- 
    Document   : tema4
    Created on : 27-nov-2021, 16:57:07
    Author     : Luifran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div>
    <div class="card mb-3 caja-contenedor3">
        <div class="row g-0">
            <div class="col-md-12">
                <div class="card-body">
                    <h4>JOptionPane</h4>
                    <p>JOptionPane es una clase que nos permite usar cuadros de dialogo ya construidos, estos cuadros de dialogo pueden ser para ingresar datos a nuestro programa(inputDialog), mostrar mensajes al usuario(messageDialog), mostrar botones de aceptar/cancelar(confirmDialog).
                        <br>En la tabla siguiente se muestran los métodos más utilizados para este elemento:
                    </p>
                    <table class="table">
                              <tr>
                              <th>Función</th>
                              <th>Descripción</th>
                              </tr>
                              <tr>
                                  <td>showInputDialog(String mensaje)</td>
                                  <td>Método que sirve para crear una ventana de dialogo para ingresar datos, el parámetro mensaje es el título que tendrá el elemento.</td>
                              </tr>
                              <tr>
                                  <td>showMessageDialog(Component parentComponent, Object message)</td>
                                  <td>Crea una ventana de dialogo que contiene la información que proporcionemos en le parámetro message</td>
                              </tr>
                              <tr>
                                  <td>showConfirmDialog(Component parentComponent, Object message)</td>
                                  <td>Crea una ventana de dialogo que muestra las opciones Aceptar/Cancelar</td>
                              </tr>
                          </table>
                    <br><strong>Ejemplo</strong>
                    <p>
                        Veamos un programa que realice una suma de dos números ingresados por un inputDialog, y que muestre los resultados de la suma en un messageDialog:
                        <br><img src="img/JOptionPane1.jpg"><br>
                        Al ejecutar el programa debería seguir la siguiente secuencia:</p><br>
                    <ol>
                        <li>Se muestra la descripción del programa con un mensaje<br> <img src="img/JOptionPane2.jpg"><br></li>
                        <li>Se solicita el ingreso de los números<br><img src="img/JOptionPane5.jpg"><br> <img src="img/JOptionPane3.jpg"><br></li>
                        
                        <li>Finalmente se muestra el resultado de la suma<br><img src="img/JOptionPane4.jpg"><br></li>
                    </ol>
                    <h5>Contenido multimedia</h5>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/DoGHuJULtz4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    
                </div>               
            </div>             
        </div>
    </div>
    <div class="card mb-3 caja-contenedor3">
        <div class="row g-0">
            <div class="col-md-12">
                <div class="card-body">
                    <h4>JCheckBox y JLabel</h4>
                    <p>El <strong>check box</strong> es un elemento que nos permite crear una casilla de selección, básicamente es como un interruptor de dos estados.
                        <br>Veamos algunas de las funciones que posee este elemento:<br></p>
                        <table class="table">
                              <tr>
                              <th>Función</th>
                              <th>Descripción</th>
                              </tr>
                              <tr>
                                  <td>isSelected()</td>
                                  <td>Devuelve true si el check box está seleccionado o false si no está seleccionado</td>
                              </tr>
                              <tr>
                                  <td>getString()</td>
                                  <td>Obtiene el texto asociado al elemento</td>
                              </tr>
                          </table>
                    <h5>Contenido multimedia </h5>
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/AF7Y3RdzHe0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    
                    <p><br><strong>JLabel</strong>  es un elemento que nos permite mostrar un texto en nuestro programa. <br></p>
                    <table class="table">
                              <tr>
                              <th>Función</th>
                              <th>Descripción</th>
                              </tr>
                              <tr>
                                  <td>getText()</td>
                                  <td>Obtiene el texto del elemento</td>
                              </tr>
                              <tr>
                                  <td>setText(String text)</td>
                                  <td>Agrega el texto que especificamos por el parámetro en el elemento.</td>
                              </tr>
                          </table>
                    <p>
                        <br>Veamos un ejemplo aplicando ambos controles (JCheckBox y JLabel):<br>
                        Crearemos un programa para crear una lista de compras(solo incluiremos los nombres de los productos, sin las cantidades), para agregar un producto a la lista se debe marcar la casilla correspondiete al producto, también incluiremos la fecha en que se realizará la compra,el usuario la ingresa en un text box y será mostrada en un label.
                        <br>
                    </p>
                        <ol>
                            <li>Utilizando la paleta de controles de netbeans diseñamos realizamos el diseño del programa y cambiamos el nombre de las variables de los controles que utilizamos.
                                <br><img src='img/EjemploCheckBox_1.jpg'>  
                            </li>
                            <li>
                                En la vista de diseño del JForm hacemos doble clic sobre el botón guardar y procedemos a escribir el código de nuestro programa.
                                <br><img src='img/EjemploCheckBox_2.jpg'>
                                <br>Primero creamos una instancia de la clase DefaultListModel, la nombramos "modelo" en esta variable almacenaremos los elementos que contendrá la lista, luego para cada check box creamos una condición if la cual comprueba que el elemento esté seleccionado para agregarlo a la lista. Finalmente asignamos al label la fecha que se ingresa el el tex box fecha.
                            </li>
                            <li>
                                Guardamos los cambios y ejecutamos el programa.
                                <br><img src="img/EjemploCheckBox_3.jpg">
                                <br>
                            </li>
                        </ol>
                    
                </div>   
            </div> 
        </div>
    </div>
</div>
