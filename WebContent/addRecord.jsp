<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Record</title>
</head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="resources/style/insert.css" rel="stylesheet">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<body>

<!-- contenido ajax --> 

	<div class="container">
	<div class="row">
    <div class="col-md-8">
		<div class="form_main">
                <h4 class="heading"><strong>Quick </strong> Insert<span></span></h4>
                <div class="form">

           		<%@ page import="controller.InsertService" %>
                
                <form  action="InsertService" method="post" id="contactFrm" name="contactFrm"  >
                    <input type="text" required="" placeholder="Please input Name" 		value="" name="name" 	 id="name" 		class="txt" >
                    <input type="text" required="" placeholder="Please input Lastname" 	value="" name="lastname" id="lastname"  class="txt">
                    <input type="text" required="" placeholder="Please input DNI" 		value="" name="dni" 	 id="dni" 		class="txt">
                    <input type="text" required="" placeholder="Please input salary"	value="" name="salary" 	 id="salary" 	class="txt">
                    <input type="text" required="" placeholder="Please input telephone" value="" name="telephone"id="telephone" class="txt">
                    <input type="text" required="" placeholder="Please input age" 		value="" name="age" 	 id="age"  		class="txt">
                          
                     <button type="submit">enviar</button>                                  
<!--                    <input type="submit" value="save" name="submit" id="submit" class="txt2"> -->
					<input type="reset" value="reset" name="reset" class="reset">
					
                </form>
           		</div>
            </div>
            </div>
	</div>
	
	
	
</div>

	<div class="container">
		<p><a href="/ApplicacionWeb/Login.jsp">Login</a></p>
	</div>

</body>
</html>