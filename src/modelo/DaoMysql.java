package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;



public class DaoMysql implements Dao{

	private Connection con = null;
	private String bd = "Empleados";
	private String usuario = "root";
	private String password = "root";
	private String url = "jdbc:mysql://localhost:3306/"+ bd;
	private PreparedStatement statement = null;
	 static final String driver = "com.mysql.cj.jdbc.Driver";// "com.mysql.jdbc.Driver";
	
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
		this.open();
		
		try {
			statement = con.prepareStatement("INSERT INTO Empleados (nombre,apellido,salario,dni,telefono,edad)\n VALUES (?, ?, ?, ?, ?, ?); ");

			statement.setString(1, empleado.getNombre());
			
			statement.setString(2, empleado.getApellido());
			
			statement.setString(3, String.valueOf(empleado.getSalario()));
			
			statement.setString(4, String.valueOf(empleado.getDNI()));
			
			statement.setString(5, String.valueOf(empleado.getTelefono()));
			
			statement.setString(6 ,String.valueOf(empleado.getEdad()));
			
			int resultSet = statement.executeUpdate();
			
			return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
			return false;
		}
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
		this.open();
		List<Empleado> empleados = new ArrayList<Empleado>();
		
		try {
			Statement st = null;
			st = con.createStatement();
		
			ResultSet resulSet = st.executeQuery("SELECT * FROM Empleados"); 
			
			if(!resulSet.next()) {
				return null;
			}else {
				
				while(resulSet.next()) {
						String nombre = resulSet.getString("nombre");
						String apellido = resulSet.getString("apellido");
						Double salario = resulSet.getDouble("salario");
						Integer telefono =  resulSet.getInt("telefono");
						Integer dni = resulSet.getInt("dni");
						Integer edad = resulSet.getInt("edad");
						
						empleados.add(new Empleado(edad, nombre, apellido, salario, telefono, dni));
				}
					st.close();
					resulSet.close();
					
					return empleados;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
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
