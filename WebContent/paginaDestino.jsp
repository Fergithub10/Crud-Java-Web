<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>

	<body>
		<%@ page import="negocios.Calcula" %>
		<%
		// Extracción de los parámetros recibidos
			String nombre = request.getParameter("nombre");
			String tInicial= request.getParameter("tiempoIni");
			String tFinal = request.getParameter("tiempoFin");
			String dist = request.getParameter("distancia");
			Double vel, tiempo;
			Calcula calcula = new Calcula(tInicial, tFinal, dist);
			calcula.velocidad();
			vel = calcula.velocidad();
			calcula.tiempoTotal();
			tiempo=calcula.tiempoTotal();
		%>
			<h2> Resultado </h2>
			<p> Hola <%= nombre %> </p>
			<table cellspacing="3" cellpadding="3" border="1" >
				<tr>
					<td align="right"> Tu tiempo total fué: </td>
					<td> <%= tiempo %> minutos </td>
				</tr>
				<tr>
					<td align="right"> Y tu velocidad: </td>
					<td> <%= vel %> metros/min</td>
				</tr>
			</table>
	
		<form action="index.jsp" method="post">
			<input type="submit" value="Regresar">
		</form>
	</body>
</html>