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
   				<form name="f1" action="">
    				<div class="row">
       					<div class="col-md-6">
         					<h4><strong>Seccion:</strong></h4>
         					<select class="form-control selectSeccion" id="selectSeccion">
		   						<option value="" selected disabled hidden>--Seleccionar--</option>
	     					</select><br>
	     					<input type="hidden" id="txtdni" name="txtdni" value="<% out.println(session.getAttribute("dni"));  %>" >
	   					</div>
	   					<div class="col-md-4" id="divBuscarAlumnos">
	    					<br><br>
	    					<button type="button" class="btn btn-primary" id="btnBuscar"> Buscar </button>
	   					</div>
    				</div>
    				<br><br>
    
       					<div class="row">
           					<div class="col-md-4">
                  				<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal2" id="btnGenerarModal" name="btnGenerarModal" style="width: 200px; height: 50px;"><strong>Generar Comunicados</strong></button>
                  			</div>
                			<div class="col-md-4">
                  				<button type="button" class="btn btn-primary"  id="btnSeleccionar" name="btnSeleccionar" style="width: 200px; height: 50px;"><strong>Seleccionar a todos</strong></button>
                			</div>
                			<div class="col-md-4">
                  				<button type="button" class="btn btn-danger"  id="btnDesmarcar" name="btnDesmarcar" style="width: 200px; height: 50px;"><strong>Desmarcar a todos</strong></button>
                			</div>
      			        </div>
      					<br><br>
      					<div class="table-responsive">		
           						<table id="Table" class="table">
            						<thead style="background-color: #213758;  border-bottom: solid 5px #0F362D; color: white;">
             							<tr>
              								<th><center>IDALUMNO</center></th>
              								<th><center>NOMBRE</center></th>
              								<th><center>APELLIDO PATERNO</center></th>
              								<th><center>APELLIDO MATERNO</center></th>
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
									<!-- Modal -->
									<div id="myModal2" class="modal fade" role="dialog">
 					 					<div class="modal-dialog">

   										<!-- Modal content-->
    										<div class="modal-content">
      											<div class="modal-header" style="background-color: #213758;">
        											<button type="button" class="close" data-dismiss="modal" >&times;</button>
        											<h4 class="modal-title" style="color: white;"><strong>GENERAR COMUNICADO</strong></h4>
      											</div>
      											<div class="modal-body"  id="exportContent">
        					
      												<div class="row">
      			 										<div class="col-md-4">
        													<h5><strong>FECHA</strong></h5>
        													<input type="text" class="form-control" name="fecha" id="fecha" value="" disabled>
       													</div>
       													<div class="col-md-4">
        													<h5><strong>CODIGO DOCENTE</strong></h5>
        													<input type="text" class="form-control" value="<% out.println(session.getAttribute("dni"));  %>" disabled>
       													</div>
       													<div class="col-md-4">
        													<h5><strong>TIPO</strong></h5>
        													<select class="form-control selectTipo" id="selectTipo">
          														<option value="">--------Seleccionar--------</option>
          														<option value="Urgente"> Urgente </option>
          														<option value="Reunion"> Reunion</option>
          														<option value="Formal"> Formal </option>
        													</select>
       													</div>
      												</div>
      												<br><br>
      							    				<div class="container-row">
      							       					<div class="negrita">
                                            				<textarea name="comment" rows=5 cols=70 id="texto" name="texto" ></textarea>
        							   					</div>
      												</div>
      												<br>
      												<br>
      												<div class="row">
       													<button class="btn btn-success form-control" id="btn_registrar" name="btn_registrar">REGISTRAR COMUNICADO</button>
      												</div>
      										     </div>
      											<div class="modal-footer">
        											<button type="button" class="btn btn-default" data-dismiss="modal"><strong>Cerrar</strong></button>
     			 								</div>
    					                    </div>

  					                    </div>
					                </div>
									<!-- FIN MODAL -->
<script type="text/javascript">
  var meses = new Array ("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
  var f=new Date();
	document.getElementById("fecha").value = f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear();
</script>

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
//////////////////////////////////////////////////////////////////////////////////
$('#btnGenerarModal').on('click', function(){
	 
	var validado = false;
	for (i=0;i<document.f1.elements.length;i++){
	      if(document.f1.elements[i].type == "checkbox" && document.f1.elements[i].checked == true)
	      {
	    	  validado = true;
	    	  $('#btn_registrar').attr("disabled", false);
	      }
	}
	if(!validado)
	{
		alert("Seleccione al menos UN alumno Generar Comunicado");
		$('#btn_registrar').attr("disabled", true);
	}
});
//////////////////////////////////////////////////////////
$('#btnSeleccionar').on('click', function(){
	
	seleccionar_todo();
});
$('#btnDesmarcar').on('click', function(){
	
	deseleccionar_todo();
});
/////////////////////////////////////////////////////////////
function seleccionar_todo(){ 
   for (i=0;i<document.f1.elements.length;i++) 
      if(document.f1.elements[i].type == "checkbox")	
         document.f1.elements[i].checked=1 
};
/////////////////////////////////
function deseleccionar_todo(){ 
   for (i=0;i<document.f1.elements.length;i++) 
      if(document.f1.elements[i].type == "checkbox")	
         document.f1.elements[i].checked=0 
}
////////////////////////////////////////////////////
$('#divBuscarAlumnos').on('click', '#btnBuscar', function(){
	
	var sec = $('#selectSeccion').val().trim();
	var vacio = "";
	$('#Table tbody tr').remove();
	
	if(sec == vacio)
	{
		alert("Seleccione una Sección");
	
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
	  				  		'<td><center><input type="checkbox" id="checkbox" name="checkbox" value="'+id+'"></center></td>'+
	  				  		"</tr>");
				}
			}
        }
	});
	}	
});
//////////////////////////////////////////////////////
$('#btn_registrar').on('click', function(){
	
	var linea = [];
	var item = {};
	
	item.texto       = $('#texto').val().trim();
	item.selectTipo  = $('#selectTipo').val();
	item.fecha       = $('#fecha').val().trim();
	item.selectSeccion = $('#selectSeccion').val();
	item.txtdni        = $('#txtdni').val().trim();
	
	linea.push(item);
	
	var datosxlinea={};
	datosxlinea.linea = linea;
	
	var datatable = JSON.stringify(datosxlinea);
	console.log(datatable);
	
	if( $('#selectTipo').val() != "" )
	{
	 $.ajax({
		
		type: 'POST',
		url: '<%=request.getContextPath()%>/RegistrarComunicado',
		dataType: 'JSON',
		data: {
			objetojson:JSON.stringify(datosxlinea)
		},
		success: function(data){
			
			if(data == "1")
	    	 {
	    		 alert("Se registro el Comunicado");
	    		 registrarDetalleComunicado();
	    		 document.getElementById("texto").value = "";
	    		 	    	 
	    	 }
	    	 else
	    	 {
	    		 alert("NO SE REGISTRO COMUNICADO");
	    	 }
		}
		
	 });
	 
	}
	else
	{
		alert("Seleccione un Tipo de Reunion");
	}
		
});
/////////////////////////////////////////////////////
function registrarDetalleComunicado(){
	
	 var linea1 = [];
	   $("input[type=checkbox]:checked").each(function(el) { 
		 
		 var itemDetalle = {};
		 var tds = $(this).find("td");
		 
		 itemDetalle.idAlumno = $(this).closest('tr').find("td").filter(":eq(0)").text();
			
		 linea1.push(itemDetalle);
	  }); 
		
	 	var datosxlinea1 = {};
	 	datosxlinea1.linea = linea1;
	 
	 	var datatable1 = JSON.stringify(datosxlinea1);
	 	console.log(datatable1);
	 
	 	$.ajax({
		
		 	type: 'POST',
		 	url: '<%=request.getContextPath()%>/RegistrarDetalleComunicado',
		 	dataType: 'JSON',
		 	data: {
				objetojson:JSON.stringify(datosxlinea1)
				},
			
			success: function(data){
			
			if(data == "1")
	    	 {
	    		 alert("EL COMUNICADO FUE MANDADO A LOS ALUMNOS");
	    		 	    	 
	    	 }
	    	 else
	    	 {
	    		 alert("NO SE PUDO MANDAR EL COMUNICADO A LOS ALUMNOS, INTENTE DE NUEVO");
	    	 }
		   }
		 
		 
	 	});
	 
	
};
//////////////////////////////////////
</script>

</body>
</html>