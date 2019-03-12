package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.List;
import Beans.Curso;
import Beans.Seccion;
import Jdbc.CursoJDBC;

@WebServlet({"/ListarCursoDocente", "/ListarCursos"})
public class ServletCurso extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ServletCurso() {
       super();
      
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		try {
			switch (request.getServletPath()) {
			case "/ListarCursoDocente":
				listarCursoDocente(request, response);
				break;
			case "/ListarCursos":
				listarCursoDocente(request, response);
				
		   } 
		}  catch (Exception e) {
			System.out.println("error :" + e.getMessage());
			e.printStackTrace();
		}

	}
	
	
	private void listarCursoDocente(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		StringBuilder sb = new StringBuilder("");
		List<Curso> lista = new ArrayList<Curso>();
		String dni = request.getParameter("dni");
		
		try {
			
				CursoJDBC dao = new CursoJDBC();
				lista = dao.buscarCursoDocente(dni);
				
				
				for(Curso bean : lista)
					{
						sb.append(bean.getIdCurso() + "-" + bean.getAsignatura() + ":");
						System.out.println("Los cursos son: " + bean.getIdCurso() + "-" + bean.getAsignatura() + ":");
					}
					
			
		} catch(Exception e) {
			
			System.out.println("Error : "+e.getMessage());
			e.printStackTrace();
		}
		
		response.setContentType("text/plain");
		response.getWriter().write(sb.toString());
		
	}

}
