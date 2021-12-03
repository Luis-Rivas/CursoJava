<%-- 
    Document   : jbutton,jpanel,jdialog
    Created on : 2-dic-2021
    Author     : diegocastro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h4 class="card-title"><p>JPanel</p></h4>
                          <h7 class="card-text"><p>Los JPanel en Java son una de las herramientas más útiles que contiene el entorno Java, consisten en objetos contenedores que a su vez agrupan otros objetos tales como botones, etiquetas, selectores, campos para texto, entre muchos otros, lo que hace es facilitar la agrupación de estos elementos de una manera más práctica. Java con su JPanel ha sabido integrar muy bien diversas funcionalidades que como fin último colocan y acomodan elementos dentro de un panel que funciona como contenedor, así luego es más fácil mover todos esos componentes relacionados de un lugar a otro, sólo con la opción de mover el JPanel, sin mover cada uno de los elementos que contiene por separado.
                          <h7 class="card-text"><p>Lo primero que tenemos que hacer es importar la librería del JPanel:</p></h7>                      
                          <div><h7 class="card-text">import javax.swing.JPanel;</h7></div>
                          <div><h7 class="card-text">Ejemplo:</h7></div>
                          <div><h7 class="card-text">Primero creamos un JLabel que colocaremos dentro de nuestra objeto JPanel:</h7></div>
                          <p><img src="./img/jpanel_1.png" class="img-fluid rounded-start" alt="..."></p>
                          <div><h7 class="card-text"><p>Luego crearemos el objeto JPanel dentro de nuestra clase con el siguiente codigo.</p></h7></div>
                          <p><img src="./img/jpanel_2.png" class="img-fluid rounded-start" alt="..."></p>
                          <div><h7 class="card-text">Creamos nuestra clase y lo primero que tenemos que hacer es extender de JPanel, crear el inicializador y el constructor, luego crear todos los componentes e irlos agregando a la clase.</h7></div>
                          <p><img src="./img/jpanel_3.png" class="img-fluid rounded-start" alt="..."></p>
                          <div><h7 class="card-text">Y acá está la clase donde se agregan tanto el objeto como la clase al JFrame:</h7></div>
                          <p><img src="./img/jpanel_4.png" class="img-fluid rounded-start" alt="..."></p>
                          <div class="card-body">
                          <h5 class="card-title"><p>Contenido multimedia</p></h5>
                          <p align="center"><iframe width="560" height="315" src="https://www.youtube.com/embed/P6IdKm_Zock" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                  
                        </div>                                                                              
                        </div>
                      </div>
                    </div>



<div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h4 class="card-title"><p>JButton</p></h4>
                          <h7 class="card-text"><p>La clase JButton en Java se usa para crear botones que se pueden usar para realizar cualquier evento de acción cada vez que se hace clic. Para lograr la acción del evento, se debe implementar la interfaz ActionListener. El componente Botones en Swing es similar al componente del botón AWT, excepto que puede contener texto, imagen o ambos. La clase JButton extiende la clase JComponent y se puede usar en un contenedor.
                          <h7 class="card-text"><p>La declaración de la clase javax.swing.JButton está a continuación:</p></h7>                      
                          <div><h7 class="card-text">public class JButton extends AbstractButton implements Accessible</h7></div>
                          <div><h7 class="card-text">Ejemplo:</h7></div>
                          <p><img src="./img/jbutton_1.png" class="img-fluid rounded-start" alt="..."></p>
                          <div><h7 class="card-text"><p>Obtenemos:</p></h7></div>
                          <p><img src="./img/jbutton_2.png" class="img-fluid rounded-start" alt="..."></p>
                          <div class="card-body">
                          <h5 class="card-title"><p>Contenido multimedia</p></h5>
                          <p align="center"><iframe width="560" height="315" src="https://www.youtube.com/embed/5eZliOGvoZo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                        </div>                                                                              
                        </div>
                      </div>
                    </div>

<div class="card mb-3 caja-contenedor3">
                    <div class="row g-0">
                      <div class="col-md-12">
                        <div class="card-body">
                          <h4 class="card-title"><p>JDialog</p></h4>
                          <h7 class="card-text"><p>Cuando nuestra aplicación necesita más de una ventana, debemos utilizar ventanas secundarias mediante el componente JDialog.
                          <h7 class="card-text"><p>Un JFrame no admite a ninguna otra ventana como padre. El JDialog sí admite como padres un JFrame u otros JDialog. Esto es importante porque una ventana hija siempre quedará por encima de su ventana padre. Si al crear los JDialog les pasamos el JFrame como padre o parent, los JDialog siempre estarán visibles por encima del JFrame. No se podrán ir "detrás" de él.</p></h7>                      
                          <div><h7 class="card-text">Si además, en el constructor del JDialog ponemos a true el flag que indica que es modal, además de pasarle una ventana padre, entonces el JDialog impedirá el acceso a las otras ventanas hasta que se cierre.</h7></div>
                          <div><h7 class="card-text">Ejemplo:</h7></div>
                          <p><img src="./img/jdialog_1.jpeg" class="img-fluid rounded-start" alt="..."></p>
                          <div><h7 class="card-text"><p>Obtenemos:</p></h7></div>
                          <p><img src="./img/jdialog_2.png" class="img-fluid rounded-start" alt="..."></p>
                          <div class="card-body">
                          <h5 class="card-title"><p>Contenido multimedia</p></h5>
                          <p align="center"><iframe width="560" height="315" src="https://www.youtube.com/embed/iaCN88iWT7U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
                        </div>                                                                              
                        </div>
                      </div>
                    </div>
              

