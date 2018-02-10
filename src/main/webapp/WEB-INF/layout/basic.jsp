<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<tiles:importAttribute name="stylesheets"/>
	<c:forEach var="cssLocation" items="${stylesheets}">
		<link href="<c:url value="${cssLocation}"/>" rel="stylesheet" type="text/css">
	</c:forEach>
     <title><tiles:getAsString name="title" /></title>
</head>
<body>
   <tiles:insertAttribute name="header" />
   <tiles:insertAttribute name="navbar" />
   <tiles:insertAttribute name="body"/>
   <tiles:insertAttribute name="footer" />
   
   <tiles:importAttribute name="javascripts"/>
	<c:forEach var="scriptLocation" items="${javascripts}">
		<script type="text/javascript" src="<c:url value="${scriptLocation}"/>"></script>
	</c:forEach>
</body>
</html>