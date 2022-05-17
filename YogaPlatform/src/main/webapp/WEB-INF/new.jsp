<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Course</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/css/new.css">
</head>
<body>
    <div class="main-container">
    	<div class="container">
       		<div class="title">Create a Course</div>
        	<div class="content">
           		<form:form action="/courses/new" method="post" modelAttribute="course">
           		<form:hidden path="instructor" value="${user_id}"/>
	                <div class="user-details">
	                    <div class="input-box">
	                    	<p>
	                    		Name:
	                    		<form:errors path="name"/>
	                    		<form:input path="name"/>
	                    	</p>
	                    </div>
	                    <div class="input-box">
	                    	<p>
	                    		Day of the Week:
	                    		<form:errors path="day" />
	                    		<form:input path="day" />
	                    	</p>
	                    </div>
	                    <div class="input-box">
	                    	<p>
	                    		Price:
	                    		<form:errors path="amount" />
	                    		<form:input type="number" min="1" max="500" path="amount"/>
							</p>
						</div>
						<div class="input-box">
	                    	<p>
	                    		Description:
	                    		<form:errors path="description" />
	                    		<form:textarea rows="5" cols="40" wrap="soft" path="description" />
	                    	</p>
	                    </div>
	                </div>
	                 <div class="button">
	                    <input type="submit" value="Submit">
	                </div>
              </form:form>  
              
              <a href="/dashboard">Cancel</a>   
               
    		</div>
    	</div>
    </div>

</body>
</html>