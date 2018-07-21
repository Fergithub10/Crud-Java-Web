<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "java.util.*" %>
<%@ page import = "modelo.DaoMysql" %>
<%@ page import = "modelo.Empleado" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Record</title>
</head>
<body>

	<%@include file="headerMenu.jsp" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<script src="resources/js/deleteRecord.js"></script>

		<sql:setDataSource
		    var="Empleados"
		    driver="com.mysql.cj.jdbc.Driver"
		    url="jdbc:mysql://localhost:3306/Empleados"
		    user="root" password="root"
		/>

		<c:forEach items="${paramValues.selected}" var="item">
				<sql:update dataSource="${Empleados}" var="count">
					DELETE FROM Empleados
            		WHERE id='${item}'
				</sql:update>	
		</c:forEach>

		<sql:query var="list_users" dataSource="${Empleados}">
    		SELECT * FROM Empleados;
		</sql:query>

		<div class="container">
			
			<div class="row">
				<div class="col-md-10">
		        	<h4>Delete Record</h4>
				</div>
				<div class="col-md-2">		
					<form action="">
			        	<h4><p data-placement="top" data-toggle="tooltip" title="Delete">
			        			<button class="btn btn-danger btn-lg" type="submit">
			        				<span class="glyphicon glyphicon-trash"></span>
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
			                   	<th><input type="checkbox" id="checkall" /></th>
			                   	<th>Name</th>
			                   	<th>LastName</th>
								<th>Age</th>
			                    <th>Salary</th>
			                    <th>DNI</th>
		                   </thead>
		    				<tbody>
							    	<c:forEach var="user" items="${list_users.rows }">	
							    <tr>
								    <td><input type="checkbox" class="checkthis" name="selected" value="${user.id}"/></td>
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
		            </div>
		        </div>
			</div>
		</div>

	</body>
</html>