$(document).ready(function(){
	
	var employee = {};
	$.getJSON("localhost:8080/manage/" + 89, function(data){
		console.log("success");
		employee = data;
		alert(employee);
	});
});