<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <link href="/webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="/webjars/jquery/3.2.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    
    <link href="//cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
    <script src="https://cloud.tinymce.com/stable/tinymce.min.js?apiKey=sup8ilxav0wikby8o6md9rdm82n8i8tabnaws4zr8iz2emio"></script>
    
    
    <link href="/resources/static/main.css" rel="stylesheet">
    <script src="/resources/static/app.js"></script>
    <script src="/resources/static/function.js"></script>
    
    
    <script src="/webjars/sockjs-client/1.0.2/sockjs.min.js"></script>
    <script src="/webjars/stomp-websocket/2.3.3/stomp.min.js"></script>
    
    
  	<script type="text/javascript">  
	  	//tinymce.init({ selector:'#textarea' });
	  	
	  	
	  	
		tinymce.init({
			   selector: "#textarea",
			   plugins: "a11ychecker, advcode, linkchecker, media mediaembed, powerpaste, tinymcespellchecker",
			   toolbar: "a11ycheck, code",
			   init_instance_callback: function (editor) {
				    editor.on('keyup', function (e) {
				    	
				    	var ed = tinyMCE.activeEditor;

				    	//add an empty span with a unique id to control caret position
				    	var endId = tinymce.DOM.uniqueId();
				    	
				    	SPAN_ID = endId;
				    				    	
				    	var span = tinymce.activeEditor.getDoc().createElement('span');
						span.setAttribute('id', endId );
						tinymce.activeEditor.execCommand('mceInsertContent', false, span.outerHTML);
				    	
				    	
				    	//select this span to focus caret at that position
				    	var newNode = ed.dom.select('span#' + endId);
				    	ed.selection.select(newNode[0]);
				    	 
				    	sendInput( tinymce.get('textarea').getContent(), endId );
				    	
				    	//analysis
				    	console.log('Content', tinymce.get('textarea').getContent());				     
				      	console.log('span:', span);
				 
				    });
				  }
			   
			});
  	</script>
  	
  	<style>
  	
  		body {
				padding: 25px 2px 0 2px;
		}
  	
  	</style>
    
    <title>Collaborative File Editing</title>
</head>
<body>
	<noscript><h2 style="color: #ff0000">Seems your browser doesn't support Javascript! Websocket relies on Javascript being
	    enabled. Please enable
	    Javascript and reload this page!</h2></noscript>
	    
	<div id="main-content" class="container">
	    <div class="row" style="background-color: lightblue;padding-top:5px;">
	        <div class="col-md-4">
	            <form id="form1" class="form-inline">
	                <div class="form-group">
	                    <button id="connect" class="btn btn-info" type="submit">Connect</button>
	                    <button id="disconnect" class="btn btn-info" type="submit" disabled="disabled">Disconnect
	                    </button>
	                </div>
	            </form>
	        </div> 
	        <div class="col-md-4">
	            <form class="form-inline" action="/share" method="post" >
	                <div class="form-group">
	                	<input type="hidden" name="fileid" value="${file.id}">
	                    <input type="text" name="shareto" style="height: 36px" placeholder="  username"/>
	                    <input type="submit" class="btn btn-info" style="width: 170px" value="Share" />
	                </div>
	            </form>
	        </div> 
	        
	        <div class="col-md-4">
	            <!-- <div id="save" style="cursor: pointer;text-align: center;color: black;" class="bg-success">Save</div> -->
	            
	            <form class="form-inline" action="/save-doc" method="post">	                
	                <div class="form-group">
	                	
	                	<input type="hidden" name="fileid" value="${file.id}">
	                    <input type="text" name="filename" style="height: 36px" value="${file.filename}"/>  
	                    <input type="hidden" name="datastream" id="datastream"/>                  
	                	<input type="submit" id="savef" class="btn btn-info" style="width: 50%" value="Save">
	            	</div>
	            </form>
	            
	        </div>
	        
	    </div>
	    
	    
	    <div class="row" style="background-color: lightblue;">
	       			
			 <!--  Create the editor container -->
	        <div class="col-md-12">
	            <textarea style="resize: both; height: 600px; width:100%;" id="textarea" name="textinput">${file.datastream}</textarea>
	        </div>
	        
	       <!--
	        <div class="col-md-12">
	            <div style="background-color: white;color: black;resize: both; height: 600px; width:100%;" id="textarea">${file.datastream}</div>
	        </div>-->
	    </div>
	       
	    
	</div>
	
	<!-- Include the Quill library 
	<script src="//cdn.quilljs.com/1.3.6/quill.min.js"></script>
	
	 
	<script>
		var quill = new Quill('#textarea', {
			  modules: { toolbar: ['bold', 'italic', 'underline'] },
			  theme: 'snow'
			});
	</script>-->
</body>
</html>