package Jdbc;

import Util.Conexion;
import java.sql.ResultSet;


public class CalificacionesJDBC {

	public boolean actualizarNotasP1(String idAlumno, String seccion, String curso, String docente, int per, int anio, int p1) {
		
		boolean resultado = false;
		String sql="";
		try{
			Conexion con = new Conexion();
			if(idAlumno != null & seccion !=null & curso != null){				
				sql = "Update calificaciones set idDocente='" + docente + "', " + 
			          " P1 = " + p1 +" where idAlumno='" +  idAlumno + "' and seccion ='" + seccion +"' and curso = '" +  curso  + "' and periodo = "+
						per + " and anio = " + anio + ";";
				
				System.out.println("consulta REALIZADA:" + "-" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + p1);
			}else {
				System.out.println("ERROR EN LA CONSULTA SQL" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + p1);				
			}
			
			System.out.println("consulta :"+ sql);
			
			resultado = con.executeUpdate(sql) == 1 ? true : false;
			
		}catch(Exception e){
			e.printStackTrace();
		}		
		return resultado;
		
		
	}
	
	public boolean actualizarNotasP2(String idAlumno, String seccion, String curso, String docente, int per, int anio, int p2) {
		
		boolean resultado = false;
		String sql="";
		try{
			Conexion con = new Conexion();
			if(idAlumno != null & seccion !=null & curso != null){				
				sql = "Update calificaciones set idDocente='" + docente + "'," + 
			          " P2 = " + p2 +" where idAlumno='" +  idAlumno + "' and seccion ='" + seccion +"' and curso = '" +  curso  + "' and periodo = "+
								per + " and anio = " + anio + ";";
				System.out.println("consulta REALIZADA:" + "-" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + p2);
			}else {
				System.out.println("ERROR EN LA CONSULTA SQL" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + p2);				
			}
			
			System.out.println("consulta :"+ sql);
			
			resultado = con.executeUpdate(sql) == 1 ? true : false;
			
		}catch(Exception e){
			e.printStackTrace();
		}		
		return resultado;
		
		
	}

	public boolean actualizarNotasP3(String idAlumno, String seccion, String curso, String docente, int per, int anio, int p3) {
	
		boolean resultado = false;
		String sql="";
		try{
			Conexion con = new Conexion();
			if(idAlumno != null & seccion !=null & curso != null){				
				sql = "Update calificaciones set idDocente='" + docente + "'," + 
		          " P3 = " + p3 +" where idAlumno='" +  idAlumno + "' and seccion ='" + seccion +"' and curso = '" +  curso  + "' and periodo = "+
							per + " and anio = " + anio + ";";
			
				System.out.println("consulta REALIZADA:" + "-" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + p3);
			}
			else {
				System.out.println("ERROR EN LA CONSULTA SQL" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + p3);				
			}
		
			System.out.println("consulta :"+ sql);
		
			resultado = con.executeUpdate(sql) == 1 ? true : false;
		
		}catch(Exception e){
			e.printStackTrace();
		}		
		return resultado;
	
	}

	public boolean actualizarNotasT1(String idAlumno, String seccion, String curso, String docente, int per, int anio, int t1) {
	
		boolean resultado = false;
		String sql="";
		try{
			Conexion con = new Conexion();
			if(idAlumno != null & seccion !=null & curso != null){				
				sql = "Update calificaciones set idDocente='" + docente + "'," + 
		          " T1 = " + t1 +" where idAlumno='" +  idAlumno + "' and seccion ='" + seccion +"' and curso = '" +  curso + "' and periodo = "+
							per + " and anio = " + anio + ";";
			
				System.out.println("consulta REALIZADA:" + "-" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + t1);
			}
			else {
				System.out.println("ERROR EN LA CONSULTA SQL" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + t1);				
			}
		
			System.out.println("consulta :"+ sql);
		
			resultado = con.executeUpdate(sql) == 1 ? true : false;
		
		}catch(Exception e){
			e.printStackTrace();
		}		
		return resultado;

	}

	public boolean actualizarNotasT2(String idAlumno, String seccion, String curso, String docente, int per, int anio, int t2) {
	
		boolean resultado = false;
		String sql="";
		try{
			Conexion con = new Conexion();
			if(idAlumno != null & seccion !=null & curso != null){				
				sql = "Update calificaciones set idDocente='" + docente + "'," + 
		          " T2 = " + t2 +" where idAlumno='" +  idAlumno + "' and seccion ='" + seccion +"' and curso = '" +  curso  + "' and periodo = "+
							per + " and anio = " + anio + ";";
			
				System.out.println("consulta REALIZADA:" + "-" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + t2);
			}else {
				System.out.println("ERROR EN LA CONSULTA SQL" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + t2);				
			}
		
			System.out.println("consulta :"+ sql);
		
			resultado = con.executeUpdate(sql) == 1 ? true : false;
		
		}catch(Exception e){
			e.printStackTrace();
		}		
		return resultado;
	
	
	}

	public boolean actualizarNotasT3(String idAlumno, String seccion, String curso, String docente, int per, int anio, int t3) {
		
		boolean resultado = false;
		String sql="";
		try{
			Conexion con = new Conexion();
			if(idAlumno != null & seccion !=null & curso != null){				
				sql = "Update calificaciones set idDocente='" + docente + "', " + 
		          " T3 = " + t3 +" where idAlumno='" +  idAlumno + "' and seccion ='" + seccion +"' and curso = '" +  curso  + "' and periodo = "+
							per + " and anio = " + anio + ";";
			
				System.out.println("consulta REALIZADA:" + "-" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + t3);
			}else {
				System.out.println("ERROR EN LA CONSULTA SQL" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + t3);				
			}
		
			System.out.println("consulta :"+ sql);
		
			resultado = con.executeUpdate(sql) == 1 ? true : false;
		
		}catch(Exception e){
			e.printStackTrace();
		}		
		return resultado;
	
	
	}

	public boolean actualizarNotasEX1(String idAlumno, String seccion, String curso, String docente, int per, int anio, int ex1) {
	
		boolean resultado = false;
		String sql="";
		try{
			Conexion con = new Conexion();
			if(idAlumno != null & seccion !=null & curso != null){				
				sql = "Update calificaciones set idDocente='" + docente + "', " + 
		          " EX1= " + ex1 + " where idAlumno='" +  idAlumno + "' and seccion ='" + seccion +"' and curso = '" +  curso  + "' and periodo = "+
							per + " and anio = " + anio + ";";
			
				System.out.println("consulta REALIZADA:" + "-" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + ex1);
			}else {
				System.out.println("ERROR EN LA CONSULTA SQL" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + ex1);				
			}
		
			System.out.println("consulta :"+ sql);
		
			resultado = con.executeUpdate(sql) == 1 ? true : false;
		
		}catch(Exception e){
			e.printStackTrace();
		}		
		return resultado;
	
	
	}

	public boolean actualizarNotasEX2(String idAlumno, String seccion, String curso, String docente, int per, int anio, int ex2) {
	
		boolean resultado = false;
		String sql="";
		try{
			Conexion con = new Conexion();
			if(idAlumno != null & seccion !=null & curso != null){				
				sql = "Update calificaciones set idDocente='" + docente + "', " + 
		          " EX2 = " + ex2 +" where idAlumno='" +  idAlumno + "' and seccion ='" + seccion +"' and curso = '" +  curso  + "' and periodo = "+
							per + " and anio = " + anio + ";";
			
				System.out.println("consulta REALIZADA:" + "-" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + ex2);
			}else {
				System.out.println("ERROR EN LA CONSULTA SQL" + idAlumno + "-" + seccion + "-" + curso + "-" +docente + "-" + per + "-" + anio + "-" + ex2);				
			}
		
			System.out.println("consulta :"+ sql);
		
			resultado = con.executeUpdate(sql) == 1 ? true : false;
		
		}catch(Exception e){
			e.printStackTrace();
		}		
		return resultado;
	
	
	}


	
	public StringBuilder listarCalificaciones(String seccion, String curso, int periodo, int anio)
	{
		StringBuilder lista = new StringBuilder();
		System.out.println("La seccion es :" +seccion+"- El curso es: "+curso);
		String sql = "select a.idAlumno, a.nombre, a.apellidoPat, a.apellidoMat, c.P1, c.P2, c.P3, c.PromedioPractica, c.T1, c.T2, c.T3," +
	              " c.PromedioTarea, c.EX1, c.EX2, c.PromedioFinal from alumnos as a inner join calificaciones as c on a.idAlumno=c.idAlumno" +
			      " where c.seccion ='"+seccion+"' and curso='"+curso+"' and periodo = " + periodo + " and anio =" + anio + ";";
		
		System.out.println("consulta :"+sql);
		
		try 
		{
			Conexion con = new Conexion();
			ResultSet rs = con.executeQuery(sql);
			
			while (rs.next()) {
				
				lista.append(rs.getString(1) + "/" + rs.getString(2) + "/" + rs.getString(3) + "/" + rs.getString(4) + "/" + rs.getInt(5) + 
						     "/" + rs.getInt(6) + "/" + rs.getInt(7) + "/" + rs.getDouble(8) + "/" + rs.getInt(9)+ "/" + rs.getInt(10) + "/" +
						     rs.getInt(11) + "/" + rs.getDouble(12) + "/" + rs.getInt(13) + "/" + rs.getInt(14) + "/" + rs.getDouble(15) + "$");
			}
			
			

		} catch (Exception e) {
			 
			System.out.println("Error : " + e.getMessage());
			e.printStackTrace();
		}
		
		return lista;
	}
	
	public StringBuilder listarCalificacionesMaximas(String seccion, String curso, int periodo, int anio)
	{
		StringBuilder lista = new StringBuilder();
		String sql = "select a.nombre, a.apellidoPat, a.apellidoMat, c.PromedioFinal from calificaciones as c inner join " + 
				"alumnos as a on a.idAlumno = c.idAlumno where c.curso = '" + curso + "' and c.seccion = '" + seccion + "' and periodo = " + 
				periodo + " and anio = "+anio+" order by PromedioFinal desc LIMIT 3";
		
		try 
		{
			Conexion con = new Conexion();
			ResultSet rs = con.executeQuery(sql);
			
			while (rs.next()) {
				
				lista.append(rs.getString(1) + "/" + rs.getString(2) + "/" + rs.getString(3) + "/" + rs.getDouble(4) + "/"  + "$");
			}
			
			

		} catch (Exception e) {
			 
			System.out.println("Error : " + e.getMessage());
			e.printStackTrace();
		}
		
		return lista;
		
	}
	
	
	public StringBuilder listarCalificacionesMinimas(String seccion, String curso, int periodo, int anio)
	{
		StringBuilder lista = new StringBuilder();
		String sql = "select a.nombre, a.apellidoPat, a.apellidoMat, c.PromedioFinal from calificaciones as c inner join " + 
				"alumnos as a on a.idAlumno = c.idAlumno where c.curso = '" + curso + "' and c.seccion = '" + seccion + "' and periodo = " + 
				periodo + " and anio = "+anio+" order by PromedioFinal asc LIMIT 3";
		
		try 
		{
			Conexion con = new Conexion();
			ResultSet rs = con.executeQuery(sql);
			
			while (rs.next()) {
				
				lista.append(rs.getString(1) + "/" + rs.getString(2) + "/" + rs.getString(3) + "/" + rs.getDouble(4) + "/"  + "$");
			}
			
			

		} catch (Exception e) {
			 
			System.out.println("Error : " + e.getMessage());
			e.printStackTrace();
		}
		
		return lista;
		
	}
}
