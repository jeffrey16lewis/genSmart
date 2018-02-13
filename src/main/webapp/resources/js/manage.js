$(document).ready(function(){
	
	$.getJSON("http://localhost:8080/manageJson", function(data){
	    console.log(data);
	});
});