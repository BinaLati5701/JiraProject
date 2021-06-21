<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>Home page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	<header	class="  p-3 mb-2 mt-5 bg-secondary text-white d-flex justify-content-around rounded-top">
			<h1 class="text-info">Welcome to Tache, <c:out value="${currentUser.firstName}"></c:out>!</h1>
			<a href="/login" class="btn btn-primary">Register / Long in</a>
			<form id="logoutForm" method="POST" action="/logout">
		        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		        <input class="float-right mt-2"  type="submit" value="Logout!" />
	    	</form>
		</header>
		<div class="row d-flex justify-content-around rounded">
			<div class="col bg-secondary col-3">
				<h3>Futures</h3>
				<ul>
					<li>Conception & Initiation</li>
					<li>Definition & Planning</li>
					<li>Launch or Execution</li>
					<li>Performance & Control</li>
					<li>Project Close</li>
				</ul>
			</div>

			<div class="col bg-secondary col-5">
				<!-- <img alt="flowers" src="./images/flowers.jpg"
					style="width: 440px; height: 200px;"> --> 
					<img alt="ppp" class="mt-3" src="img/ppp.jpg" style="width: 440px; height: 300px;">
				<!-- <img alt="mine" src="./images/mine.jpg"
					style="width: 440px; height: 200px;"> -->
				<p>Our goal is to create a highly secure and accurate
					Task/Project Management platform that fit different types of
					management methodologies. It will facilitate cross-team alignment
					with a shared workspace and gives you the ability to monitor team
					processes and identify potential weaknesses. It will also
					facilitate the teamwork, and give all members of the project the
					ability to interact with each other and share their ideas.</p>
			</div>

			<div class="col bg-secondary col-3">
				<h3>What we have</h3>
				<ul>
					<li>Project need/problem, Recommended solutions & Feasibility
						study</li>
					<li>Resource requirements, Task identification, Project plan,
						Time frames, Budget planning, Risk Management, Quality plan</li>
					<li>Team meetings, Resource allocation, Focus on Deliverables</li>
					<li>Monitoring progress, Corrective actions, Modifications,
						Statues report</li>
					<li>Project handing, Contract termination, Project analysis</li>
				</ul>

			</div>
			

		</div>
<footer class="  p-3 mb-2 mt-5 bg-secondary text-white d-flex justify-content-around rounded-bottom">
<p><a href="http://localhost:8080/">Contact us</a> | <a href="http://localhost:8080/">email</a> | <a href="http://localhost:8080/">Help</a> </p>
</footer>
	</div>


</body>
</html>