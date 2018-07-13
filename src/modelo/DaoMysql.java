package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.List;



public class DaoMysql implements Dao{

	private Connection con = null;
	private String bd = "Empleados";
	private String usuario = "root";
	private String password = "root";
	private String url = "jdbc:mysql://localhost:3306/"+ bd;
	private PreparedStatement statement = null;
	 static final String driver = "com.mysql.jdbc.Driver";
	
	public DaoMysql() {
		// TODO Auto-generated constructor stub
		
	}
	
	@Override
	public Connection open() {
		// TODO Auto-generated method stub
		
		//jdbc:mysql://localhost/Empleados?user=root&password=root
		//com.mysql.jdbc.Driver
		
		try{
			// registrar el jdbc driver
			Class.forName(driver);
			con = DriverManager.getConnection(url,usuario,password);
			} 
		catch (Exception e) {
				System.out.println("Error en la conexion...");
				e.printStackTrace();
			}
		return con;				
	}
	
	@Override
	public void close() {
		// TODO Auto-generated method stub
		try{
			if(con != null)
			con.close();
			} 
		catch (Exception e){
			System.out.println("Error: No se logro cerrar conexion:\n"+e);
			}
	}
	
	@Override
	public boolean create(Empleado empleado) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Integer id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Empleado> retrieve() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public boolean login(String user, String pass) throws SQLException {
		this.open();
			
		 statement = con.prepareStatement("SELECT * FROM Login WHERE user = ? and password = ? ");
		
		 statement.setString(1, user);
		 
		 statement.setString(2, pass);
		 
		 ResultSet resultSet = statement.executeQuery();
		
		 return resultSet.next();
		 
	}


}
