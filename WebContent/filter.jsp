	<%@ page import = "java.util.*" %>
	<%@ page import = "modelo.DaoMysql" %>
	<%@ page import = "modelo.Empleado" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>filter Records</title>
</head>
<body>
	<%@include file="headerMenu.jsp" %>

	<div class="container">
		<form action="${pageContext.request.contextPath}/filter.jsp" method="post">
			<input type="text" id="search" name="search" placeholder="insert keyword ... " autofocus autocomplete="off">
			<input type="submit" id="submit" name="submit" value="search">
		</form>
	</div>
	<br>
		<sql:setDataSource
		    var="Empleados"
		    driver="com.mysql.cj.jdbc.Driver"
		    url="jdbc:mysql://localhost:3306/Empleados"
		    user="root" password="root"
		/>

		<sql:query var="list_users" dataSource="${Empleados}">
    		SELECT * FROM Empleados where nombre = ? or apellido = ? or edad = ? or dni = ?;
			<sql:param value="${param.search}"/>
			<sql:param value="${param.search}"/>
    		<sql:param value="${param.search}"/>
    		<sql:param value="${param.search}"/>
		</sql:query>
	
	 
			<div class="container">
				<div class="p-3 mb-2 bg-danger text-white">
				<table class="table table-dark">
					<thead>
	            	    <tr>
						  <th scope="col">#</th>
					      <th scope="col">Name</th>
					      <th scope="col">Lastname</th>
					      <th scope="col">Age</th>
					      <th scope="col">Salary</th>
					 	  <th scope="col">Dni</th>
					 	  <th scope="row">Telephone</th> 
				    	</tr>
				  </thead>	
				  <tbody>	
			
			<c:forEach var="user" items="${list_users.rows }">		
	            <tr>
	                <td>#
	                <td><c:out value="${user.nombre}"/>
	                <td><c:out value="${user.apellido }"/>
	               	<td><c:out value="${user.edad}"/>
	                <td><c:out value="${user.salario}"/>
	                <td><c:out value="${user.telefono}"/> 
	                <td><c:out value="${user.dni}"/>
	            </tr>
			</c:forEach>

				 </tbody>
				</table>
				</div>
			</div>






</body>
</html>