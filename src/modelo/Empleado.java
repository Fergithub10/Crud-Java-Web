package negocios;

public class Empleado {

	Integer ID,edad;
	String nombre,apellido;
	Double salario;
	
	public Empleado(Integer iD, Integer edad, String nombre, String apellido, Double salario) {
		super();
		ID = iD;
		this.edad = edad;
		this.nombre = nombre;
		this.apellido = apellido;
		this.salario = salario;
	}

	public Empleado(String nombre, String apellido, Integer edad, Double salario) {

		this.nombre = nombre;
		this.apellido = apellido;
		this.edad = edad;
		this.salario = salario;
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
	
	
	
}
