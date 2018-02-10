<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="container">
	<div class="jumbotron text-left" id="payroll-run">
		<h2><strong>Calculate Pay</strong></h2>
	</div>
	<div class="well">
		<div class="row">
			<div class="col-md-2">
				<table class="table table-striped table-hover">
				    <thead>
				      <tr>
				        <th>
				        	<div class="form-group col-md-1">
				        		<p>Active Employees</p>
				        	</div>
				        </th>
				        <th></th>
				        <th>
				        	<div class="form-group col-md-1">
				        		<p>Mon</p>
				        	</div>
				        </th>
						<th>
				        	<div class="form-group col-md-1">
				        		<p>Tue</p>
				        	</div>
				        </th><th>
				        	<div class="form-group col-md-1">
				        		<p>Wed</p>
				        	</div>
				        </th><th>
				        	<div class="form-group col-md-1">
				        		<p>Thru</p>
				        	</div>
				        </th><th>
				        	<div class="form-group col-md-1">
				        		<p>Fri</p>
				        	</div>
				        </th><th>
				        	<div class="form-group col-md-1">
				        		<p>Sat</p>
				        	</div>
				        </th><th>
				        	<div class="form-group col-md-1">
				        		<p>Sun</p>
				        	</div>
				        </th>
				      </tr>
				    </thead>
				    <tbody>
				    	<c:forEach items="${employees}" var="employee">
					        <tr>
					            <td><strong>${employee.fname}</strong></td>
					            <td><strong>${employee.lname}</strong></td>
					            <td>
									<div class="form-group col-md-1">
						                <input type="text" class="form-control" /><p><strong>hrs</strong></p>
						            </div>
						        </td>
				       			<td>
									<div class="form-group col-md-1">
						                <input type="text" class="form-control" /><p><strong>hrs</strong></p>
						            </div>
						        </td><td>
									<div class="form-group col-md-1">
						                <input type="text" class="form-control" /><p><strong>hrs</strong></p>
						            </div>
						        </td><td>
									<div class="form-group col-md-1">
						                <input type="text" class="form-control" /><p><strong>hrs</strong></p>
						            </div>
						        </td><td>
									<div class="form-group col-md-1">
						                <input type="text" class="form-control" /><p><strong>hrs</strong></p>
						            </div>
						        </td><td>
									<div class="form-group col-md-1">
						                <input type="text" class="form-control" /><p><strong>hrs</strong></p>
						            </div>
						        </td><td>
									<div class="form-group col-md-1">
						                <input type="text" class="form-control" /><p><strong>hrs</strong></p>
						            </div>
						        </td>
					        </tr>
				        </c:forEach>
				        
				    </tbody>
				  </table>
			</div>
			
			<!-- <div class="col-md-2">
				<table class="table table-striped">
				<thead>
					<tr>
						<th>Mon</th>
						<th>Tues</th>
						<th>Wed</th>
						<th>Thru</th>
						<th>Fri</th>
						<th>Sat</th>
						<th>Sun</th>
					</tr>
				</thead>
					<tbody>
						<tr>
						<td>
							<div class="form-group col-md-1">
				                <input type="text" class="form-control" />
				            </div>
				        </td>
				        <td>
							<div class="form-group col-md-1">
				                <input type="text" class="form-control" />
				            </div>
				        </td>
				        <td>
							<div class="form-group col-md-1">
				                <input type="text" class="form-control" />
				            </div>
				        </td>
				        <td>
							<div class="form-group col-md-1">
				                <input type="text" class="form-control" />
				            </div>
				        </td>
				        <td>
							<div class="form-group col-md-1">
				                <input type="text" class="form-control" />
				            </div>
				        </td>
				        <td>
							<div class="form-group col-md-1">
				                <input type="text" class="form-control" />
				            </div>
				        </td>
				        <td>
							<div class="form-group col-md-1">
				                <input type="text" class="form-control" />
				            </div>
				        </td>
						</tr>
					</tbody>	
				</table>
			</div> -->
			
		</div>
		<div class="row">
		   <div class="col-md-7"></div>
		   <div class="col-md-2">
		   <button class="btn">Submit</button>
		   </div>
		</div>
	</div>
</div>