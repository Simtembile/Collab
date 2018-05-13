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
    if (connected) {
        $("#conversation").show();
    }
    else {
        $("#conversation").hide();
    }
    $("#greetings").html("");
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

function sendInput(character) {
	//Send the char and the position in the text area
    stompClient.send("/app/process", {}, JSON.stringify({'character': character ,'position': $('#textarea').prop("selectionStart")  }));
}

function sendStringData(data) {
	//Send the char and the position in the text area
    stompClient.send("/app/datasream", {}, JSON.stringify({'stream':data  }));
}

function getServerInput(message) {
    //using the position of the char, partition the current content of the textarea so that you can insert the character at that position
	 var cursorPos = message.position;
           var v = $('#textarea').val();
           var textBefore = v.substring(0,  cursorPos );
           var textAfter  = v.substring( cursorPos, v.length );
           $('#textarea').val( textBefore+ String.fromCharCode( message.character ) + textAfter );
           
           setCaretPosition('textarea', cursorPos + 1);
           //setCaretPosition('textarea', cursorPos);
}

