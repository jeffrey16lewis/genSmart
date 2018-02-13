<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<div class="container">
	

	
	        <div class="jumbotron text-center">
	        	<h2 class="form-heading">Log in</h2>
	        	<p>GENIUNELY SMART LLC.</p>
	        </div>
			
		<div class="well">
			<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post" class="form-signin">
		       <c:if test="${param.error != null }"><i class="failed"> Sorry! You entered invalid username/password.</i></c:if>
		        <div class="form-group ${error != null ? 'has-error' : ''} row">
		       		<div class="col-md-4"></div>
			        <div class="col-md-4">
			            <span>${msg}</span>
			            <input name="username" type="text" class="form-control" placeholder="Username"
			                   autofocus="true"/>
			            <input name="password" type="password" class="form-control" placeholder="Password"/>
			            <span>${errorMsg}</span>
			
			            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
		            </div>
		            <div class="col-md-4"></div>
		        </div>
	    	</form:form>
	    </div>
    
    </div>