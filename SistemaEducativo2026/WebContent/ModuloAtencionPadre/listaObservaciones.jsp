<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <title>Atencion Padre de Familia - Lista de Observaciones</title>
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
  <br>
<div id="modulos" class="container-row">  
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
    			<div class="panel-heading" style="background-color: #3E7BC0;">
	  				<h4 style="color: white;"><strong><img src="../Imagenes/lista.png" height="40" width="50">LISTA DE OBSERVACIONES</strong></h4>
   				</div>
   				<div class="panel-body">
   					<div class="row">
   						<div class="col-md-4">
   							<h4><strong>Seccion:</strong></h4>
         					<select class="form-control selectSeccion2" id="selectSeccion2">
		   						<option value="" selected disabled hidden>--Seleccionar--</option>
	     					</select>
   						</div>
   						<div class="col-md-4" id="divBuscarObservacion">
   							<br><br>
	    					<button type="button" class="btn btn-primary" id="btnBuscarObservacion"> Buscar Observaciones</button>
   						</div>
   						<div class="col-md-4">
   							<input type="hidden" id="txtdni" name="txtdni" value="<% out.println(session.getAttribute("dni"));  %>" >
   						</div>
   					</div>
   					<br><br>
   					<div class="table-responsive" id="divTableObservacion">		
   								<input class=form-control id=myInput type=text placeholder=Buscar..>
   								<br>
           						<table id="Table2" class="table">
            						<thead style="background-color: #213758;  color: white;">
             							<tr>
              								<th><center>IDOBSERVACION</center></th>
              								<th><center>DESCRIPCION</center></th>
              								<th><center>ALUMNO</center></th>
              								<th><center>SECCION</center></th>
              								<th><center>CURSO</center></th>
              								<th><center>FECHA</center></th>
              								<th></th>
             							</tr>
            						</thead>
            
            						<tbody id="tbl_alumnoObservaciones"> 
	              
            						</tbody>
           						</table>
      				</div>
   				</div>
    		</div>
    	</div>
   </div>
  </div>
</div> 
								<!-- MODAL ELIMINAR OBSERVACION -->
                				<div id="myModal3" class="modal fade" role="dialog">
 					 					<div class="modal-dialog">

   					  						<!-- Modal content-->
    										<div class="modal-content">
      												<div class="modal-header" style="background-color: #213758;">
        												<button type="button" class="close" data-dismiss="modal" >&times;</button>
        												<h4 class="modal-title" style="color: white;"><strong>ELIMINAR OBSERVACION</strong></h4>
      												</div>
      												<div class="modal-body">
        					
      													<div class="row">
       														<div class="col-md-6">
        														<h5><strong>OBSERVACION: </strong></h5>
        														<input type="text"  class="form-control"  name="txtobs"   id="txtobs">
       														</div>
      													</div>
      													<br>
      													<div class="row">
        														<input name="btnEliminarObs" id="btnEliminarObs" type="button" class="btn btn-danger form-control" value="ELIMINAR OBSERVACION">
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
<script type="text/javascript">
$(document).ready(function(){
	  $("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#tbl_alumnoObservaciones tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});
///////////////////////////////////////////////////
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
			$('#selectSeccion2').empty();
        	$('#selectSeccion2').append('<option value="'+""+'">--Seleccionar--</option>');
        	var var1=data.split(":");
        	for (var i=0;i<var1.length-1;i++) {
        		var valor=var1[i].split("-")[0];
			    var desc=var1[i].split("-")[1];
				    $('#selectSeccion2').append('<option value="'+valor+'">'+desc+'</option>');
			}
			
        }
	});	
});
////////////////////////////////////////////////////////////////////
$('#divBuscarObservacion').on('click', '#btnBuscarObservacion', function(){
	
	var sec = $('#selectSeccion2').val().trim();
	var dni = $('#txtdni').val().trim();
	
	var vacio = "";
	$('#Table2 tbody tr').remove();
	
	if(sec == vacio)
	{
		alert("Seleccione una Sección");
	
	}
	else {
		
	$.ajax({
        type: 'POST',
        url: '/SistemaEducativo2026/BuscarObservacion',
        data : {
        	dni : dni,
			seccion : sec 
		},
        success: function(data)
        {            	
        	var array = data.split("$");
			
			if(data == null){
				alert("No hay registro de Observaciones");
			}else{
				for (var i = 0; i < array.length - 1; i++) {
					var id     = array[i].split("/")[0];
					var descripcion = array[i].split("/")[1];
					var nombre = array[i].split("/")[2];
					var apellidoPat = array[i].split("/")[3];
					var apellidoMat = array[i].split("/")[4];
					var seccion = array[i].split("/")[5];
					var curso   = array[i].split("/")[6];
					var fecha = array[i].split("/")[7];
	
					

  				    $('#tbl_alumnoObservaciones').append("<tr>" +
	  				  		"<td><center>"+id+"</center></td>" +
	  				  		"<td><center>"+descripcion+"</center></td>" +
	  				  		"<td><center>"+nombre+ " " + apellidoPat + " " + apellidoMat + "</center></td>" +
	  				  		"<td><center>"+seccion+"</center></td>" +
	  				  		"<td><center>"+curso+"</center></td>" +
	  				  		"<td><center>"+fecha+"</center></td>" +
	  				  		'<td><center><button class="btn btn-danger" id="btnEliminarObservacion" name="btnEliminarObservacion" data-toggle="modal" data-target="#myModal3">ELIMINAR</button></center></td>'+
	  				  		"</tr>");
				}
			}
        }
	});
	}	
});
///////////////////////////////////////////////////////////////
$('#divTableObservacion').on('click', '#btnEliminarObservacion', function(){
	
	var idobs = "";
	idobs  = $(this).closest('tr').find("td").filter(":eq(0)").text();
	
	document.getElementById("txtobs").value = idobs;
});
/////////////////////////////////////////////////////////////////
$('#btnEliminarObs').on('click', function(){ 
	 
	 var id	=	$("#txtobs").val();
	 var answer = confirm("¿Deseas Eliminar esta Observación?")
	 
	 if(answer)
	 {
		 $.ajax({
		        type: 'POST',
		        url: '/SistemaEducativo2026/EliminarObservacion',
		        data: {
			        	idobservacion : id
			        },
		        success: function(data)
		        {
		        	if (data!=null){
		        		
		        		alert("Se elimino la observación correctamenter");
		        		
					}else {
						
						alert("No se pudo eliminar la observación");
					}	
		        }
			});
			
        
 	 }
	 else {
		 
		 alert("Cancelado!!")
	 }
});
</script>
</body>
</html>