	<%@ page import = "java.util.*" %>
	<%@ page import = "modelo.DaoMysql" %>
	<%@ page import = "modelo.Empleado" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="headerMenu.jsp" %>

	<!-- 
	<div class="container">
		<form action="fullList" method="post">
			<input type="text" id="search" name="search" placeholder="insert keyword ... " autofocus>
			<input type="submit" id="submit" name="submit" value="search">
		</form>
	</div>
 -->
	
	 <% 
	 	DaoMysql dao = new DaoMysql();
	 
	 	List<Empleado> list = dao.retrieve(); %>   
		
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
				    	</tr>
				  </thead>	
				  <tbody>	
			<% for(int index = 0; index <= list.size() - 1; index ++){%>
	            <tr>
	                <td><%= index%>
	                <td><%= list.get(index).getNombre() %>
	                <td><%= list.get(index).getApellido() %>
	                <td><%= list.get(index).getEdad() %>
	                <td><%= list.get(index).getSalario()%> 
	                <td><%= list.get(index).getDNI()%>  
	            </tr>
		   <% } %>		
				 </tbody>
				</table>
				</div>
			</div>
</body>
</html>