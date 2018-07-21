<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Record</title>
</head>
<body>
	
			<%@include file="headerMenu.jsp" %>

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
			
			<div class="row">
				<div class="col-md-10">
		        	<h4>Edit Record</h4>
				</div>
				<div class="col-md-2">		
			<!-- formulario edit -->
					<form action="${pageContext.request.contextPath}/perfilRecord.jsp" method="post">
			        	<h4><p data-placement="top" data-toggle="tooltip" title="Delete">
			        			<button class="btn btn-danger btn-lg" type="submit">
			        				<span class="glyphicon glyphicon-edit"></span>
			        			</button>
			        		</p>
			        	</h4>
					</div>
			    </div>
			
			<div class="row">
		        <div class="col-md-12">
		        	<div class="table-responsive">
						<table id="mytable" class="table table-bordred table-striped">
		                   
		                   <thead>
			                   	<th>#</th>
			                   	<th>Name</th>
			                   	<th>LastName</th>
								<th>Age</th>
			                    <th>Salary</th>
			                    <th>DNI</th>
		                   </thead>
		    				<tbody>
							    	<c:forEach var="user" items="${list_users.rows }">	
							    <tr>
								    <td><input type="radio" class="checkthis" name="selected" value="${user.id}"/></td>
								    <td><c:out value="${user.nombre}"/></td>
								    <td><c:out value="${user.apellido}"/></td>
								    <td><c:out value="${user.edad}"/></td>
								    <td><c:out value="${user.salario}"/></td>
								    <td><c:out value="${user.dni}"/></td>
							    </tr>
							    	</c:forEach>
					    	</tbody>
						</table>
						</form>
		<!-- formulario edit -->
		            </div>
		        </div>
			</div>
		</div>


</body>
</html>