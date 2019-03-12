package Jdbc;

import Beans.Seccion;
import Util.Conexion;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SeccionJDBC {

	public List<Seccion> listarSeccion(String dni)
	{
		
		System.out.println("El numero de dni es" + dni);
		List<Seccion> lista = new ArrayList<Seccion>();
		String sql = "select s.idSeccion, s.grado from det_doc_sec as d inner join secciones as s on d.idSeccion = s.idSeccion where d.idDocente = "+dni+";"; 
		
		try 
		{
			Conexion con = new Conexion();
			
			ResultSet rs = con.executeQuery(sql);
			
			while (rs.next()) {
				
				Seccion bean = new Seccion();
				bean.setIdSeccion(rs.getString(1));
				bean.setGrado(rs.getString(2));
				
				lista.add(bean);
			}
			System.out.println("Se realizo la sentencia" + lista);
			
		} catch(Exception e) {
			
			e.getStackTrace();
			System.out.println("El valor del nombre es");
		}
		
		return lista;
		
	}
}
