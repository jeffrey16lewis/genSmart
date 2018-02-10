<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
	<div class="jumbotron text-center">
		<h2><strong>Enter Employee Details</strong></h2>
	</div>
	<div class="well">
		<form action="/addEmployee" method="POST">
			<div class="row">
				<div class="col-md-3">
					<div class="form-group input-group input-group-sm">
					    <label for="fname">First name:</label>
					    <input name="fname" type="text" class="form-control" id="fname" required/>
			  		</div>
			  	</div>
			  	<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="lname">Last name:</label>
					    <input name="lname" type="text" class="form-control" id="lname" required/>
			  		</div>
			  	</div>
				<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="gender" >Gender:</label>
					    <select name="gender" class="form-control" id="gender" required>
					    	<option />
					    	<option value="Male">Male</option>
					    	<option value="Female">Female</option>
					    </select>
			  		</div>
		  		</div>
		  		<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="phoneNumber">Phone number:</label>
					    <input name="phoneNumber" type="text" class="form-control" id="phoneNumber" required/>
			  		</div>
		  		</div>
	  		</div>
	  		<div class="row">
				<div class="col-md-3">
					<div class="form-group input-group input-group-sm">
					    <label for="steetAddress">Street Address:</label>
					    <input name="streetAddress" type="text" class="form-control" id="streetAddress" required/>
			  		</div>
			  	</div>
			  	<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="city">City:</label>
					    <input name="city" type="text" class="form-control" id="city" required/>
			  		</div>
			  	</div>
				<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="state">State:</label>
					    <input name="state" type="text" class="form-control" id="state" required/>
			  		</div>
		  		</div>
		  		<div class="col-md-3">
			  		<div class="form-group input-group input-group-sm">
					    <label for="zipCode">Zip code:</label>
					    <input name="zipCode" type="text" class="form-control" id="zipCode" required/>
			  		</div>
		  		</div>
	  		</div>
	  		<div class="form-group input-group input-group-sm">
	  			<input type="submit"  value="Submit" class="btn"/>
	  		</div>
		</form>
	</div>
</div>