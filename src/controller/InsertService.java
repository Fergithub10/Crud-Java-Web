package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Dao;
import modelo.DaoMysql;
import modelo.Empleado;

/**
 * Servlet implementation class InsertService
 */
@WebServlet(urlPatterns= {"/insertService"} , name = "InsertService")
public class InsertService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Dao daoMysql =  new DaoMysql();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		response.sendRedirect("http://localhost:8080/ApplicacionWeb/menuPrincipal.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer edad 	= Integer.parseInt(request.getParameter("age"));
        String nombre 	= request.getParameter("name");
        String apellido = request.getParameter("lastname");
        Double salario	= Double.parseDouble(request.getParameter("salary"));
        Integer telefono= Integer.parseInt(request.getParameter("telephone"));
        Integer dni		= Integer.parseInt(request.getParameter("dni"));

        Empleado empleado = new Empleado(edad, nombre, apellido, salario, telefono, dni);
        
        if(this.daoMysql.create(empleado)) {
        	response.sendRedirect("http://localhost:8080/ApplicacionWeb/addedRecord.jsp");
        	
        }else {  
        	
        response.sendRedirect("http://localhost:8080/ApplicacionWeb/errorRecord.jsp");      
        
        }
	}
		
}
		


