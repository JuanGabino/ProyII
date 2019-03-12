package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.ArrayList;
import java.util.List;

import Beans.Seccion;
import Jdbc.SeccionJDBC;


@WebServlet("/ListarSeccionDocente")
public class ServletSeccion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletSeccion() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		  
			String dni = request.getParameter("dni");
			List<Seccion> lista = new ArrayList<Seccion>();
			StringBuilder sb = new StringBuilder("");
			
			
			try{
				
				
				SeccionJDBC dao = new SeccionJDBC();
				lista = dao.listarSeccion(dni);
				
				for(Seccion bean : lista){
					
					sb.append(bean.getIdSeccion() + "-" + bean.getGrado() + ":");
					
					System.out.println(bean.getIdSeccion() + "-" + bean.getGrado() + ":");
				}
				
				
			}catch(Exception e){
				System.out.println("No se realizo Lista");
				e.printStackTrace();

			}
			response.setContentType("text/plain");
			response.getWriter().write(sb.toString());
		}
		

}
