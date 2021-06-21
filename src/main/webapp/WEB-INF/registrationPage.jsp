<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>Registration Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
			<h1>Register!</h1>
	    
			    <p><form:errors path="user.*"/></p>
			    
			    <form:form method="POST" action="/registration" modelAttribute="user">
			        <p class="form-group row">
			            <form:label class="text-primary col-sm-2 col-form-label" path="username">UserName:</form:label>
			            <form:input class="form-control col-sm-6" path="username"/>
			        </p>
			        <p class="form-group row">
			            <form:label class="text-primary col-sm-2 col-form-label"  path="firstName">First Name:</form:label>
			            <form:input class="form-control col-sm-6" path="firstName"/>
			        </p>
			        <p class="form-group row">
			            <form:label class="text-primary col-sm-2 col-form-label"  path="lastName">First Name:</form:label>
			            <form:input class="form-control col-sm-6" path="lastName"/>
			        </p>
			         <p class="form-group row">
			            <form:label class="text-primary col-sm-2 col-form-label"  path="email">Email:</form:label>
			            <form:input class="form-control col-sm-6" path="email"/>
			        </p>
			        <p class="form-group row">
			            <form:label class="text-primary col-sm-2 col-form-label"  path="password">Password:</form:label>
			            <form:password class="form-control col-sm-6" path="password"/>
			        </p>
			        <p class="form-group row">
			            <form:label class="text-primary col-sm-2 col-form-label"  path="passwordConfirmation">Password Confirmation:</form:label>
			            <form:password class="form-control col-sm-6" path="passwordConfirmation"/>
			        </p>
			        <input type="submit" value="Register!"/>
			    </form:form>
			</div>
		</div>
	</div>

</body>
</html>