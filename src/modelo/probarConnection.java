package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class probarConnection {

	  public static void main(String[] args) {

Connection conn = null;
		try {
		    conn =
		       DriverManager.getConnection("jdbc:mysql://localhost/Empleados?user=root&password=root");
		
		    // Do something with the Connection
		    System.out.println("conneccion existosa");
		
		} catch (SQLException ex) {
		    // handle any errors
		    System.out.println("SQLException: " + ex.getMessage());
		    System.out.println("SQLState: " + ex.getSQLState());
		    System.out.println("VendorError: " + ex.getErrorCode());
		}
	  }	
}
