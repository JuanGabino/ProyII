<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
 <title>Atencion Padre de Familia - LISTA DE COMUNICADOS/OBSERVACIONES</title>
 <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/font-awesome.min.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/Requerimientos/fontawesome/fonticons.css">
 <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/encabezado.css">
 <script src="<%=request.getContextPath()%>/Requerimientos/Jquery/jquery-1.11.2.min.js"></script>
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.0.min.js"></script>
 
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
 
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
	  				<h4 style="color: white;"><strong><img src="../Imagenes/lista.png" height="40" width="50">LISTA DE COMUNICADOS</strong></h4>
   				</div>
   				<div class="panel-body">
   					<div class="row">
   						<div class="col-md-4">
   							<h4><strong>Seccion:</strong></h4>
         					<select class="form-control selectSeccion" id="selectSeccion">
		   						<option value="" selected disabled hidden>--Seleccionar--</option>
	     					</select>
   						</div>
   						<div class="col-md-4" id="divBuscarComunicado">
   							<br><br>
	    					<button type="button" class="btn btn-primary" id="btnBuscarComunicado"> Buscar Comunicados</button>
   						</div>
   						<div class="col-md-4">
   							<input type="hidden" id="txtdni" name="txtdni" value="<% out.println(session.getAttribute("dni"));  %>" >
   						</div>
   					</div>
   					<br><br>
   					<form action="<%=request.getContextPath()%>/ReportePDF" method="post">
   					<div class="table-responsive" id="divTablaComunicados">		
           						<table id="Table" class="table">
            						<thead style="background-color: #284C61;  color: white;">
             							<tr>
              								<th><center>IDCOMUNICADO</center></th>
              								<th><center>DESCRIPCION</center></th>
              								<th><center>FECHA CREADA</center></th>
              								<th><center>TIPO</center></th>
              								<th></th>
              								<th></th>
              								<th></th>
             							</tr>
            						</thead>
            
            						<tbody id="tbl_alumno"> 
	              
            						</tbody>
           						</table>
           						<input type="hidden" id="idcomunicado" name="idcomunicado">
      				</div>
      				</form>
   				</div>
    		</div>
    	</div>
   </div>
  </div>
</div>
					            
					            <!-- MODAL MODIFICAR COMUNICADO -->
                				<div id="myModal1" class="modal fade" role="dialog">
 					 					<div class="modal-dialog">

   					  						<!-- Modal content-->
    										<div class="modal-content">
      												<div class="modal-header" style="background-color: #213758;">
        												<button type="button" class="close" data-dismiss="modal" >&times;</button>
        												<h4 class="modal-title" style="color: white;"><strong>MODIFICAR COMUNICADOS</strong></h4>
      												</div>
      												<div class="modal-body"  id="exportContent">
        					
      													<div class="row">
       														<div class="col-md-6">
        														<h5><strong>TIPO</strong></h5>
        														<select class="form-control selectTip" id="selectTip">
          															<option value="">--------Seleccionar--------</option>
          															<option value="Urgente"> Urgente </option>
          															<option value="Reunion"> Reunion</option>
          															<option value="Formal"> Formal </option>
        														</select>
        														<input type="hidden"  class="form-control"  name="idCom"   id="idCom">
       														</div>
       													</div>
       													<div class="row">
       														<div class="col-md-6">
																<h5><strong>FECHA GENERADA</strong></h5>
      								   							<input type="text"  class="form-control"  name="txtfecha" id="txtfecha" value="" disabled>
       														</div>
       														<div class="col-md-6">
																<h5><strong>FECHA MODIFICADA</strong></h5>
      								   							<input type="text"  class="form-control"  name="txtfechamod" id="txtfechamod" value="" disabled>
       														</div>
      													</div>
      													<br>
      													<br>
      							    					<div class="container-row">
      							       						<div class="negrita">
                                            					<textarea name="comment" rows=5 cols=70 id="txtdescripcion" name="txtdescripcion" ></textarea>
        							   						</div>
      													</div>
      													<br>
      													<div class="row">
       														<div class="col-md-6">
        														<input name="btnModificarCom" id="btnModificarCom" type="button" class="btn btn-success form-control" value="MODIFICAR COMUNICADOS">
       														</div>
       														<div class="col-md-6">
        														<input type="reset" class="btn btn-primary form-control" value="LIMPIAR CAMPOS">
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
					            
					            <!-- MODAL ELIMINAR COMUNICADO -->
                				<div id="myModal2" class="modal fade" role="dialog">
 					 					<div class="modal-dialog">

   					  						<!-- Modal content-->
    										<div class="modal-content">
      												<div class="modal-header" style="background-color: #213758;">
        												<button type="button" class="close" data-dismiss="modal" >&times;</button>
        												<h4 class="modal-title" style="color: white;"><strong>ELIMINAR COMUNICADOS</strong></h4>
      												</div>
      												<div class="modal-body">
        					
      													<div class="row">
       														<div class="col-md-6">
        														<h5><strong>COMUNICADO: </strong></h5>
        														<input type="text"  class="form-control"  name="txtcod"   id="txtcod">
       														</div>
      													</div>
      													<br>
      													<div class="row">
       														<div class="col-md-6">
        														<input name="btnEliminarCom" id="btnEliminarCom" type="button" class="btn btn-danger form-control" value="ELIMINAR COMUNICADO">
       														</div>
       														<div class="col-md-6">
        														<input type="reset" class="btn btn-primary form-control" value="CANCELAR">
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
/////////////////////////////////////////////////////////////////////
$('#divBuscarComunicado').on('click', '#btnBuscarComunicado', function(){
	
	var sec = $('#selectSeccion').val().trim();
	var dni = $('#txtdni').val().trim();
	
	var vacio = "";
	$('#Table tbody tr').remove();
	
	if(sec == vacio)
	{
		alert("Seleccione una Sección");
	
	}
	else {
		
	$.ajax({
        type: 'POST',
        url: '/SistemaEducativo2026/BuscarComunicado',
        data : {
        	dni : dni,
			seccion : sec 
		},
        success: function(data)
        {            	
        	var array = data.split("$");
			
			if(data == null){
				alert("No hay registro de Comunicados");
			}else{
				for (var i = 0; i < array.length - 1; i++) {
					var id     = array[i].split("/")[0];
					var descripcion = array[i].split("/")[1];
					var fecha = array[i].split("/")[2];
					var tipo = array[i].split("/")[3];
	
					
  				    $('#tbl_alumno').append("<tr>" +
	  				  		"<td><center>"+id+"</center></td>" +
	  				  		"<td><center>"+descripcion+"</center></td>" +
	  				  		"<td><center>"+fecha+"</center></td>" +
	  				  	    "<td><center>"+tipo+"</center></td>" +
	  				  		'<td><center><button type="button" class="btn btn-warning" id="btnModificarComunicado" name="btnModificarComunicado" data-toggle="modal" data-target="#myModal1">Mdificar</button></center></td>'+
	  				  		'<td><center><button type="button" class="btn btn-danger" id="btnEliminarComunicado" name="btnEliminarComunicado" data-toggle="modal" data-target="#myModal2">Eliminar</button></center></td>'+
	  				  		'<td><center><button type="submit" class="btn btn-primary" id="btnExportarPDF" name="btnExportarPDF">Exportar PDF</button></center></td>'+
	  				  		"</tr>");
				}
			}
        }
	});
	}	
});
////////////////////////////////////////////////////////
$('#divTablaComunicados').on('click', '#btnModificarComunicado', function(){

	var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
	var f=new Date();
	document.getElementById("txtfechamod").value = f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear();
		
	var fecha ="";
	var tipo = "";
	var descripcion = "";
	var id = "";
	
    fecha   = $(this).closest('tr').find("td").filter(":eq(2)").text();
    tipo = $(this).closest('tr').find("td").filter(":eq(4)").text();
    descripcion = $(this).closest('tr').find("td").filter(":eq(1)").text();
    id  = $(this).closest('tr').find("td").filter(":eq(0)").text();
    
    document.getElementById("txtfecha").value = fecha;
    document.getElementById("selectTip").value = tipo;
    document.getElementById("txtdescripcion").value = descripcion;
    document.getElementById("idCom").value = id;
	
	
});
/////////////////////////////////////////
$('#divTablaComunicados').on('click', '#btnEliminarComunicado', function(){
	
	var idcom = "";
	idcom  = $(this).closest('tr').find("td").filter(":eq(0)").text();
	
	document.getElementById("txtcod").value = idcom;
});
/////////////////////////////////////////////////////////////
 $('#btnModificarCom').on('click', function(){ 
	 
	 	var parametro0= $("#idCom").val();
		var parametro1= $("#txtfechamod").val();
		var parametro2= $("#selectTip").val();
		var parametro3= $("#txtdescripcion").val();
		
		$.ajax({
            type: 'POST',
            url: '/SistemaEducativo2026/ModificarComunicado',
            data: { 
            	idCom		: parametro0,
     			fechaMod   	: parametro1,
     			tipo    	: parametro2,
     			descripcion	: parametro3
            
            },
            success: function(data)
            {
            	if (data == "1"){
            		
					alert("Mensaje: "+"Se Modifico el Comunicado Correctamente.");
     			}else {
     				
     				alert("Hubo un error, no se pudo modificar el comunicado");
     			}	
            }
 		});   
	 
 });
 ////////////////////////////////////////////////////////////
 $('#btnEliminarCom').on('click', function(){ 
	 
	 var id	=	$("#txtcod").val();
	 var answer = confirm("¿Deseas Eliminar este Comunicado?")
	 
	 if(answer)
	 {
		 $.ajax({
		        type: 'POST',
		        url: '/SistemaEducativo2026/EliminarDetalleComunicado',
		        data: {
			        	idcomunicado : id
			        },
		        success: function(data)
		        {
		        	if (data!=null){
		        		
		        		eliminarComunicado();
		        		
					}else {
						
						alert("No se encontró el Comunicado");
					}	
		        }
			});
			
        
 	 }
	 else {
		 
		 alert("Cancelado!!")
	 }
});
//////////////////////////////////////////////////////////
function eliminarComunicado() {
	
	var id	=	$("#txtcod").val();
	 
	$.ajax({
        type: 'POST',
        url: '/SistemaEducativo2026/EliminarComunicado',
        data: {
	        	idcomunicado : id
	        },
        success: function(data)
        {
        	if (data!=null){
        		
        		alert("Comunicado Eliminado con Exito!!!");
        		
			}else {
				
				alert("No se encontró el Comunicado");
			}	
        }
	});
	
}
/////////////////////////////////////////////////////////////////
$('#divTablaComunicados').on('click', '#btnExportarPDF', function(){
	
	var id = "";
	
	id  = $(this).closest('tr').find("td").filter(":eq(0)").text();
	
	document.getElementById("idcomunicado").value = id;
});
//////////////////////////////////////////////////////////////////
</script>

</body>
</html>