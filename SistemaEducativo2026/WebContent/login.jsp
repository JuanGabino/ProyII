<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <meta charset="utf-8">
 <title>Sistema Educativo 2026</title>
 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/bootstrap/bootstrap.min.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/font-awesome.min.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/fonticons.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/estiloLogin.css">
 
</head>
<body>

 <div id="contenedor">
  <center><img id="logo" src="Imagenes/2026.jpg" width="260" height="240" style="margin-top: 20px;"></center>
  <h2>Iniciar Sesión</h2>
  <form id ="form1" action="<%=request.getContextPath()%>/ServletLogin" method="post">
   <div class="input-group">
    <img src="https://img.icons8.com/metro/26/000000/administrator-male.png">
    <input type="text"  class="form-control" placeholder="Usuario" size="60" name="usuario">
   </div>
   <br>
   <div class="input-group">   
    <img src="https://img.icons8.com/metro/26/000000/password.png">
    <input type="password" class="form-control" placeholder="Contraseña" size="60" name="contrasena">
   </div>
   <br>
   <div class="row">
        <!-- /.col -->
        <div class="col-md-6">
        	<strong style="color:red;">${message}</strong>
          <button type="submit" class="btn btn-primary btn-block btn-flat" style="font-weight: bolder;">INGRESAR</button>
        </div>
        <div class="col-md-6">
          <button type="submit" class="btn btn-primary btn-block btn-flat" style="font-weight: bolder;">CAMBIAR CONTRASEÑA</button>
        </div>
        <!-- /.col -->
    </div>
    <br>
    <div class="row">
     <a href=""><strong>Olvide mi Contraseña</strong></a>
    </div>
  </form>
 </div>

</body>
</html>