<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <link href="/webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="webjars/jquery/3.2.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    
    <link href="/main.css" rel="stylesheet">    
    <script src="/function.js"></script>
    
       <title>Collab-Editor</title>
</head>
<body>
	
	<div class="container">
		
		<div class="row">
			
			<div class="col-md-12 dash-heading">
			
				<h1 >The Collab-Editor Online</h1>
				<p> <i>By Simtembile Soginga and Cagri Inal</i> </p>
				
			</div>			
		
		
		</div>
	
		<div class="row">
			<div class="col-md-6" style="border-right: 1px solid white;"></div>
			<div class="col-md-6 theform">
			
				<form   action="authenticate" method="post" >
					<div class="form-group">
						<input type="text" class="me-textfield" name="username" placeholder="  Username"/>
					</div>
					<div class="form-group">
						<input type="password" class="me-textfield" name="password" placeholder="  Password"/>
					</div>
					
					<input type="Submit"  value="Login" class="btn btn-dark" />
					
				</form>
				
				<a href="authenticate">Create new account</a>
				
				
			</div>
		
		
		</div>
	</div>
	
</body>
</html>