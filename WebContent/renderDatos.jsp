<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>


	<%@ page import="negocios.Empleado" %>
	<%
		Empleado empleado = (Empleado)request.getAttribute("empleado");
	%>
	
	<h1> MuestraDatos.jsp</h1>
	<h2> Aqui se despliegan los datos que envió el servlet</h2>
	<p> Tus datos son los siguientes: </p>
	<table cellspacing="3" cellpadding="3" border="1" >
		<tr>
			<td align="right"> Te llamas: </td>
			<td> <%= empleado.getNombre() %> </td>
			</tr>
		<tr>
			<td align="right"> Tus apellido: </td>
			<td> <%= empleado.getApellido() %> </td>
		</tr>
		<tr>
			<td align="right"> Y tu salario es: </td>
			<td> <%= empleado.getSalario() %> </td>
		</tr>
		<tr>
			<td align="right"> Y tu edad es: </td>
			<td> <%= empleado.getEdad() %> </td>
		</tr>
	</table>
	
	<form action="index.jsp" method="post">
		<input type="submit" value="Regresar">
	</form>




	</body>
</html>