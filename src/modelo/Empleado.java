package modelo;

public class Empleado {

	Integer ID,edad,dni,telefono;
	String nombre,apellido;
	Double salario;
	
	
	
	public Empleado(Integer edad, String nombre, String apellido, Double salario, Integer telefono, Integer dni) {
		super();
		this.edad = edad;
		this.nombre = nombre;
		this.apellido = apellido;
		this.salario = salario;
		this.telefono = telefono;
		this.dni = dni;
	}
	
	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public Integer getEdad() {
		return edad;
	}

	public void setEdad(Integer edad) {
		this.edad = edad;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Double getSalario() {
		return salario;
	}

	public void setSalario(Double salario) {
		this.salario = salario;
	}

	public Integer getDNI() {
		// TODO Auto-generated method stub
		return dni;
	}

	public Integer getTelefono() {
		// TODO Auto-generated method stub
		return telefono;
	}
	
	
	
}
