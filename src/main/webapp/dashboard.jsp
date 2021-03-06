<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <link href="/webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="/webjars/jquery/3.2.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
   
   
    <link href="/resources/static/main.css" rel="stylesheet">
 
    <script src="/resources/static/function.js"></script>
    
   
    <title>Files</title>
</head>
<body>

    
    <div class="container">
    	<div class="row">
    		<div class="col-md-12 dash-heading">
    		
    			<h1>Welcome to your file manager, ${username}</h1>
    		
    		</div>
    		
    	</div>
    	<div class="row">
    		
    		<div class="col-md-2"></div>
    		<div class="col-md-8">
    			
    			<div class="filemanager">
    			
	    			<div  class="btn btn-info operation" role="button">Files</div>
	    			<div  class="btn btn-info operation" role="button"> <a href="/edit/-1"> New file  </a></div>
	    			<div  class="btn btn-info operation" role="button">Delete file</div>
    			
    			</div>
    			
    		
    		</div>
    		<div class="col-md-2"></div>
    	
    	
    	</div>
    	<div class="row">
    		
    		<p>${x}</p>
    		
    		<c:if test="${ empty fileList}" >    		
    			<div>Your files will appear here. No files yet.</div>
    		</c:if>
    		
    		<c:if test="${not empty fileList}">   
	    		<table class="table table-striped">
		    		<c:forEach items="${fileList}" var="e">
					<tr>
						<td>  <a href="/edit/${e.id}"> ${e.filename}   </a> </td>
						
					</tr>
					</c:forEach>
	    		</table>
    		</c:if>
    	
    	</div>
    </div>
    
    

</body>
</html>