<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <title>Registro de Notas</title>
 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/font-awesome.min.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/fonticons.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/encabezado.css">
 <script src="<%=request.getContextPath()%>/Requerimientos/Jquery/jquery-1.11.2.min.js"></script>
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.min.js"></script>
 
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
</head>
<body>

  <header id="header" class="header">
   <div class="container">
    <h1><strong>Sistema Educativo 2026</strong></h1>
    <h2>Bienvenido ${sessionScope.profile} <strong>${sessionScope.username}</strong></h2>
    <h3>MÓDULO DE REGISTRO DE NOTAS</h3>
   </div>
  </header>
  <br>
    
<div id="modulos" class="container-row">  
  <div class="container-row">
  		<img src="Imagenes/2026.jpg" id="logo" width="60" height="60">
  		<br>
  		<h3 style="margin-top:10px;"><strong>COLEGIO SAN DIEGO 2026</strong></h3>
  </div>
  <br><br> 
  
  <div class="container-row">
  
   <div class="col-md-3">
    <section id="menu">
   
     <ul>
      <a href="asignaturasDocente.jsp"><img src="Imagenes/registro.ico" height="40" width="50"><strong>Registro de Notas</strong></a>
      <a href="asignaturasClases.jsp"><img src="Imagenes/libro.png" height="40" width="50"><strong>Gestión de Clases</strong></a>
      <a href="reportesCursos.jsp" ><img src="Imagenes/report.png" height="40" width="50"><strong>Reportes</strong></a>
      <br><br>
      <a href="index.jsp"><img src="Imagenes/notas.ico" height="40" width="50"><strong>Regresar</strong></a>
     </ul>
  
    </section>
   </div>
   
   <div class="col-md-9" id="contenido">
    
   </div>
   
  </div>
</div>


</body>
</html>