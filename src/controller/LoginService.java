package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Dao;
import modelo.DaoMysql;
import modelo.Empleado;

/**
 * Servlet implementation class Login
 */
@WebServlet(urlPatterns= {"/Login"} , name = "Login")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Dao daoMysql =  new DaoMysql();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginService() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// se acomodan los datos del formulario
			String user = request.getParameter("user");
			String password =request.getParameter("password");
						
			try {
				
				if(this.daoMysql.login(user, password)) {
				
					response.sendRedirect("http://localhost:8080/ApplicacionWeb/welcome.jsp");

				}else {
					
					response.sendRedirect("http://localhost:8080/ApplicacionWeb/registroNoEncontrado.jsp");

				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		
		}
	}


