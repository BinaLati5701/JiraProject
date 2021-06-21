<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Task</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style2.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
	<div class="container">
	<h3 class="text-success mt-3 mb-4">Create a new task</h3>
	<div class="newtask">
	<p class="text-danger err">
				<form:errors path="task.*" />
			</p>
			<form:form class="form-group col" method="POST" action="/task/new"
				modelAttribute="task">
				
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="title">Title:</form:label>
					<form:input class="col-sm-6" type="text" path="title" />
				</div>
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="related_story">Story:</form:label>
					<form:select class="col-sm-6" path="related_story">
					<c:forEach items="${stories}" var="story">					
						<form:option value="${story.id}"><c:out value="${story.title}"/></form:option>
					</c:forEach>
					</form:select>
				</div>
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="priority">Priority:</form:label>
					<form:select class="col-sm-6" path="priority">
						<form:option value="High">High</form:option>
						<form:option value="Medium">Medium</form:option>
						<form:option value="Low">Low</form:option>
					</form:select>
				</div>
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="status">Status:</form:label>
					<form:select class="col-sm-6" path="status">
						<form:option value="To Do">To Do</form:option>
						<form:option value="In Progress">In Progress</form:option>
						<form:option value="Done">Done</form:option>
					</form:select>
				</div>
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="resolution">Resolution:</form:label>
					<form:input class="col-sm-6" type="text" path="resolution" />
				</div>
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="label">Label:</form:label>
					<form:input class="col-sm-6" type="text" path="label" />
				</div>
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="sprint">Sprint:</form:label>
					<form:input class="col-sm-6" type="text" path="sprint" />
				</div>
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="description">Description:</form:label>
					<form:textarea class="col-sm-6" type="text" path="description" />
				</div>
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="type">Type:</form:label>
					<form:select class="col-sm-6" path="type">
						<form:option value="A1">A1</form:option>
						<form:option value="B1">B1</form:option>
						<form:option value="C1">C1</form:option>
					</form:select>
				</div>
				
				<form:input type="hidden" path="task_creator" value="${logged_user.id}"/>
				<div class="row mb-2">
					<form:label class="col-sm-6 col-form-label" path="assignee">Assignee:</form:label>
					<form:select class="col-sm-6" path="assignee">
					<c:forEach items="${users}" var="user">					
						<form:option value="${user.id}"><c:out value="${user.firstName}"/> <c:out value="${user.lastName}"/></form:option>
					</c:forEach>
					</form:select>
				</div>
				
				<div class="row">
					<input class="btn btn-secondary butnn mt-3" type="submit"
						value="Create" />
				</div>
			</form:form>
	</div>
	</div>

</body>
</html>