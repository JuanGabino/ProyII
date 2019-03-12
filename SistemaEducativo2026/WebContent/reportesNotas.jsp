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
 <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/selectEstilos.css">
 <script src="<%=request.getContextPath()%>/Requerimientos/Jquery/jquery-1.11.2.min.js"></script>
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.min.js"></script>
 
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

 <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/morris.js-0.5.1/morris.css">
 <script src="<%=request.getContextPath()%>/Requerimientos/morris.js-0.5.1/morris.min.js"></script>

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
<%
   String curso = request.getParameter("txtcurso");
   String idcurso = request.getParameter("txtIdCurso");
   int    num = 1;

%>    
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
      <br>
      <br>
      <a href="index.jsp"><img src="Imagenes/notas.ico" height="40" width="50"><strong>Regresar</strong></a>
     </ul>
  
    </section>
   </div>
   
   <div class="col-md-9" id="contenido">
    	<div class="panel panel-default" id="divAlumnos">
    
     		<div class="panel-heading" style="background-color: #3E7BC0;">
	  			<h4 style="color: white;"><img src="Imagenes/lista.png" height="40" width="50"><strong>LISTA DE ALUMNOS</strong></h4>
   	 		</div>
   	 
   	 		<div class="panel-body">
   	   			<div class="row">
   	   				<div class="col-md-6">
       				   <h4><strong>Curso:</strong></h4> 
	   	 			   <input type="text" id="txtcurso" class="form-control" value="<%out.print(curso); %>"name="txtcurso" disabled>
	   	 			   <input type="hidden" id="txtIdcurso" class="form-control" value="<%out.print(idcurso); %>"name="txtIdcurso" disabled>
	   	 		 	</div>
	   	 		 	<div class="col-md-6">
           				<h4><strong>Seccion:</strong></h4>
           				<select class="form-control selectSeccion" id="selectSeccion">
		   					<option value="" selected disabled hidden>--Seleccionar--</option>
	       				</select><br>
	       				<input type="hidden" id="txtdni" name="txtdni" value="<% out.println(session.getAttribute("dni"));  %>" >
	     			</div>
       			</div>
       			<br>
       			<div class="row">
       			 <div class="col-md-6">
       			 	<h4><strong>Periodo: </strong></h4>
	   	 		 	<select class="form-control selectPeriodo" id="selectPeriodo">
	   	 		 			<option value="" selected disabled hidden>--Seleccionar--</option>
	   	 		 	</select>
       			 </div>
       			 <div class="col-md-6">
       			 	<h4><strong>Año: </strong></h4>
	   	 		 	<select class="form-control selectAnio" id="selectAnio">
	   	 		 	 			<option value="" selected disabled hidden>--Seleccionar--</option>
	   	 		 	</select>
       			 </div>
       			</div>
       			<br><br>
       			<div class="row">
       				<button class="btn btn-success btn-lg" type="button" id="btnBuscar" name="btnBuscar" style="margin-left: 20px;"><strong>BUSCAR REPORTES</strong></button>
       			</div>
   	       </div>
       </div>
       <div class="panel panel-default">
       		<div class="panel-heading" style="background-color: #3E7BC0;">
	  			<h4 style="color: white;"><img src="Imagenes/rendimiento.png" height="40" width="50"><strong>Rendimiento de Alumno por Curso</strong></h4>
   	 		</div>
   	 		<div class="panel-body">
   	 			<div class="row" id="divAlumnoRendimiento">
               		<div class="row">
               			<div class="col-md-8">
               				<div id="myfirstchart" style="height: 250px;">
               					
               				
               				
               				</div>
               			</div>
               			<div class="col-md-4">
               			    <br>
               				<table id="Table" class="table" style="margin: 0 auto;">
            					<thead style="border-bottom: solid 5px #0F362D; color: white;">
             						<tr>
              				  			<th><center>Nombre</center></th>
              							<th><center>Apellido Paterno</center></th>
              							<th><center>Apellido Materno</center></th>
              							<th></th>
             						</tr>
            					</thead>
            
		            			<tbody id="tbl_alumnoRendimiento"> 
    	         
        	    				</tbody>
           		        	</table>
               			</div>
               		</div>
                </div>
   	 		</div>
       </div>
       <div class="panel panel-default">
       		<div class="panel-heading" style="background-color: #3E7BC0;">
	  			<h4 style="color: white;"><img src="Imagenes/destacados.png" height="40" width="50"><strong>Alumnos Destacados del Curso</strong></h4>
   	 		</div>
   	 		<div class="panel-body">
   	 			<div class="row" id="divNotasMaximas">
               		 <br><br>
               		 <div class="container-fluid">
               			<table id="Table" class="table">
            				<thead style="background-color: #213758;  border-bottom: solid 5px #0F362D; color: white;">
             					<tr>
              				  		<th><center>Nombre</center></th>
              						<th><center>Apellido Paterno</center></th>
              						<th><center>Apellido Materno</center></th>
              						<th><center>PROMEDIO FINAL</center></th>
              						<th></th>
             					</tr>
            				</thead>
            
		            		<tbody id="tbl_alumno"> 
    	         
        	    			</tbody>
           		        </table>
           		     </div>
                </div>
   	 		</div>
       </div>
       <div class="panel panel-default">
       		<div class="panel-heading" style="background-color: #3E7BC0;">
	  			<h4 style="color: white;"><img src="Imagenes/bajo.png" height="40" width="50"><strong>Alumnos con Notas mas Bajas del Curso</strong></h4>
   	 		</div>
   	 		<div class="panel-body">
   	 			<div class="container-fluid">
               		 <table id="Table" class="table">
               		    	<thead style="background-color: #213758;  border-bottom: solid 5px #0F362D; color: white;">
             						<tr>
              				  			<th><center>Nombre</center></th>
              							<th><center>Apellido Paterno</center></th>
              							<th><center>Apellido Materno</center></th>
              							<th><center>Promedio Final</center></th>
              							<th></th>
             						</tr>
            				 </thead>
            
		            		<tbody id="tbl_alumnoMinimas"> 
    	         
        	    			</tbody>
               		 </table>
               	 </div>
   	 		</div>
       </div>
       <div class="row">
       		<div class="col-md-7">
       			<div class="panel panel-default">
       					<div class="panel-heading" style="background-color: #3E7BC0;">
	  						<h4 style="color: white;"><img src="Imagenes/asistencia.png" height="40" width="50"><strong>Alumnos con mayor Tardanza o Faltas del Curso</strong></h4>
   	 					</div>
   	 					<div class="panel-body">
   	 					  <div class="container-fluid">
               		    	<table id="Table" class="table">
               		    		<thead style="background-color: #213758;  border-bottom: solid 5px #0F362D; color: white;">
             						<tr>
              				  			<th><center>Nombre</center></th>
              							<th><center>Apellido Paterno</center></th>
              							<th><center>Apellido Materno</center></th>
              							<th><center>Cantidad</center></th>
              							<th><center>Estado</center></th>
             						</tr>
            					</thead>
            
		            			<tbody id="tbl_tardanzaFalta"> 
    	         
        	    				</tbody>
               		    	</table>
               			  </div>
   	 					</div>
   	 			</div>
       		</div>
       		<div class="col-md-5">
       			<div class="panel panel-default">
       					<div class="panel-heading" style="background-color: #3E7BC0;">
	  						<h4 style="color: white;"><img src="Imagenes/porcentaje.png" height="40" width="50"><strong>Alumnos Aprobados y Desaprobados </strong></h4>
   	 					</div>
   	 					<div class="panel-body">
   	 					    <br>
   	 					    <table id="Table" class="table">
               		    		<thead>
             						<tr>
              				  			<th><center>Aprobados</center></th>
              							<th><center>Desaprobados</center></th>
              							<th><center>Total</center></th>
             						</tr>
            					</thead>
            
		            			<tbody id="tbl_alumnosClase"> 
    	         
        	    				</tbody>
               		    	</table>
               		    	<br><br>
   	 						<table id="Table" class="table">
               		    		<thead>
             						<tr>
              				  			<th><center>Aprobados</center></th>
              							<th><center>Desaprobados</center></th>
              							<th><center>Total</center></th>
             						</tr>
            					</thead>
            
		            			<tbody id="tbl_porcentaje"> 
    	         
        	    				</tbody>
               		    	</table>
   	 					</div>
   	 			</div>
       		</div>
       </div>
   </div>
  </div> 
</div>  
<script type="text/javascript">
$(document).ready(function(){
	
	var numdni = $("#txtdni").val();
	$.ajax({
		
		type: 'POST',
	    url:  '/SistemaEducativo2026/ListarSeccionDocente',
	    data: {
	    	
	    	dni : numdni
	    },
		success: function(data)
        { 
			$('#selectSeccion').empty();
        	$('#selectSeccion').append('<option value="'+""+'">--Seleccionar--</option>');
        	var var1=data.split(":");
        	for (var i=0;i<var1.length-1;i++) {
        		var valor=var1[i].split("-")[0];
			    var desc=var1[i].split("-")[1];
				    $('#selectSeccion').append('<option value="'+valor+'">'+desc+'</option>');
			}
			
        }
	});	
});
//////////////////////////////////////////////////////////////////////////////////////////////////////////////
$(document).ready(function(){
	
	$.ajax({
		
		type: 'POST',
	    url:  '/SistemaEducativo2026/ListarPeriodo',
		success: function(data)
        { 
			$('#selectPeriodo').empty();
        	$('#selectPeriodo').append('<option value="'+""+'">--Seleccionar--</option>');
        	var var1=data.split(":");
        	for (var i=0;i<var1.length-1;i++) {
        		var valor=var1[i].split("/")[0];
			    var desc=var1[i].split("/")[1];
				    $('#selectPeriodo').append('<option value="'+valor+'">'+desc+'</option>');
			}
			
        }
	});	
});
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
$(document).ready(function(){
	
	$.ajax({
		
		type: 'POST',
	    url:  '/SistemaEducativo2026/ListarAnio',
		success: function(data)
        { 
			$('#selectAnio').empty();
        	$('#selectAnio').append('<option value="'+""+'">--Seleccionar--</option>');
        	var var1=data.split(":");
        	for (var i=0;i<var1.length-1;i++) {
        		var valor=var1[i].split("/")[0];
			    var desc=var1[i].split("/")[1];
				    $('#selectAnio').append('<option value="'+valor+'">'+desc+'</option>');
			}
			
        }
	});	
});
///////////////////////////////////////////////////////////////////
$('#divAlumnos').on('click', '#btnBuscar', function(){
	
	var sec = $('#selectSeccion').val().trim();
	var cur = $('#txtIdcurso').val().trim();
	var per = $('#selectPeriodo').val().trim();
	var anio = $('#selectAnio').val().trim();
	var vacio = "";
	$('#Table tbody tr').remove();
	
	if(sec == vacio)
	{
		alert("Seleccione una Sección");
		
	}
	if(per == vacio)
	{
		alert("Seleccione un Periodo Escolar");
	}
	if(anio == vacio)
	{
		alert("Seleccione un Año Escolar");
	}
	else {
		AlumnosRendimiento();
		reporteMaximasNotas();
		reporteMinimasNotas();
	}	
	
});
//////////////////////////////////////
function reporteMaximasNotas() {
	var sec = $('#selectSeccion').val().trim();
	var cur = $('#txtIdcurso').val().trim();
	var per = $('#selectPeriodo').val().trim();
	var anio = $('#selectAnio').val().trim();
	$.ajax({
        type: 'POST',
        url: '/SistemaEducativo2026/listarCalificacionesMaximas',
        data : {
        	curso : cur,
			seccion : sec,
			periodo : per,
			anio : anio
			
		},
        success: function(data)
        {            	
        	var array = data.split("$");
			
			if(data == "_"){
				alert("No hay registro de Alumnos");
			}else{
				for (var i = 0; i < array.length - 1; i++) {
					var nombre = array[i].split("/")[0];
					var apellidopat = array[i].split("/")[1];
					var apellidomat = array[i].split("/")[2];
					var fina =  array[i].split("/")[3];
					

  				    $('#tbl_alumno').append("<tr>" +
	  				  		"<td><center>"+nombre+"</center></td>" +
	  				  		"<td><center>"+apellidopat+"</center></td>" +
	  				  	    "<td><center>"+apellidomat+"</center></td>" +
	  						"<td><center>"+fina+"</center></td>" +
	  				  		'<td><center><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" id="btnModificar">Modificar</button></center></td>'+
	  				  		"</tr>");
				}
			}
        }
	});
	
}
////////////////////////////////////////
function AlumnosRendimiento() {
	
	var sec = $('#selectSeccion').val().trim();
	$.ajax({
        type: 'POST',
        url: '/SistemaEducativo2026/ListarAlumnoxSeccion',
        data : {
			seccion : sec 
		},
        success: function(data)
        {            	
        	var array = data.split("$");
			
			if(data == "_"){
				alert("No hay registro de Alumnos");
			}else{
				for (var i = 0; i < array.length - 1; i++) {
					var id     = array[i].split("=")[0];
					var nombre = array[i].split("=")[1];
					var apellidopat = array[i].split("=")[2];
					var apellidomat = array[i].split("=")[3];
	
					

  				    $('#tbl_alumnoRendimiento').append("<tr>" +
	  				  		"<td><center>"+nombre+"</center></td>" +
	  				  		"<td><center>"+apellidopat+"</center></td>" +
	  				  	    "<td><center>"+apellidomat+"</center></td>" +
	  				  	    '<td><button class="btn btn-success">Buscar</button></td>' +
	  				  		"</tr>");
				}
			}
        }
	});
}
//////////////////////////////////////////////////////////////
function reporteMinimasNotas() {
	var sec = $('#selectSeccion').val().trim();
	var cur = $('#txtIdcurso').val().trim();
	var per = $('#selectPeriodo').val().trim();
	var anio = $('#selectAnio').val().trim();
	$.ajax({
        type: 'POST',
        url: '/SistemaEducativo2026/listarCalificacionesMinimas',
        data : {
        	curso : cur,
			seccion : sec,
			periodo : per,
			anio : anio
			
		},
        success: function(data)
        {            	
        	var array = data.split("$");
			
			if(data == "_"){
				alert("No hay registro de Alumnos");
			}else{
				for (var i = 0; i < array.length - 1; i++) {
					var nombre = array[i].split("/")[0];
					var apellidopat = array[i].split("/")[1];
					var apellidomat = array[i].split("/")[2];
					var fina =  array[i].split("/")[3];
					

  				    $('#tbl_alumnoMinimas').append("<tr>" +
	  				  		"<td><center>"+nombre+"</center></td>" +
	  				  		"<td><center>"+apellidopat+"</center></td>" +
	  				  	    "<td><center>"+apellidomat+"</center></td>" +
	  						"<td><center>"+fina+"</center></td>" +
	  				  		'<td><center><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" id="btnModificar">Modificar</button></center></td>'+
	  				  		"</tr>");
				}
			}
        }
	});
	
}
</script>
<script src="<%=request.getContextPath()%>/JS/morrisGraficas.js"></script>
</body>
</html>
