<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
  <html>
  <head>
    <title>Sample Application JSP Page</title>
  </head>

  <body bgcolor=white>
  		<%@ page import="controller.ProcesaDatos" %>
		
	<form action="ProcesaDatos" method="post">
		<table cellspacing="3" cellpadding="3" border="1" >
			<tr>
				<td align="right"> Nombre: </td>
				<td><input type="text" name="nombre"></td>
			</tr>
			<tr>
				<td align="right"> Apellido: </td>
				<td> <input type="text" name="apellido"> </td>
			</tr>
			<tr>
				<td align="right"> Edad: </td>
				<td> <input type="text" name="edad"> </td>
			</tr>
			<tr>
				<td align="right">Salario:</td>
				<td> <input type="text" name="salario"> </td>
			</tr>
		</table>
			<input type="reset" value="Borrar">
			<input type="submit" value="Enviar">
	</form>
  </body>
</html> 
