package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public interface Dao {

	//crear coneccion
	public Connection open();
	
	// cerrar coneccion
	public void close();
	
	// manejo de datos
	public boolean create(Empleado empleado);
	
	public boolean delete(Integer id);
	
	public boolean update(Integer id);
	
	public List<Empleado> retrieve();

	public boolean login(String user, String password) throws SQLException;
}
