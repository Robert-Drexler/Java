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
            	<div class="title">Namaste, <c:out value="${user.name }"/> </div>
            	<p>Course Schedule</p>
            	<div class="links-box">
            		<p><a href="/logout">logout</a></p>
            			
            	</div>
            	
            </div>
            <div style="overflow-x:auto;" class="table-content">
                <table class="add-expense">
                    <thead>
                        <tr class="table100-head">
                            <th class="column1">Class Name</th>
                            <th class="column2">Instructor</th>
                            <th class="column3">Weekday</th>
                            <th class="column4">Price</th>
                            <th class="column5">Actions</th>
                        </tr>  
                    </thead>
                    <tbody>
                        <c:forEach var="course" items="${courses  }">
                        <tr>
                            
                            <td><a href="/courses/${course.id}"><c:out value="${course.name}"/></a></td>
                            <td><c:out value="${course.instructor.name }" /></td>
                            <td><c:out value="${course.day }" /></td>
                            <td><c:out value="${course.amount}" /></td>
                            <td><c:if test="${user_id == course.instructor.id }"><a href="/courses/edit/${course.id }" class="button" >Edit</a></c:if></td>
                            
                         </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <p><a href="/courses/new">new course</a></p>
            </div>
        </div>
    </div>

</body>
</html>