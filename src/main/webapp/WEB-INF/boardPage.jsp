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
<title>Board Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <!-- <script type="text/javascript" src="js/scrpt.js"></script> -->

    
</head>
<body>
<div class="container">
        <!-- header -->
        <div class="dashhead">
            <div class="headleft float-left">
                <a href="/dashboard"><i class="fa fa-refresh mr-4 text-success" style="font-size:20px;"></i></a>
                <a href="/dashboard"><img src="/img/tache.png" alt="Logo here"></a>
                <h5 class="text-dark ml-5">Tache Dashboard</h5>
            </div>
            <div class="headright float-right">
                
                <a href="/admin"><i class="fa fa-gear text-dark" style="font-size:24px;"></i></a>
                <a href="/"><i class="fa fa-home ml-4 text-dark" style="font-size:24px;"></i></a>
                <a href="/logout"><i class="fa fa-sign-out ml-4 text-dark" style="font-size:24px"></i></a>
  </div>
        </div>

        <!-- content body -->
		<div class="dashbody">
            <!-- nav section -->
			<div class="navsection">
 				<div class="userinfo">
                    <img src="/img/cat.webp" alt="User Avatar">
					<!-- user name here -->
					<p><c:out value="${logged_user.firstName }"></c:out> <c:out value="${logged_user.lastName }"></c:out></p>
                </div>
                <div class="useroption active">
                <a href="/dashboard">Dashboard</a>
                </div>
                <div class="useroption">
                <a href="/dashboard">Features</a>
                </div>
                <div class="useroption">
                <a href="/admin">Settings</a>
                </div>
                <div class="useroption">
                <a href="/accessadmin">Admin</a>
                </div>

            </div>
            <!-- tasks section -->
            <div class="taskbody">
                <div class="taskheader">
                    <div class="taskheading"><p>To do</p></div>
                    <div class="taskheading"><p>In Progress</p></div>
                    <div class="taskheading"><p>Done</p></div>
                </div>
                <div class="content">

                    <div class="taskblock">
                    <c:forEach items="${tasks}" var="task">
                        <div class="taskbox">
                            <div id="para"  draggable="true">
                                <p><a href="/task/${task.id}"><c:out value="${task.title}"></c:out></a></p>
                            </div>
                        </div>
                        </c:forEach>
                        <div class="newbox" >
                       	<a href="/task/new" class="text-light"><span style="font-size: large;">+ </span>Add new task</a>
                        </div>
                        
                    </div>
                    <div class="taskblock">
                        <div class="taskbox">
                        </div>
                        <div class="taskbox">
                        </div>
                        <div class="taskbox">
                        </div>
                    </div>
                    <div class="taskblock">
                        <div class="taskbox">
                        </div>
                        <div class="taskbox">
                        </div>
                        <div class="taskbox">
                        </div>
                        <div class="taskbox">
                        </div>
                    </div>
    
                </div>
            </div>
			
            <!-- extra links for calander, etc -->
			<div class="extLinks">
			<div class="addstory">
			<a href="/story/new"><i class="fa fa-plus text-light" aria-hidden="true"  style="font-size: 36px;"></i></a>
			<a href="/search"><i class="fa fa-search mt-3 text-light" aria-hidden="true"  style="font-size: 36px;"></i></a>
			</div>
                <h1><a href="/google/calender"><span class="iconify mt-3" data-icon="logos-google-calendar" data-inline="false"></span></a></h1>
                <a href="/"><i class="material-icons font-weight-bold mt-3" style="font-size: 36px;">chat</i></a>
            </div>
		</div>

    </div>

   <script src="js/script.js"></script>
</body>
</html>