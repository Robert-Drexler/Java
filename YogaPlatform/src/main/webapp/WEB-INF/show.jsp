<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a Task</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/css/show.css">
</head>
<body>
    <div class="main-container">
    <div class="container">
    	<div class=title-box>
    		<div class="title">${course.name} with ${course.instructor.name } </div>
    		<a href="/dashboard">Go Back</a>
    	</div>
        
        <div class="showBox">
			<p>Day: ${course.day } </p>
			<p>Cost: $${course.amount} </p>
			<p>Description: ${course.description} </p>
    </div>
    </div>
    </div>

</body>
</html>