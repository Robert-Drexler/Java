<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
 	<meta charset="UTF-8">
    <link rel="stylesheet" href="/CSS/home.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<div class="main-container">
        <div class="table">
        	<div class="title-box">
            	<div class="title">Welcome, <c:out value="${user.name }"/> </div>
            	<div class="links-box">
            		<p><a href="/logout">logout</a></p>
            		
            		<p><a href="/books/new">Add to my shelf!</a></p>	
            	</div>
            	
            </div>
            <div style="overflow-x:auto;" class="table-content">
                <table class="add-expense">
                    <thead>
                        <tr class="table100-head">
                            <th class="column1">ID</th>
                            <th class="column2">Title</th>
                            <th class="column3">Author Name</th>
                            <th class="column4">Posted By</th>
                        </tr>  
                    </thead>
                    <tbody>
                        <c:forEach var="book" items="${books  }">
                        <tr>
                            <td scope="row"><c:out value="${book.id }" /></td>
                            <td><a href="/books/${book.id}"><c:out value="${book.title}"/></a></td>
                            <td><c:out value="${book.author }" /></td>
                            <td><c:out value="${book.reader.name }" /></td>
                            
                         </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</body>
</html>