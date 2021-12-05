<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp" %>
        <title>Registro de usuario</title>
    </head>
    <body>
        <div class="sticky-top" style="border-bottom: solid #CECECE 1px; background-color:white;">
                <ul class="nav nav-pills nav-fill">
                    <li class="nav-item"><a class="nav-link active" href="index.jsp">VOLVER AL INICIO</a></li>
                    <li class="nav-item"><a class="nav-link" href="NivelesDificultad.jsp"></a></li>
                    <li class="nav-item"><a class="nav-link" href="./quienes_somos.html"></a></li>
                    <li class="nav-item"><a class="nav-link" href="./descripcion.html"></a></li>
                    <li class="nav-item"><a class="nav-link" href="./Login.jsp">LOGIN</a></li>
                </ul>
            </div>
        <div class="form-registro">
            <h1 style="text-align: center;">Registro de usuario</h1>
            <form action="registro" class="form-control needs-validation" style="" oninput='up2.setCustomValidity(up2.value != up.value ? "Las contraseñas no coinciden" : "")'>
                <div class="col-md-10">
                  <label for="validationCustom01" class="form-label">Nombre</label>
                  <input type="text" class="form-control" id="nombre" name="nombre" required>
                  <div class="valid-feedback">
                    Looks good!
                  </div>
                </div>
                <div class="col-md-10">
                  <label for="validationCustom02" class="form-label">Apellido</label>
                  <input type="text" class="form-control" id="apellido" name="apellido" required>
                  <div class="valid-feedback">
                    Looks good!
                  </div>
                </div>
                <div class="col-md-11">
                  <label for="validationCustomUsername" class="form-label">Email</label>
                  <div class="input-group has-validation">
                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                    <input type="text" class="form-control" id="correo" name="correo" aria-describedby="inputGroupPrepend" required>
                    <div class="invalid-feedback">
                      Por favor, ingrese un correo electrónico.
                    </div>
                  </div>
                </div>
                  <div class="col-md-8">
                      <label for="validationCustomUsername" class="form-label">Contraseña</label>
                      <div class="input-group has-validation">
                          <input type="password" class="form-control" id="password1" name="up" aria-describedby="inputGroupPrepend" required>
                          <div class="invalid-feedback">
                              Ingrese una contraseña.
                          </div>
                      </div>
                  </div>
                  <div class="col-md-8">
                      <label for="validationCustomUsername" class="form-label">Confirmar contraseña</label>
                      <div class="input-group has-validation">
                          <input type="password" class="form-control" id="password2" name=up2 aria-describedby="inputGroupPrepend" required>
                          <div class="invalid-feedback">
                              Ingrese una contraseña.
                          </div>
                      </div>
                  </div><br>
                <div class="col-12">
                  <button class="btn btn-primary" type="submit">Registrar</button>
                </div>
            </form>
        </div>
        <%@include file="Footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
