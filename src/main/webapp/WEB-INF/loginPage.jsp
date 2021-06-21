<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">  
				<c:if test="${logoutMessage != null}">
			        <c:out value="${logoutMessage}"></c:out>
			    </c:if>
			    <h1>Login</h1>
			    <c:if test="${errorMessage != null}">
			        <c:out value="${errorMessage}"></c:out>
			    </c:if>
			    <form method="POST" action="/login">
			        <p class="form-group row">
			            <label class="text-primary col-sm-2 col-form-label" for="username">Username</label>
			            <input class="form-control col-sm-6" type="text" id="username" name="username"/>
			        </p>
			        <p class="form-group row">
			            <label class="text-primary col-sm-2 col-form-label" for="password">Password</label>
			            <input class="form-control col-sm-6" type="password" id="password" name="password"/>
			        </p>
			        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			        <input type="submit" value="Login!"/>
			    </form>
			  </div>
			</div>
		</div>

</body>
</html>