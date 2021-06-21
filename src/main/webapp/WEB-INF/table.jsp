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
<title>Table</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container ">
    <header
			class="  p-3 mb-2 mt-5 bg-secondary text-white d-flex justify-content-around rounded-top">
			<h2>Welcome Folks</h2>
			<a class="btn btn-primary">Register / Long in</a>
		</header>
    <h1>All Tasks</h1>
    <table class="table table-striped table-dark">
	  <thead>
	    <tr>
	      <th scope="col">Ticket # </th>
	      <th scope="col">Creator </th>
	      <th scope="col">Task </th>
	      <th scope="col">Priority </th>
	      <th scope="col">Assigned to </th>
	    </tr>
	  </thead>
	  <tbody>
	    <tr>
	      <th scope="row">1</th>
	      <td>Mark</td>
	      <td>Otto</td>
	      <td>@mdo</td>
	      <td>@mdo</td>
	    </tr>
	    <tr>
	      <th scope="row">2</th>
	      <td>Jacob</td>
	      <td>Thornton</td>
	      <td>@fat</td>
	      <td>@mdo</td>
	    </tr>
	  </tbody>
</table>
    </div>

</body>
</html>