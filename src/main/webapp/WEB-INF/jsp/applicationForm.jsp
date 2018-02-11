<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
	<div class="jumbotron text-center">
		<h2><strong>GENUINELY SMART APPLICATION</strong></h2>
	</div>
	
	<div class="well">
		<div class="row text-center">
			<div class="col-md-12">
				<h3>Personal Information</h3>
			</div>
			<div class="row text-center">
				<div class="col-md-12">
					<hr/>
				</div>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-md-3">
				<label for="fname">First name:</label>
				<input type="text" class="form-control" name="fname" id="fname"/>
			</div>
			<div class="col-md-3">
				<label for="lname">Last name:</label>
				<input type="text" class="form-control" name="lname" id="lname"/>
			</div>
			<div class="col-md-2">
				<label for="birthdate">DOB:</label>
				<input type="date" class="form-control" name="birthdate" id="birthdate"/>
			</div>
			<div class="col-md-4">
				<label for="email">Email:</label>
				<input type="text" class="form-control" name="email" id="email"/>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-lg-6">
				<label for="addressLine1">Address line 1:</label>
				<input type="text" class="form-control" name="addressLine1" id="addressLine1"/>
			</div>
			<div class="col-lg-6">
				<label for="addressLine2">Address line 2:</label>
				<input type="text" class="form-control" name="addressLine2" id="addressLine2"/>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-md-3">
				<label for="city">City:</label>
				<input type="text" class="form-control" name="city" id="city"/>
			</div>
			<div class="col-md-3">
				<label for="state">State:</label>
				<input type="text" class="form-control" name="state" id="state"/>
			</div>
			<div class="col-md-3">
				<label for="zipCode">Zip:</label>
				<input type="text" class="form-control" name="zipCode" id="zipCode"/>
			</div>
			<div class="col-md-3">
				<label for="phoneNumber">Phone number:</label>
				<input type="text" class="form-control" name="phoneNumber" id="phoneNumber"/>
			</div>
		</div>
	</div>
	
	<div class="well">
		<div class="row text-center">
			<div class="col-md-12">
				<h3>Employment History</h3>
			</div>
			<div class="row text-center">
				<div class="col-md-12">
					<hr/>
				</div>
			</div>
		</div>
		<div class="form-group row">
				<div class="col-md-3">
				<label for="lastEmployerName">Place of Employment:</label>
				<input type="text" class="form-control" name="lastEmployerName" id="lastEmployerName"/>
			</div>
			<div class="col-md-3">
				<label for="jobTitle">Job Title:</label>
				<input type="text" class="form-control" name="jobTitle" id="jobTitle"/>
			</div>
			<div class="col-md-3">
				<label for="startDate">Start date:</label>
				<input type="date" class="form-control" name="startDate" id="startDate"/>
			</div>
			<div class="col-md-3">
				<label for="endDate">End date:</label>
				<input type="date" class="form-control" name="endDate" id="endDate"/>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-md-6">
				<label for="jobDescription">Job Description:</label>
				<textarea rows="5" cols="20" class="form-control" name="jobDescription" id="jobDescription"></textarea>
			</div>
			<div class="col-md-6">
				<label for="reasonForLeaving">Reason For Leaving:</label>
				<textarea rows="4" cols="20" class="form-control" name="reasonForLeaving" id="reasonForLeaving"></textarea>
			</div>
		</div>
	</div>
</div>
