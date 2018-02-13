<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="<c:url value="/"/>">Genuinely Smart LLC.</a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="<c:url value="/"/>">Home</a></li>
      <li><a href="<c:url value="/create"/>">Manage</a></li>
      <li><a href="<c:url value="/manage"/>">Employee List</a></li>
      <li><a href="<c:url value="/payroll"/>">Payroll</a></li>
      <li><a href="#">Job sites</a></li>
    </ul>
  </div>
</nav>
