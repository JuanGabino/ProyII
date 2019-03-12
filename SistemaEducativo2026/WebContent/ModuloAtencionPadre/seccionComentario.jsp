<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <title>Atencion Padre de Familia - Comunicados</title>
 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/font-awesome.min.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/fonticons.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/encabezado.css">
 <script src="<%=request.getContextPath()%>/Requerimientos/Jquery/jquery-1.11.2.min.js"></script>
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.min.js"></script>
 
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
 <script src="<%=request.getContextPath()%>/Requerimientos/Jquery/FileSaver.js"></script> 
 <script src="https://www.jqueryscript.net/demo/Export-Html-To-Word-Document-With-Images-Using-jQuery-Word-Export-Plugin/jquery.wordexport.js"></script>

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
  <br>
  <div class="container-row">
  
   <div class="col-md-3">
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
   
   <div class="col-md-9" id="contenido">
    	<div class="row">
  				<div class="panel panel-default">
    						<div class="panel-heading">
	  							<h4><strong><img src="../Imagenes/lista.png" height="40" width="50">LISTA DE ALUMNOS</strong></h4>
   							</div>
   							<div class="panel-body">
    							<form name="f1" action="" >
    
         						<div class="row">
          	 						<div class="col-md-4">
         								<h4><strong>Seccion:</strong></h4>
         								<select class="form-control selectSeccion" id="selectSeccion">
		   										<option value="" selected disabled hidden>--Seleccionar--</option>
	     								</select><br>
	     								<input type="hidden" id="txtdni" name="txtdni" value="<% out.println(session.getAttribute("dni"));  %>" >
	   	  			 				</div>
	   	  			 				<div class="col-md-4">
         								<h4><strong>Curso:</strong></h4>
         								<select class="form-control selectCurso" id="selectCurso">
		   										<option value="" selected disabled hidden>--Seleccionar--</option>
	     								</select><br>
	   	  			 				</div>
	   	   							<div class="col-md-4" id="divBuscarAlumnos">
	    								<br><br>
	    								<button type="button" class="btn btn-primary" id="btnBuscar"> Buscar </button>
	   	   							</div>
         						</div>
         						<br>
         					 <br>
         						<div class="row table-responsive" id="divTablaAlumno">
           									<table id="Table" class="table">
            									<thead style="background-color: #213758;  border-bottom: solid 5px #0F362D; color: white;">
             										<tr>
              			  								<th><center>IDALUMNO</center></th>
              			  								<th><center>NOMBRE</center></th>
              			  								<th><center>APELLIDO PATERNO</center></th>
              			  								<th><center>APELLIDO MATERNO</center></th>
                          								<th style="text-align: center;">NIVEL DE PROGRESO</th>
                          								<th></th>
                          								<th></th>
                        							</tr>
            									</thead>
            
            									<tbody id="tbl_alumno"> 
             
            									</tbody>
           	   								</table>
      	 						</div>         
    					        </form>
                             </div>
                </div>
        </div>
    	
   </div>
  </div>
</div> 
								<!-- MODAL -->
                				<div id="myModal" class="modal fade" role="dialog">
 					 					<div class="modal-dialog">

   					  						<!-- Modal content-->
    										<div class="modal-content">
      												<div class="modal-header" style="background-color: #213758;">
        												<button type="button" class="close" data-dismiss="modal" >&times;</button>
        												<h4 class="modal-title" style="color: white;"><strong>GENERAR COMENTARIO y/u OBSERVACIONES</strong></h4>
      												</div>
      												<div class="modal-body"  id="exportContent">
        					
      													<div class="row">
      			 											<div class="col-md-6">
        														<h5><strong>Codigo Alumno:</strong></h5>
        														<input type="text" class="form-control" id="idAlum" name="idAlum" value="" disabled>
       														</div>
       													</div>
       													<br>
       													<div class="row">
       														<div class="col-md-6">
        														<h5><strong>CODIGO DOCENTE</strong></h5>
        														<input type="text"  class="form-control"  value="<% out.println(session.getAttribute("dni"));  %>" disabled>
       														</div>
       														<div class="col-md-6">
																<h5><strong>FECHA</strong></h5>
      								   							<input type="text"  class="form-control"  name="fecha" id="fecha" value="" disabled>
       														</div>
      													</div>
      													<br>
      													<br>
      							    					<div class="container-row">
      							       						<div class="negrita">
                                            					<textarea name="comment" rows=5 cols=70 id="texto" name="texto" >Introduzca aquí sus Observaciones</textarea>
        							   						</div>
      													</div>
      													<br>
      													<div class="row">
       														<div class="col-md-6">
        														<input name="btnEnviarObservacion" id="btnEnviarObservacion" type="button" class="btn btn-success form-control" value="ENVIAR OBSERVACIONES">
       														</div>
       														<div class="col-md-6">
        														<input type="button" class="btn btn-primary form-control" value="LIMPIAR CAMPOS">
       														</div>
      													</div>
      						                        </div>
      												<br>
      												<div class="modal-footer">
        												<button type="button" class="btn btn-default" data-dismiss="modal"><strong>Cerrar</strong></button>
     			 									</div>
    					                    </div>

  					                    </div>
			                    </div>
					            <!-- FIN MODAL -->
				
								<!-- MODAL 2 - PROGRESO -->
								<div id="myModal2" class="modal fade" role="dialog">
 										<div class="modal-dialog">

   					  						<!-- Modal content-->
    										<div class="modal-content">
      													<div class="modal-header" style="background-color: #213758;">
        														<button type="button" class="close" data-dismiss="modal" >&times;</button>
        														<h4 class="modal-title" style="color: white;"><strong>PROGRESO DEL CURSO POR ALUMNO</strong></h4>
      													</div>
      													<div class="modal-body"  id="exportContent">
        					
      														<div class="row">
      			 												<div class="col-md-4">
        															<h5><strong>Codigo Alumno:</strong></h5>
        															<input type="text" id="codAlum" name="codAlum" value="" disabled>
       															</div>
      														</div>
      														<div class="row">
      								    						<div class="col-md-4">
        															<h5><strong>Nombre:</strong></h5>
        															<input type="text" id="nombre" name="nombre" value="" disabled>
       															</div>
       															<div class="col-md-4">
        															<h5><strong>Apellido Paterno:</strong></h5>
        															<input type="text" id="apellidoPat" name="apellidoPat" value="" disabled>
       															</div>
       															<div class="col-md-4">
        															<h5><strong>Apellido Materno:</strong></h5>
        															<input type="text" id="apellidoMat" name="apellidoMat" value="" disabled>
       															</div>
      														</div>
      														<br>
      														<br>
      													</div>
      													<br>
      													<div class="modal-footer">
        														<button type="button" class="btn btn-default" data-dismiss="modal"><strong>Cerrar</strong></button>
     			 										</div>
    									    </div>

  					                    </div>
			                    </div>
			   		 			<!-- FIN MODAL 2 -->
<script type="text/javascript">
  var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
  var f=new Date();
	document.getElementById("fecha").value = f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear();
</script>
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
////////////////////////////////////////////////////////////
$(document).ready(function(){
	
	var numdni = $("#txtdni").val();
	$.ajax({
		
		type: 'POST',
	    url:  '/SistemaEducativo2026/ListarCursos',
	    data: {
	    	
	    	dni : numdni
	    },
		success: function(data)
        { 
			$('#selectCurso').empty();
        	$('#selectCurso').append('<option value="'+""+'">--Seleccionar--</option>');
        	var var1=data.split(":");
        	for (var i=0;i<var1.length-1;i++) {
        		var valor=var1[i].split("-")[0];
			    var desc=var1[i].split("-")[1];
				    $('#selectCurso').append('<option value="'+valor+'">'+desc+'</option>');
			}
			
        }
	});	
});
/////////////////////////////////////////////////////////////

$('#divBuscarAlumnos').on('click', '#btnBuscar', function(){
	
	var sec = $('#selectSeccion').val().trim();
	var cur = $('#selectCurso').val().trim();
	
	var vacio = "";
	$('#Table tbody tr').remove();
	
	if(sec == vacio)
	{
		alert("Seleccione una Sección");
	
	}
	if( cur == vacio){
		
		alert("Seleccione una Curso");
	}
	else {
		
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
	
					

  				    $('#tbl_alumno').append("<tr>" +
	  				  		"<td><center>"+id+"</center></td>" +
	  				  		"<td><center>"+nombre+"</center></td>" +
	  				  		"<td><center>"+apellidopat+"</center></td>" +
	  				  	    "<td><center>"+apellidomat+"</center></td>" +
	  				  	    '<td><center><meter low="25" high="75" optimum="100" value="75"></center></td>' +
	  				  		'<td><center><button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal2" id="btnProgreso">PROGRESO</button></center></td>'+
	  				  		'<td><center><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModal" id="btnObservaciones">OBSERVACIONES</button></center></td>'+
	  				  		"</tr>");
				}
			}
        }
	});
	}	
});
////////////////////////////////////////////
$('#divTablaAlumno').on('click', '#btnObservaciones', function(){
	
	var id ="";
    id=$(this).closest('tr').find("td").filter(":eq(0)").text();
    document.getElementById("idAlum").value = id;
});
//////////////////////////////////////////////////////////////////
$('#divTablaAlumno').on('click', '#btnProgreso', function(){
	
	var id ="";
	var nombre = "";
	var apellidoPat = "";
	var apellidoMat = "";
	
    id          = $(this).closest('tr').find("td").filter(":eq(0)").text();
    nombre      = $(this).closest('tr').find("td").filter(":eq(1)").text();
    apellidoPat = $(this).closest('tr').find("td").filter(":eq(2)").text();
    apellidoMat = $(this).closest('tr').find("td").filter(":eq(3)").text();
    
    document.getElementById("codAlum").value = id;
    document.getElementById("nombre").value = nombre;
    document.getElementById("apellidoPat").value = apellidoPat;
    document.getElementById("apellidoMat").value = apellidoMat;
	
	
});
/////////////////////////////////////////////////////////////////
$('#btnEnviarObservacion').on('click', function(){
	
	var linea = [];
	var item = {};
	
	item.alumno      = $('#idAlum').val().trim();
	item.texto       = $('#texto').val().trim();
	item.fecha       = $('#fecha').val().trim();
	item.selectSeccion = $('#selectSeccion').val();
	item.idcurso       = $('#selectCurso').val();
	item.txtdni        = $('#txtdni').val().trim();
	
	linea.push(item);
	
	var datosxlinea={};
	datosxlinea.linea = linea;
	
	var datatable = JSON.stringify(datosxlinea);
	console.log(datatable);
	
	if( $('#texto').val() != "" )
	{
	 $.ajax({
		
		type: 'POST',
		url: '<%=request.getContextPath()%>/RegistrarObservaciones',
		dataType: 'JSON',
		data: {
			objetojson:JSON.stringify(datosxlinea)
		},
		success: function(data){
			
			if(data == "1")
	    	 {
	    		 alert("Se registro la Observacion");
	    		 document.getElementById("texto").value = "";
	    	 }
	    	 else
	    	 {
	    		 alert("NO SE REGISTRO LA OBSERVACION");
	    	 }
		}
		
	 });
	 
	}
	else
	{
		alert("Escriba un mensaje de texto");
	}
		
});
////////////////////////////////////////////////////
</script>
</body>
</html>
