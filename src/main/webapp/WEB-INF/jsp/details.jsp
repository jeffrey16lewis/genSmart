<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
	<div class="jumbotron text-center">
		<h2><strong>${employee.fname}&nbsp;${employee.lname}'s Information</strong></h2>
	</div>
	<div class="row">
	<div class="col-md-6">
		<div class="well">
			<div class="row">
					<div class="col-md-4">
						<h6><strong><label>First name:</label></strong>&nbsp; ${employee.fname}</h6>
					</div>
					<div class="col-md-4">
						<h6><strong><label>Last name:</label></strong>&nbsp; ${employee.lname}</h6>
					</div>
					<div class="col-md-4">
						<h6><strong><label>Gender:</label></strong>&nbsp; ${employee.gender}</h6>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<h6><strong><label>Street address:</label></strong>&nbsp; <p>${employee.streetAddress}</p></h6>
					</div>
					<div class="col-md-4">
						<h6><strong><label>City:</label></strong>&nbsp; ${employee.city}</h6>
					</div>
					<div class="col-md-4">
						<h6><strong><label>State:</label></strong>&nbsp; ${employee.state}</h6>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<h6><strong><label>Zip code:</label></strong>&nbsp; ${employee.zipCode}</h6>
					</div>
					<div class="col-md-4">
						<h6><strong><label>Phone number:</label></strong>&nbsp; ${employee.phoneNumber}</h6>
					</div>
					<div class="col-md-4">
						<a href="<c:url value="/update/${employee.id}"/>"><span class="glyphicon glyphicon-pencil "></span></a>
					</div>
				</div>
			</div>
		</div>
	<div class=col-md-6></div>
	</div>
</div>
