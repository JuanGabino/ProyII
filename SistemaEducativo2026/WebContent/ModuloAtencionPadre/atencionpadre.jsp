<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <title>Atencion Padre de Familia</title>
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
    <h1><strong>Módulo de Atención</strong></h1>
    <h2><strong>al Padre de Familia</strong></h2> 
   </div>
  </header>
  <nav class="navbar navbar-inverse" style="background-color: #40494F;">
  	<div class="container-fluid">
    	<div class="navbar-header">
      		<h4 style="color: white;"><img src="../Imagenes/insignia2026.png" width="45" height="45"><strong>Colegio 2026 San Diego</strong></h4>
    	</div>
    	<ul class="nav navbar-nav navbar-right">
      		<li><h4 style="color: white;"><img src="../Imagenes/profe.png" width="45" height="45">&nbsp;<strong>Bienvenido &nbsp;${sessionScope.profile} &nbsp;
      		${sessionScope.username}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></h4></li>
      		<li><h4 style="color: white;"><img src="../Imagenes/logout.png" width="45" height="45"><a href="#" style="text-decoration: none; color: white;"><strong>Cerrar Sesión</strong></a></h4></li>
    	</ul>
  	</div>
  </nav>
<div id="modulos" class="container-row">  
  <div class="container-row">
   <div class="col-md-4">
    <section id="menu">	
   
     <ul>
      <a href="seccionComunicado.jsp" ><img src="../Imagenes/registro.ico" height="40" width="50"><strong>Comunicado</strong></a>
      <a href="seccionComentario.jsp"><img src="../Imagenes/observacion.png" height="40" width="50"><strong>Observaciones</strong></a>
      <a href="comentarioObservaciones.jsp"><img src="../Imagenes/listaComunicado.png" height="40" width="50"><strong>Lista de Comunicados</strong></a>
      <a href="listaObservaciones.jsp"><img src="../Imagenes/listaObservacion.png" height="40" width="50"><strong>Lista de Observaciones</strong></a>
      <br>
      <br>
      <a href="<%=request.getContextPath()%>/index.jsp"><img src="../Imagenes/notas.ico" height="40" width="50"><strong>Regresar</strong></a>
     </ul>
  
    </section>
   </div>
   
   <div class="col-md-8" id="contenido">
    
   </div>
  </div>
</div> 
</body>
</html>