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
<title></title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/css/show.css">
</head>
<body>
    <div class="main-container">
    <div class="container">
    	<div class=title-box>
    		<div class="title">${book.title}</div>
    		<a href="/home">back to the shelves</a>
    	</div>
        
        <div class="showBox">
		<c:choose>
			<c:when test="${user_id == book.reader.id }">
				<h4>You read ${book.title} by ${book.author }</h4>
					<p>Here are your thoughts</p>
			</c:when>
		<c:otherwise>
			<h4>${book.reader.name} read ${book.title} by ${book.author}</h4>
			<p>Here are ${book.reader.name } thoughts</p>
		</c:otherwise>
	</c:choose>
	
	<p>${book.thought}</p>
	<c:if test="${user_id == book.reader.id }"><a href="/books/edit/${book.id }" class="button" >Edit</a></c:if>
    </div>
    </div>
    </div>

</body>
</html>