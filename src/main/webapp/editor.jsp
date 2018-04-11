<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <link href="/webjars/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="webjars/jquery/3.2.1/jquery.min.js"></script>
    <script src="webjars/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
    
    <link href="/resources/static/main.css" rel="stylesheet">
    <script src="/resources/static/app.js"></script>
    <script src="/resources/static/function.js"></script>
    
    
    <script src="/webjars/sockjs-client/1.0.2/sockjs.min.js"></script>
    <script src="/webjars/stomp-websocket/2.3.3/stomp.min.js"></script>
    
    <title>Collaborative File Editing</title>
</head>
<body>
<noscript><h2 style="color: #ff0000">Seems your browser doesn't support Javascript! Websocket relies on Javascript being
    enabled. Please enable
    Javascript and reload this page!</h2></noscript>
    
<div id="main-content" class="container">
    <div class="row">
        <div class="col-md-12">
            <form class="form-inline">
                <div class="form-group">
                    <button id="connect" class="btn btn-default" type="submit">Connect</button>
                    <button id="disconnect" class="btn btn-default" type="submit" disabled="disabled">Disconnect
                    </button>
                </div>
            </form>
        </div>
        
        
    </div>
    <div class="row">
        
        <div class="col-md-12">
            <textarea style="resize: both; height: 600px; width:100%;" id="textarea"></textarea>
        </div>
    </div>
       
    
</div>
</body>
</html>