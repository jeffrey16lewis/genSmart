<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt" %>

<div class="container">
	<div class="jumbotron text-center">
		<h2><strong>Modify Employee, ${employee.fname}</strong></h2>
	</div>
	<div class="well">
		<form action="/manage/update" method="POST">
			<div class="row">
				<div class="col-md-3">
					<div class="form-group input-group input-group-sm">
					    <label for="fname">First name:</label>
					    <h5>${employee.fname}</h5><input name="fname" type="text" class="form-control hidden" id="fname" value="${employee.fname}" required/>
			  		</div>
			  	</div>
			  	<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="lname">Last name:</label>
					    <h5>${employee.lname}</h5><input name="lname" type="text" class="form-control hidden" id="lname" value="${employee.lname}" required/>
			  		</div>
			  	</div>
				<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="gender" >Gender:</label>
					  	 <h5> ${employee.gender}</h5><input name="gender" type="text" class="form-control hidden" id="gender" value="${employee.gender}" required/>
			  		</div>
		  		</div>
		  		<div class="col-md-3">
					<div class="form-group input-group input-group-sm">
					    <label for="birthdate">DOB:</label>
					    <h5>${employee.birthdate}</h5><input name="birthdate" type="text" class="form-control hidden" id="birthdate" value="${employee.birthdate}" required/>
			  		</div>
			  	</div>
		  		
	  		</div>
	  		<div class="row">
				<div class="col-md-3">
					<div class="form-group input-group input-group-sm">
					    <label for="steetAddress">Street Address:</label>
					    <input name="streetAddress" type="text" class="form-control" id="streetAddress" value="${employee.streetAddress}" required/>
			  		</div>
			  	</div>
			  	<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="city">City:</label>
					    <input name="city" type="text" class="form-control" id="city" value="${employee.city}" required/>
			  		</div>
			  	</div>
				<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="state">State:</label>
					    <input name="state" type="text" class="form-control" id="state" value="${employee.state}" required/>
			  		</div>
		  		</div>
		  		<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="zipCode">Zip code:</label>
					    <input name="zipCode" type="text" class="form-control" id="zipCode" value="${employee.zipCode}" required/>
					    <input name="id" type="text" class="form-control invisible" id="id" value="${employee.id}" required/>
			  		</div>
		  		</div>
	  		</div>
	  		<div class="row">
	  			<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="phoneNumber">Phone number:</label>
					    <input name="phoneNumber" type="text" class="form-control" id="phoneNumber" value="${employee.phoneNumber}" required/>
			  		</div>
		  		</div>
		  		<div class="col-md-7">
		  		
		  		</div>
		  		<div class="col-md-2">
		  			<div class="form-group input-group input-group-sm">
	  			<input type="submit"  value="Submit" class="btn"/>
	  		</div>
		  		</div>
	  		</div>
		</form>
	</div>
</div>