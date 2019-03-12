<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="Util.Conexion"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <title>Sistema Educativo 2026 - Index</title>
 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/bootstrap/bootstrap.min.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/font-awesome.min.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/fonticons.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/estiloIndex.css">
 <script src="<%=request.getContextPath()%>/Requerimientos/Jquery/jquery-1.11.2.min.js"></script>
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.min.js"></script>
</head>
<body>

  <%String idUsername = (String) session.getAttribute("idUsername"); %>
  <%Integer perfil = (Integer) session.getAttribute("perfil"); %>
  
  <header id="header" class="header">
   <div class="container-fluid">
    <%if(perfil == 2) { %>
    <h1><strong>Bienvenido al Sistema Educativo 2026</strong></h1>
    <h2>Bienvenido ${sessionScope.profile} <strong>${sessionScope.username}</strong>, al sistema de optimización del trabajo Docente</h2>
    <br>
    <h3><strong><a href="#modulos">Empezar</a></strong></h3>
    <%} %>
    <%if(perfil == 3) {  %>
    <h1><strong>Bienvenido al Sistema Educativo 2026</strong></h1>
   	<h2>Bienvenido ${sessionScope.profile} <strong>${sessionScope.username}</strong>, al sistema de seguimiento y control del estudiante</h2>
    <br>
    <h3><strong><a href="#modulos">Empezar</a></strong></h3>
    <%} %>
   </div>
  </header>
  
  <br>
  <div id="modulos" class="container-fluid">
  	<div class="container-row">
  		<img src="Imagenes/2026.jpg" id="logo" width="60" height="60">
  		<br>
  		<h3 style="margin-top:10px;"><strong>COLEGIO SAN DIEGO 2026</strong></h3>
  	</div>
  	<br><br><br>
  
  <!-- DOCENTE -->
  <%if(perfil == 2) { %>
  <div class="container-row">
   <div class="col-md-6" id="atencion">
    <center><a href="<%=request.getContextPath()%>/ModuloAtencionPadre/atencionpadre.jsp"><img src="Imagenes/atencion.jpg"  height="300" width="500" id="img1"></a></center>
    <h2><strong>ATENCION PADRE DE FAMILIA</strong></h2>
   </div>
   <div class="col-md-6">
    <center><img src="Imagenes/reforzamiento.jpg"  height="300" width="500" id="img1"></center>
    <h2><strong>REFORZAMIENTO ACADEMICO</strong></h2>
   </div> 
  </div>
  <div class="container-row">
   <div class="col-md-6" id="atencion">
    <center><img src="Imagenes/trabajocolegiado.jpg"  height="300" width="500" id="img1"></center>
    <h2><strong>TRABAJO COLEGIADO</strong></h2>
   </div>
   <div class="col-md-6">
    <center><a href="<%=request.getContextPath()%>/registroNotas.jsp"><img src="Imagenes/registroNotas.jpg"  height="300" width="500" id="img1"></a></center>
    <h2><strong>REGISTRO/REPORTES DE NOTAS</strong></h2>
   </div>
  </div>
  <%} %>

  <%if(perfil == 3){ %>
  <!-- Barra de Menu para Padres -->
  <div class="container-row">
   <div class="col-md-4">
    <section id="menu">
   
     <ul>
      <a href="#"><img src="Imagenes/registro.ico" height="40" width="50"><strong>Asistencia</strong></a>
      <a href="#"><img src="Imagenes/chat.ico" height="40" width="50"><strong>Chats</strong></a>
      <a href="#"><img src="Imagenes/notas.ico" height="40" width="50"><strong>Notas</strong></a>
      <a href="#"><img src="Imagenes/calendario.ico" height="40" width="50"><strong>Calendario</strong></a>
      <a href="#"><img src="Imagenes/observar.ico" height="40" width="50"><strong>Observaciones</strong></a>
      <a href="#"><img src="Imagenes/tarea.ico" height="40" width="50"><strong>Tarea</strong></a>
     </ul>
  
    </section>
   </div>
   <div class="col-md-8">
     <h3><strong>Elija el nombre del alumno que desee buscar informacion: </strong></h3>
     <br>
     <%Conexion con = new Conexion(); 
      ResultSet rs = con.executeQuery("select a.idAlumno, a.nombre, a.apellidoPat, a.apellidoMat from usuario u inner join alumnos a on u.idUsuario = a.codPadre where idUsuario ='" + idUsername + "'"); %>
     <div class="select" id="verAlumno">
     <form id ="form1" action="<%=request.getContextPath()%>/ServletFicha" method="post">
      <table id="myTable" class="table" style="width: 900px;">
             <thead style="background-color: #246355;  border-bottom: solid 5px #0F362D; color: white;">
					<tr>
						<th style="text-align:center"></th>
						<th style="text-align:center">IDALUMNO</th>
						<th style="text-align:center">NOMBRE</th>
						<th style="text-align:center">APELLIDO PATERNO</th>
						<th style="text-align:center">APELLIDO MATERNO</th>
						<th></th>
    
					</tr>
			</thead>
			<%while(rs.next()){%> 
			<tbody id="tbl">
				<tr>
				 <td style="text-align:center"><img src="https://img.icons8.com/metro/26/000000/administrator-male.png"></td>
				 <td style="text-align:center; font-size: 20px;"><%=rs.getString(1)%></td>
				 <td id="nombre" style="text-align:center; font-size: 20px;"><%=rs.getString(2)%></td>
				 <td id="apellidoPat" style="text-align:center; font-size: 20px;"><%=rs.getString(3)%></td>
				 <td id="apellidoMat" style="text-align:center; font-size: 20px;"><%=rs.getString(4)%></td>
				 <td style="text-align:center"><button id="btnVer"  type="submit" class="btn btn-primary">Ver Alumno</button></td>
				</tr>				       
			</tbody>
			<%}%>
	  </table>
	  <input type="hidden" id="txtcod" name="txtcod" value="" >
	 </form>
     </div>
     <br>
    </div>
  </div>
  <%} %>
  </div>
  <br><br><br><br>
  <footer class="text-center footer-style">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 footer-col">
                <h3>Dirección</h3>
                <p>
                    Urb. San Diego de Alcala- San Martín de Porres <br />
                    Av.San Diego de Alcala  2120
                </p>
            </div>
            <div class="col-md-4 footer-col">
                <h3>Mis redes</h3>
                <ul class="list-inline">
                    <li>
                        <a  target="_blank" href="#" class="btn-social btn-outline"><img src="Imagenes/facebook.png"  width="40" height="40"></a>
                    </li>
                    <li>
                        <a  target="_blank" href="#" class="btn-social btn-outline"><img src="Imagenes/youtube.png"  width="40" height="40"></a>
                    </li>
                    <li>
                        <a  target="_blank" href="#" class="btn-social btn-outline"><img src="Imagenes/googleplus.png"  width="40" height="40"></a>
                    </li>
                    <li>
                        <a  target="_blank" href="#" class="btn-social btn-outline"><img src="Imagenes/linkedi.png" width="40" height="40"></a>
                    </li>
                </ul>
            </div>
            <div class="col-md-4 footer-col">
                <h3>Programadores</h3>
                <p>Fernando Saldaña Huaman</p><br>
                <p>Juan Antonio Gabino Huaringa</p>
            </div>
        </div>
    </div>
   </footer>
<script>
$('#verAlumno').on('click', '#btnVer', function(){
	
	var nombre = $(this).closest('tr').find("td").filter(":eq(2)").text();
	document.getElementById("txtcod").value = nombre;
});
</script>

<script type="text/javascript">
$(document).ready(function() {
	  $('a[href^="#"]').click(function() {
	    var destino = $(this.hash); //this.hash lee el atributo href de este
	    $('html, body').animate({ scrollTop: destino.offset().top }, 700); //Llega a su destino con el tiempo deseado
	    return false;
	  });
	});
</script>
</body>
</html>