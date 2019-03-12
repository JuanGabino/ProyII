package Servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import Beans.Alumno;
import Jdbc.AlumnoJDBC;


@WebServlet({"/ListarAlumnoxSeccion", "/BuscarAlumno"})
public class ServletAlumno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ServletAlumno() {
        super();
  
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		
		try {
			switch (request.getServletPath()) {
			case "/ListarAlumnoxSeccion":
				listarAlumnoxSeccion(request, response);
				break;
			case "/BuscarAlumno":
				buscarAlumno(request, response);
		   } 
		}  catch (Exception e) {
			System.out.println("error :" + e.getMessage());
			e.printStackTrace();
		}


		
	}
	
	private void listarAlumnoxSeccion(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		StringBuilder sb = new StringBuilder("");
		String seccion = request.getParameter("seccion");

		

		try {
			 	AlumnoJDBC dao = new AlumnoJDBC();
			 	List<Alumno> lista = dao.alumnoxseccion(seccion);
			 	
			 	if (lista != null) {
			 		for (Alumno bean : lista) {
			 			sb.append(bean.getIdAlumno() + "=" + bean.getNombre() + "=" + bean.getApellidoPat() + "=" + bean.getApellidoMat() + "$");
			 		}
			 	} else {
			 			sb.append("_");
			 		}
			}catch(Exception e){
					System.out.println("Error : "+e.getMessage());
					e.printStackTrace();
			}
		
		response.setContentType("text/plain");
		response.getWriter().write(sb.toString());
		
	}
	
	private void buscarAlumno(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String id = request.getParameter("idAlumno");
		
		Alumno bean = new Alumno();
		AlumnoJDBC dao = new AlumnoJDBC();
		
		bean = dao.buscarAlumnoId(id);
		
		String idAlumno = bean.getIdAlumno();
		String nombres = bean.getNombre();
		String apellidopat = bean.getApellidoPat();
		String apellidoMat = bean.getApellidoMat();
		String seccion = bean.getSeccion();
		
		request.setAttribute("idAlumno", idAlumno);
		request.setAttribute("nombres", nombres);
		request.setAttribute("apellidopat", apellidopat);
		request.setAttribute("apellidoMat", apellidoMat);
		request.setAttribute("seccion", seccion);
		
		System.out.println("Se realizo la busqueda del alumno" + "-" + idAlumno + "-" + nombres + "-" + apellidopat + "-" + apellidoMat + "-" + seccion);
		RequestDispatcher rd = request.getRequestDispatcher("comentarioObservaciones.jsp");
    	rd.forward(request, response);
		
		
	}
	
	

}
