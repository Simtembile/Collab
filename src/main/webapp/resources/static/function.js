var TextAreaKeyArray = [];


$(function () {
   
	/*
	$("#test").on("click", function(ev){
		console.log('whats  happening here : ' + $("iframe")[0].contentWindow.jQuery("p"));
		console.log('whats  happening here yeeh?: ' + $("iframe")[0].contentWindow.jQuery("p").html() );
	});*/
	
	
	$("#close-form").click( function(){
		$("#signup_overlay").hide();
	});
	
	$("#signup").click( function(){
		$("#signup_overlay").show();
	});
	
	$("#textarea").on("keypress", function(ev){
		var cursorPosition = $('#textarea').prop("selectionStart");
		//console.log("Current cursor position : " + cursorPosition );
		
		console.log("Current cursor position : " + getCaretPosition($('#textarea')) );
		
		ev = ev || window.event;

		var key = ev.keyCode || ev.which;
		TextAreaKeyArray.push(key);
		
		//First: remove the entered char before sending it to avoid character duplication---
		var v = $('#textarea').val();
        var textBefore = v.substring(0,  cursorPosition -1 );
        var textAfter  = v.substring( cursorPosition, v.length );
        $('#textarea').val( textBefore+textAfter );
        
        setCaretPosition('textarea', cursorPosition);
        sendInput(key);
        //what the 
	});
	
	
	
});


/*function getCaretPosition(editableDiv) {
	  var caretPos = 0,
	    sel, range;
	  if (window.getSelection) {
	    sel = window.getSelection();
	    if (sel.rangeCount) {
	      range = sel.getRangeAt(0); 
	      if (range.commonAncestorContainer.parentNode == editableDiv) {
	        caretPos = range.endOffset;
	      }
	    }
	  } else if (document.selection && document.selection.createRange) {
	    range = document.selection.createRange();
	    if (range.parentElement() == editableDiv) {
	      var tempEl = document.createElement("span");
	      editableDiv.insertBefore(tempEl, editableDiv.firstChild);
	      var tempRange = range.duplicate();
	      tempRange.moveToElementText(tempEl);
	      tempRange.setEndPoint("EndToEnd", range);
	      caretPos = tempRange.text.length;
	    }
	  }
	  return caretPos;
	}
*/

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