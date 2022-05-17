<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


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
    		<div class="title">Change your Entry</div>
    		<a href="/home">back to the shelves</a>
    	</div>
       		
        	<div class="content">
           		<form:form action="/books/edit/${book.id}" method="post" modelAttribute="book">
           		<input type="hidden" name="_method" value="put">
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
	                    <div class="input-box2">
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