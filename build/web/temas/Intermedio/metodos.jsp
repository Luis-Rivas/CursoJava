<%-- 
    Document   : metodos
    Created on : 12-02-2021, 04:07:35 PM
    Author     : SALAZAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="card mb-3 caja-contenedor3">
    <div class="row g-0">
        <div class="col-md-12">
            <div class="card-body"> 
                <h7 class="card-text"><p>Los métodos son subrutinas que manipulan los datos definidos por la clase y, en muchos casos, brindan acceso a esos datos. En la mayoría de los casos, otras partes de tu programa interactuarán con una clase a través de sus métodos. Un método contiene una o más declaraciones. En un código Java bien escrito, cada método realiza solo una tarea. Cada método tiene un nombre, y es este el que se usa para llamar al método. En general, puede dar el nombre que desee a un método cualquiera. Sin embargo, recuerde que main() está reservado para el método que comienza ejecución de su programa. Además, no use las palabras clave de Java para nombres de métodos.</p></h7>
                <h7 class="card-text"><p>También llamado función en otros lenguajes de programación, los métodos son los encargados de dar funcionalidad al objeto y permitir que el mismo pueda invocar o mandar mensajes a otros objetos. Los métodos cumplen con distintas tareas como puede ser la tarea de constructor, el acceso a los atributos miembros de clase del objeto declarados como privados (encapsulamiento) o tareas de distinto índole. Cualquier método tiene esta estructura básica:</p></h7>
                <div class="text-center">
                    <img src="./img/metodo.png" class="img-fluid rounded-start" alt="Partes de un metodo en Java">                                                                                  
                </div>
                <h7 class="card-text"><p>Un claro ejemplo ya conocido es el método main(), donde vemos que el tipo de modificador es: public,  el tipo de dato de retorno es: void (no devuelve nada), el nombre del método es: main y tiene un solo argumento que es un array tipo String. Los métodos pueden tener uno, varios o ningún argumento o parámetro según convenga y pueden devolver algún tipo de dato u objeto o no devolver nada (void). La nomenclatura de los métodos es prácticamente igual al de cualquier variable, es decir con la primera letra en minúscula y si es compuesto, ejemplo: «crearObjeto», la primera letra de la segunda y siguientes palabras estarían en mayúscula, ejemplo: «borrarObjetoMarca». Otra cuestión a tener en cuenta es que los nombres de los métodos deben reflejar acciones o verbos.</p></h7>               
            </div>
        </div>
    </div>
</div>

<div class="card mb-3 caja-contenedor3">
    <div class="row g-0">
        <div class="col-md-12">
            <div class="card-body"> 
                <h5 class="card-title"><p>Método constructor de una clase</p></h5>
                <h7 class="card-text"><p>Un método constructor es el encargado de crear el objeto conforme al molde que le proporciona la clase. Un método constructor no devuelve ningún valor y se nombra con el mismo nombre que tiene la clase. De forma implícita java proporciona un constructor similar (sin parámetros) en cualquier clase que no lo tenga, pero lo correcto es crear uno de forma explícita que evite posibles errores de compilación.</p></h7>                
                <h5 class="card-title"><p>Sobrecarga de métodos</p></h5>
                <h7 class="card-text"><p>Java no permite que se creen dos métodos iguales, (con mismo nombre y parámetros), pero si permite crear dos o más métodos con mismo nombre y distinto número o tipo de argumentos.</p></h7> 
            </div>
        </div>
    </div>
</div>

<div class="card mb-3 caja-contenedor3">
    <div class="row g-0">
        <div class="col-md-12">
            <div class="card-body">
                <h5 class="card-title"><p>Contenido multimedia</p></h5>
                <p align="center"><iframe width="560" height="315" src="https://www.youtube.com/embed/hDPSRbXBi8U" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
            </div>
        </div>
    </div>
</div>