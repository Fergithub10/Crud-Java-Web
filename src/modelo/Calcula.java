package modelo;

public class Calcula {

	private Double tInicial;
	private Double tFinal;
	private Double distancia;

	public Calcula(String tIni, String tFin, String dist){
		tInicial = Double.parseDouble(tIni);
		tFinal = Double.parseDouble(tFin);
		distancia = Double.parseDouble(dist);
	}

	public Double velocidad(){
		return distancia/(tFinal- tInicial);
	}
	
	public Double tiempoTotal(){
		return tFinal-tInicial;
	}

}
