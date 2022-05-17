<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title> Dashboard </title>
  <link rel="stylesheet" href="ticketscopy.css">
  <link rel="stylesheet" type="text/css" href="/CSS/test.css">
  <!-- Boxicons CDN Link -->
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bx-user' ></i>
      <span class="logo_name">Welcome,</span>  <!--add session name-->
    </div>
    <ul class="nav-links">
      <li>
        <a href="#" class="active">
          <i class='bx bx-grid-alt' ></i>
          <span class="links_name">Dashboard Home</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-box' ></i>
          <span class="links_name">Manage Role Assignment</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-list-ul' ></i>
          <span class="links_name">Manage Project Users</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-pie-chart-alt-2' ></i>
          <span class="links_name">My Projects</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-coin-stack' ></i>
          <span class="links_name">My Tickets</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-book-alt' ></i>
          <span class="links_name">User Profile</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-user' ></i>
          <span class="links_name">Team</span>
        </a>
      </li>
      <!--********************ADDITIONAL LINKS IF NEEDED*****************************-->
      <!-- <li>
        <a href="#">
          <i class='bx bx-message' ></i>
          <span class="links_name">Messages</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-heart' ></i>
          <span class="links_name">Favrorites</span>
        </a>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-cog' ></i>
          <span class="links_name">Setting</span>
        </a>
      </li> -->
      <li class="log_out">
        <a href="#">
          <i class='bx bx-log-out'></i>
          <span class="links_name">Log out</span>
        </a>
      </li>
    </ul>
  </div>
  <!--********************END SIDE NAV BAR*****************************-->
  <section class="home-section">
  <!--********************TOP NAV BAR*****************************-->  
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">New Ticket</span>
      </div>
      
      <div class="profile-details">
        <!--<img src="images/profile.jpg" alt="">-->
        <span class="admin_name">Demo Dev</span>
      </div>
    </nav>

    <div class="home-content">
      <div class="container">
        <div class="title">Create a Ticket</div>
        <div class="content">
            <form:form action="/courses/new" method="post" modelAttribute="course">
            <form:hidden path="instructor" value="${user_id}"/>
                <div class="user-details">
                    <div class="input-box">
                        <p>
                            Title:
                            <form:errors path="title"/>
                            <form:input path="title"  />
                        </p>
                    </div>
                    <div class="input-box">
                        <p>
                            Description:
                            <form:errors path="description" />
                            <form:textarea rows="5" cols="40" wrap="soft" path="description" />
                        </p>
                    </div>
                    <div class="input-box">
                        <p>
                            Project:
                            <form:errors path="Project" />
                            <form:select path="Project"  />
                        </p>
                    </div>
                    <div class="input-box">
                      <p>
                          Assigned Developer:
                          <form:errors path="assigned" />
                          <form:select path="assigned" />
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
  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>
</html>