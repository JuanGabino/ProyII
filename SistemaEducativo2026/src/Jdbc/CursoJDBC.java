package Jdbc;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import Beans.Curso;
import Util.Conexion;

public class CursoJDBC {

	public List<Curso> buscarCursoDocente(String dni)
	{
		List<Curso> lista = new ArrayList<Curso>();
		String sql = "select d.idCurso, c.asignatura from det_doc_curso d inner join cursos c on d.idCurso = c.idCurso where d.idDocente = " + dni + ";";
		
		try
		{
			Conexion con = new Conexion();
			ResultSet rs = con.executeQuery(sql);
			
		
			while(rs.next()) {
				
				Curso bean = new Curso();
				bean.setIdCurso(rs.getString(1));
				bean.setAsignatura(rs.getString(2));
				
				lista.add(bean);
			}			
			
			System.out.println("Se realizo la sentencia correcta: LISTA DE CURSOS X DOCENTES" + lista);
			
			
		} catch(Exception e){
			
			e.getStackTrace();
			System.out.println("El valor del nombre es" + "-" + dni);
			
		}
		
		return lista;
	}
}
