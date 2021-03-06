<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div class="container">
	<div class="jumbotron text-center">
		<h2><strong>Employee List</strong></h2>
	</div>
	<div class="row">
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<div class="well">
			 <table class="table table-striped table-condensed table-hover" id="emp-table">
			    <thead>
			      <tr>
			      	<th>Id#</th>
			        <th>First name</th>
			        <th>Last name</th>
			        <th>Action</th>
			      </tr>
			    </thead>
			    <tbody >
			    <c:forEach items="${employees}" var="employee"  >
			      <tr id="${employee.id}">
			      	<td><strong>${employee.id }</strong></td>
			        <td>${employee.fname}</td>
			        <td>${employee.lname}</td>
			        <td><strong><a href="<c:url value="/manage/${employee.id}"/>">details</a></strong><strong> | </strong><strong><a href="<c:url value="/delete-person/${employee.id}"/>">delete</a></strong></td>
			      </tr>
			     </c:forEach>
			    </tbody>
			  </table>
	    </div>
    </div>
    <div class="col-md-4"></div>
    </div>
</div>
