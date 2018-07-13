package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Empleado;

/**
 * Servlet implementation class muestraRegistros
 */
@WebServlet(urlPatterns= {"/ProcesaDatos"} , name = "ProcesaDatos")
public class ProcesaDatos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcesaDatos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		this.processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//processRequest(request, response);		
		this.processRequest(request, response);

		
	}
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		try {
			
			// se acomodan los datos del formulario
			String nombre= request.getParameter("nombre");
			String apellido= request.getParameter("apellido");
			Double salario = Double.parseDouble(request.getParameter("salario")); 
			Integer edad = Integer.parseInt(request.getParameter("edad"));
			
			// se crea el objeto 
			Empleado empleado = new Empleado(nombre,apellido, edad, salario);
			
			// se guarda el objeto con una referencia
			request.setAttribute("empleado",empleado);
			
			request.getRequestDispatcher("/renderDatos.jsp").forward(request, response);
		
		} finally {
		
			out.close();
		}
		
		
	}

}
