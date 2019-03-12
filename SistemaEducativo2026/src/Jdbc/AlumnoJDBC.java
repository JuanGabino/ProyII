package Jdbc;

import Beans.Alumno;
import Util.Conexion;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class AlumnoJDBC {
	
	public Alumno buscarAlumno(String nombre)
	{
		Alumno bean = new Alumno();
		
		try {
			
			Conexion con = new Conexion();
			String sql = "select idAlumno, nombre, apellidoPat, apellidoMat, fechaNac, nivelProgreso, seccion from alumnos where nombre = '" + nombre + "'";
			
			ResultSet rs = con.executeQuery(sql);
			
			while(rs.next()) {
				
				bean.setIdAlumno(rs.getString(1));
				bean.setNombre(rs.getString(2));
				bean.setApellidoPat(rs.getString(3));
				bean.setApellidoMat(rs.getString(4));
				bean.setFechaNac(rs.getString(5));
				bean.setNivelProgreso(rs.getString(6));
				bean.setSeccion(rs.getString(7));
			}
			
			System.out.println("Se realizo la sentencia correcta");
			
		} catch (Exception e) {
			
			e.getStackTrace();
			System.out.println("El valor del nombre es" + "-" + nombre);
		}
		
		return bean;
	}

	
	public List<Alumno> alumnoxseccion(String seccion) 
	{

		System.out.println("El codigo de la seccion es" + seccion);
		List<Alumno> lista = new ArrayList<Alumno>();
		String sql = "select idAlumno, nombre, apellidoPat, apellidoMat from alumnos where seccion ='" + seccion + "';";
		
		try
		{
			Conexion con = new Conexion();
			ResultSet rs = con.executeQuery(sql);
			
			while(rs.next()) {
				
				Alumno bean = new Alumno();
				bean.setIdAlumno(rs.getString(1));
				bean.setNombre(rs.getString(2));
				bean.setApellidoPat(rs.getString(3));
				bean.setApellidoMat(rs.getString(4));
	
				lista.add(bean);
			}
			
			
			System.out.println("Se realizo la sentencia correcta");
			
		} catch(Exception e) {
			
			e.getStackTrace();
			System.out.println("No se realizo el QUERY");
		}
		
		return lista;
	}
	
	public Alumno buscarAlumnoId(String id)
	{
		Alumno bean = new Alumno();
		
		try 
		{
			Conexion con = new Conexion();
			String sql = "select idAlumno, nombre, apellidoPat, apellidoMat, seccion  from alumnos  where idAlumno = '" + id + "';";
			
			ResultSet rs = con.executeQuery(sql);
			
			while(rs.next()) {
				
				bean.setIdAlumno(rs.getString(1));
				bean.setNombre(rs.getString(2));
				bean.setApellidoPat(rs.getString(3));
				bean.setApellidoMat(rs.getString(4));
				bean.setSeccion(rs.getString(5));
			}
			System.out.println("Se encontre al Alumno");
			
		} catch(Exception e) {
			
			e.getStackTrace();
			System.out.println("El id del Alumno seleccionado es: " + id);
		}
		
		return bean;
	}
}
