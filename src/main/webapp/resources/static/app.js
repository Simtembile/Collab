var stompClient = null;

$(function () {
    $("#form1").on('submit', function (e) {
        e.preventDefault();
    });
    $( "#connect" ).click(function() { connect(); });
    $( "#disconnect" ).click(function() { disconnect(); });
    
    
    
});

function setConnected(connected) {
    $("#connect").prop("disabled", connected);
    $("#disconnect").prop("disabled", !connected);
}

function connect() {
    var socket = new SockJS('/file-sys-channel');
    stompClient = Stomp.over(socket);
    
    stompClient.connect({}, function (frame) {
        setConnected(true);
        
        console.log('Connected: ' + frame);
        
        stompClient.subscribe('/topic/input-processor', function (input) {
            getServerInput(JSON.parse(input.body));//returns a JSON object of Input class
        });
        
    });
}

function disconnect() {
    if (stompClient !== null) {
        stompClient.disconnect();
    }
    setConnected(false);
    console.log("Disconnected");
}

function sendInput(character,spanid) {
	//Send the char and the position in the text area
    stompClient.send("/app/process", {}, JSON.stringify({'character': character ,'position': spanid }));
}

function sendStringData(data) {
	//Send the char and the position in the text area
    stompClient.send("/app/datasream", {}, JSON.stringify({'stream':data  }));
}

function getServerInput(message) {
   
	
	// update the content of the editor with the value from the server
	tinymce.get('textarea').setContent(  message.character );
	
	var ed = tinyMCE.activeEditor;
	
	console.log('SPAN ID : ', SPAN_ID);
	console.log('Other userd ID : ', message.position);
	console.log('Editor : ', ed);
	
	/*------------------------------/
		var content = tinymce.get('textarea').getContent();
		content = content.replace('<span id=\"mce_3\"></span>', '<span id=\"mce_3\">|</span>');
		editor.setContent(content);
	/-------------------------------*/
	
	
	//set caret position again by
	//selecting the span previously pointed to by the caret
	
	var newNode = ed.dom.select('span#' + SPAN_ID);
	
	ed.selection.select(newNode[0]);	
	
	console.log('Found spand: ', newNode);
	
}

