<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a book</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
    <div class="main-container">
    	<div class="container">
       		<div class="title">Add a Book to Your Shelf!</div>
        	<div class="content">
           		<form:form action="/books/new" method="post" modelAttribute="book">
           		<form:hidden path="reader" value="${user_id}"/>
	                <div class="user-details">
	                    <div class="input-box">
	                    	<p>
	                    		Title:
	                    		<form:errors path="title"/>
	                    		<form:input path="title"/>
	                    	</p>
	                    </div>
	                    <div class="input-box">
	                    	<p>
	                    		Author:
	                    		<form:errors path="author" />
	                    		<form:input path="author" />
	                    	</p>
	                    </div>
	                    <div class="input-box">
	                    	<p>
	                    		Thought:
	                    		<form:errors path="thought" />
	                    		<form:input path="thought" type="textbox"></form:input>
							</p>
						</div>
	                </div>
	                 <div class="button">
	                    <input type="submit" value="Submit">
	                </div>
              </form:form>     
               
    		</div>
    	</div>
    </div>

</body>
</html>