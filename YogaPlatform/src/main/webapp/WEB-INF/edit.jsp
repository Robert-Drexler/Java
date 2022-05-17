<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit your entry</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
    <div class="main-container">
    	<div class="container">
    		<div class=title-box>
    		<div class="title">${course.name}</div>
    		<a href="/dashboard">Cancel</a>
    	</div>
       		
        	<div class="content">
           		<form:form action="/courses/edit/${course.id}" method="post" modelAttribute="course">
           		<input type="hidden" name="_method" value="put">
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
	                    		<form:input path="description" />
	                    	</p>
	                </div>
	                 <div class="button">
	                    <input type="submit" value="Submit">
	                    
	                </div>
              </form:form>   
              
                <p>
                	<form action="/courses/delete/${course.id}" method="post">
									<input type="hidden" name="_method" value="delete"> 
									 <div class="button-small">
                    					<input type="submit" value="Delete">
               						 </div>
								</form>
                </p>
               </div>
    		</div>
    	</div>
    </div>

</body>
</html>