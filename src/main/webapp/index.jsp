<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <link href="/webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="/webjars/jquery/3.2.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    
    <link href="/resources/static/main.css" rel="stylesheet">
    <script src="/resources/static/function.js"></script>
    
       <title>Collab-Editor</title>
</head>
<body>
	
	<div class="container">
		
		<div class="row">
			<div class="col-md-6 ">	
				<div class="row">
					<div class="col-md-12 dash-heading">
					
						<h1 >The Collab-Editor Online</h1>
						<p> <i>By Simtembile Soginga and Cagri Inal</i> </p>
						
					</div>	
					
					<div class="col-md-12 ">
					
						<img src="/resources/static/cmt.png" width="350px" height="350px" alt="Mountain View">
					</div>	
				</div>		
			</div>

			<div class="col-md-6 ">	
				<div class="row">
					<div class="col-md-2" style="border-right: 1px solid white;" ></div>
					<div class="col-md-10 theform">
					
						<form   action="dashboard-s" method="post" >
							<div class="form-group">
								<input type="text" class="me-textfield" name="username" placeholder="  Username"/>
							</div>
							<div class="form-group">
								<input type="password" class="me-textfield" name="password" placeholder="  Password"/>
							</div>
							
							<input type="Submit"  value="Login" class="btn btn-dark" />
							
						</form>
						
						<div id="signup">Create new account </div>
						
						
						</div>
				</div>
			</div>
		
		</div>
		
	</div>
	
	<div id="signup_overlay" >
		<div class="outer">
			<div class="middle">
				<div id="close-form" style="cursor: pointer;">CLOSE</div>
				<form id="form2"  action="add" method="post" >
						
						<div class="form-group">
							<input type="text" class="me-textfield" name="username" placeholder="  Username"/>
						</div>
						<div class="form-group">
							<input type="text" class="me-textfield" name="email" placeholder="  Email"/>
						</div>
						
						<div class="form-group">
							<input type="password" class="me-textfield" name="password" placeholder="  Password"/>
						</div>
						<div class="form-group">
							<input type="password" class="me-textfield" name="confirm_password" placeholder="  Confirm password"/>
						</div>
						
						<input type="Submit"  value="Register" class="btn btn-dark" />
						
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>