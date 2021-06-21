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
<title>Table Two</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<header
			class="  p-3 mb-2 mt-5 bg-secondary text-white d-flex justify-content-between rounded-top">
			<h2>Welcome Folks</h2>
			<a class="btn btn-primary">Long out</a>
		</header>
		<div class="row d-flex justify-content-between rounded">
			<div class="col bg-secondary col-2.5 ">
				<h4>Project Recourse</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

			</div>

			<div class="col bg-secondary col-2.5 ">
				<h4>To do</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>
			<div class="col bg-secondary col-2.5 ">
				<h4>Pending</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
			</div>

			<div class="col bg-secondary col-2.5 ">
				<h4>Done</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>


			</div>

		</div>
	</div>

</body>
</html>