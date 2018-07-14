<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->
	
	<link href='resources/style/menu.css' rel='stylesheet' type='text/css'>
	
	<div class="container">
	
			<div class="row">
			    <div class="col-xs-8" aling="center">
				    <h1>Control Panel</h1>
			        <button type="button" class="btn btn-labeled btn-default" onclick="location.href='http://localhost:8080/ApplicacionWeb/addRecord.jsp'">
		            <span class="btn-label-default"><i class="glyphicon glyphicon-plus"></i></span>add Employee</button>  
				</div>
			</div>
	
		    <div class="row">
				<div class="col-xs-1" aling="center">
		        	<button type="button" class="btn btn-labeled btn-default"onclick="location.href='http://localhost:8080/ApplicacionWeb/deleteRecord.jsp'" >
		            <span class="btn-label-default"><i class="glyphicon glyphicon-minus"></i></span>del Employee</button>    
				</div>
			</div>
	
		    <div class="row">
   			    <div class="col-xs-1" aling="center">
			        <button type="button" class="btn btn-labeled btn-default" onclick="location.href='http://localhost:8080/ApplicacionWeb/editRecord.jsp'">
	                <span class="btn-label-default"><i class="glyphicon glyphicon-pencil"></i></span>edit Record</button>
				</div>
		    </div>
	
		    <div class="row">
   			   <div class="col-xs-1" aling="center">
			        <button type="button" class="btn btn-labeled btn-default" onclick="location.href='http://localhost:8080/ApplicacionWeb/viewRecord.jsp'">
		            <span class="btn-label-default"><i class="glyphicon glyphicon-eye-open"></i></span>view Record</button>    
				</div>
		    </div>
	
		    <div class="row">
		   		<div class="col-xs-1" aling="center">
		        	<button type="button" class="btn btn-labeled btn-default" onclick="location.href='http://localhost:8080/ApplicacionWeb/listRecords.jsp'">
		            <span class="btn-label-default"><i class="glyphicon glyphicon-play"></i></span>Run Full List</button>    
		    	</div>
		    </div>
		 </div>   
	
	<div class="fondo-b"></div>
	
</body>
</html>