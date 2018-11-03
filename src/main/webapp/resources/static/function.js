var SPAN_ID = "ran";

$(function () {
  	
	$("#close-form").click( function(){
		$("#signup_overlay").hide();
	});
	
	$("#signup").click( function(){
		$("#signup_overlay").show();
	});
	
	$("#savef").mousedown(function() {
	    $("#datastream").val( tinymce.get('textarea').getContent() );
	    
	    console.log("========datastream  contains :    "+ $("#datastream").val());
	})
});

