<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
<title>Admin page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="/admin">Admin Page</a>
	    <ul class="navbar-nav px-3">
            <li class="nav-item">
			    <form id="logoutForm" method="POST" action="/logout">
			        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			        <input class="float-right mt-2" type="submit" value="Logout!" />
			    </form>
            </li>
        </ul>       
    </nav>
    <div class="container-fluid">       
        <div class="row">
            <nav class="col-md-2 d-none d-md-block bg-light sidebar">
                <div class="sidebar" style="height: 1000px;">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link" style="margin-top: 50px;" href="/home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/projects">Projects</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/issues">Issues</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/boards">Dashboard</a>
                        </li> 
                        <li class="nav-item">
                            <a class="nav-link" href="/portfolio">Portfolio</a>
                        </li> 
                        <li class="nav-item">
                            <a class="nav-link" href="/roles">Roles</a>
                        </li> 
                        <li class="nav-item">
                            <a class="nav-link" href="/permissions">Permissions</a>
                        </li>                          
                    </ul>
                </div>
            </nav>
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
                <h1 class="text-info" style="margin-top: 50px; text-align: center;">USER ROLES</h1>
                <hr>
                <table class="table table-striped table-dark">
				  <thead>
				    <tr>		     
				      <th scope="col">Name</th>
				      <th scope="col">Email</th>
				      <th scope="col">Action</th>
				    </tr>
				  </thead>
				  <tbody>
				  	<c:forEach items="${all_users}" var="user">
					    <tr>
					    	<th scope="row"><a href="/users/${user.id}"><c:out value="${user.firstName}"></c:out> <c:out value="${user.lastName}"></c:out></a></th>
					    	<td><c:out value="${user.email}"></c:out></td>
					    	<td>
					    		<div class="row">
						    		<a class="btn btn-info" href="/makeadmin">Make Admin</a>
						    		<form  class="ml-3" action="/makeadmin/${user.id}/delete" method="post">
										<input type="hidden" value="delete" name="_method">
										<input type="submit" class="btn btn-info" value="Delete">
									</form>
								</div>
					    					    		
					    	</td>    				    	 
					    </tr>		    
				    </c:forEach>
				  </tbody>
				</table>			                
            </main>
        </div>
    </div>    
</body>
</html>