<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>add Record</title>
	</head>

	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="resources/style/insert.css" rel="stylesheet">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	<body>
	
		<%@include file="headerMenu.jsp" %>

		<sql:setDataSource
		    var="Empleados"
		    driver="com.mysql.cj.jdbc.Driver"
		    url="jdbc:mysql://localhost:3306/Empleados"
		    user="root" password="root"
		/>

		<sql:query var="list_users" dataSource="${Empleados}">
    		SELECT * FROM Empleados;
		</sql:query>
	
		<div class="container">
			<div class="row">
			    <div class="col-md-8">
					<div class="form_main">
		        	        <h4 class="heading"><strong>Quick </strong> Insert<span></span></h4>
		            	<div class="form">
				                <form  action="" method="post" id="contactFrm" name="contactFrm"  >
				                    <input type="text" required="" placeholder="Please input Name" 		value="" name="name" 	 id="name" 		class="txt" >
				                    <input type="text" required="" placeholder="Please input Lastname" 	value="" name="lastname" id="lastname"  class="txt">
				                    <input type="text" required="" placeholder="Please input DNI" 		value="" name="dni" 	 id="dni" 		class="txt">
				                    <input type="text" required="" placeholder="Please input salary"	value="" name="salary" 	 id="salary" 	class="txt">
				                    <input type="text" required="" placeholder="Please input telephone" value="" name="telephone"id="telephone" class="txt">
				                    <input type="text" required="" placeholder="Please input age" 		value="" name="age" 	 id="age"  		class="txt">
									                          
				                    <input type="submit" value="save" name="submit" id="submit" class="txt2"> 
									<input type="reset" value="reset" name="reset" class="reset">
				                </form>
				                

							<c:if test="${pageContext.request.method=='POST'}">					                
								<sql:update dataSource="${Empleados}" var="updatedTable">
									INSERT INTO Empleados (nombre,apellido,salario,telefono,dni,edad) VALUES (?, ?, ?, ?, ?, ?);
										<sql:param value="${param.name}" />
										<sql:param value="${param.lastname}" />
										<sql:param value="${param.salary}" />
										<sql:param value="${param.telephone}" />
										<sql:param value="${param.dni}" />
										<sql:param value="${param.age}" />
								</sql:update>
							</c:if>																
			       		</div>
		         	</div>
		       </div>
					
					<div class="col-md-4">
								<c:choose>
  									<c:when test="${updatedTable >= 1}">
											<div class="alert alert-success">
		  										<strong>Success!</strong> added record.
											</div>
										</div>
  									</c:when>
								</c:choose>
			</div>
		</div>
	</body>
</html>