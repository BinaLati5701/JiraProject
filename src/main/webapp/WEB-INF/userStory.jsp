<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!-- c:out ; c:forEach ; c:if -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
  <!-- Formatting (like dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
  <!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Story</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container p-3  bg-secondary text-white rounded">
    
   
    <h3>User Story: <span class="text-primary"><c:out value=""/></span></h3>
	<h3>Created By: <span class="text-primary"><c:out value=""/></span></h3>
	<h3>Tasks: </h3>
	
			    
		        <c:forEach items="${story.tasks}" var="task">
			<p>
				<span class="text-info"><c:out value="${story.task}" />
			</p>
			</c:forEach>
	
	<h3>Started at: <span class="text-primary"><c:out value=""/></span></h3>
	<h3>Updated at: <span class="text-primary"><c:out value=""/></span></h3>
    </div>
</body>
</html>