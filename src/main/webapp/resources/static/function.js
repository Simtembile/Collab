var TextAreaKeyArray = [];


$(function () {
   
	$("#close-form").click( function(){
		$("#signup_overlay").hide();
	});
	
	$("#signup").click( function(){
		$("#signup_overlay").show();
	});
	
	$("#textarea").on("keypress", function(ev){
		var cursorPosition = $('#textarea').prop("selectionStart");
		console.log("Current cursor position : " + cursorPosition );
		
		ev = ev || window.event;

		var key = ev.keyCode || ev.which;
		TextAreaKeyArray.push(key);
		
		//First: remove the entered char before sending it to avoid character duplication---
		var v = $('#textarea').val();
        var textBefore = v.substring(0,  cursorPosition -1 );
        var textAfter  = v.substring( cursorPosition, v.length );
        $('#textarea').val( textBefore+textAfter );
        
        setCaretPosition('textarea', cursorPosition);
		
		sendName(key);
	});
	
	
	
});

//an attempt to relocate the cursor
function setCaretPosition(elemId, caretPos) {
    var elem = document.getElementById(elemId);

    if(elem != null) {
        if(elem.createTextRange) {
            var range = elem.createTextRange();
            range.move('character', caretPos);
            range.select();
        }
        else {
            if(elem.selectionStart) {
                elem.focus();
                elem.setSelectionRange(caretPos, caretPos);
            }
            else
                elem.focus();
        }
    }
}