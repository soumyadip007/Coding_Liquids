<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.Base64" import="java.io.UnsupportedEncodingException" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html lang="en">


  <head>

	<link rel="icon" type="image/png" href="Error/pic.jpg"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin page</title>
   

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>


  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="adminhome.jsp">CodingLiquids.com</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
         
        </div>
      </form> 

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        
       
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="Logout" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
     <li class="nav-item ">
          <a class="nav-link" href="adminhome.jsp">

            <i class="fas fa-fw fa-table"></i>
            <span>Add Events</span></a>
        </li>
        <li class="nav-item ">
          <a class="nav-link " href="adminreg.jsp">

            <i class="fas fa-fw fa-table"></i>
            <span>All registrations</span></a>
        </li>
      <li class="nav-item ">
          <a class="nav-link" href="adminevents.jsp">

            <i class="fas fa-fw fa-table"></i>
            <span>Recent Events</span></a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="adminallevents.jsp">
          	
            <i class="fas fa-fw fa-table"></i>
            <span>All Events</span></a>
        </li>


         <li class="nav-item">
          <a class="nav-link" href="adminvacancy.jsp">

            <i class="fas fa-fw fa-table"></i>
            <span>Add Vacancy</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adminjobs.jsp">

            <i class="fas fa-fw fa-table"></i>
            <span>All Vacancy</span></a>
        </li>
          <li class="nav-item active">
          <a class="nav-link" href="adminapplications.jsp">

            <i class="fas fa-fw fa-table"></i>
            <span>Apllications</span></a>
        </li>
       <!--  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
            <span>Pages</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Login Screens:</h6>
            <a class="dropdown-item" href="login.html">Login</a>
            <a class="dropdown-item" href="register.html">Register</a>
            <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">Other Pages:</h6>
            <a class="dropdown-item" href="404.html">404 Page</a>
            <a class="dropdown-item" href="blank.html">Blank Page</a>
          </div>
        </li>--> 
      
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="adminevents.jsp">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">All events</li>
          </ol>

          <!-- Icon Cards-->
         

          <!-- Area Chart Example
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-chart-area"></i>
              Area Chart Example</div>
            <div class="card-body">
              <canvas id="myAreaChart" width="100%" height="30"></canvas>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div> -->

          <!-- DataTables Example -->
        

           
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
             All events</div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                     <th>Id</th>
                      <th>Name</th>
                        <th>DOB</th>
                         <th>Email</th> 
                         <th>Institution</th>
                          <th>Skills</th> 
                          <th>Education</th> 
                            <th>Role</th> 
                           <th>Why should we hire you?</th>
                         <th>Time</th>  
                    </tr>
                    
                  </thead>
                  <tfoot>
                    <tr> 		
                    	<th>Id</th>
                      <th>Name</th>
                        <th>DOB</th>
                         <th>Email</th> 
                         <th>Institution</th>
                          <th>Skills</th> 
                          <th>Education</th> 
                            <th>Role</th> 
                           <th>Why should we hire you?</th>
                         <th>Time</th>  
                     
                    </tr>
                  <tbody>
        
          
       
       
          <%String data,user,pass;%>
       <%
       ServletContext ct=getServletContext();
	  data=ct.getInitParameter("path");
	  user=ct.getInitParameter("user");
	  pass=ct.getInitParameter("pass");
	  %>
       
          <sql:setDataSource
	        var="con"
	        driver="com.mysql.jdbc.Driver"
	       url="<%=data %>"
	        user="<%=user %>" 
	        password="<%=pass %>"  /> 
	
	     
	    <sql:query var="listUsers"   dataSource="${con}">
	        SELECT * FROM apply ;
	    </sql:query>
    
    
                    <c:forEach var="user"
                     items="${listUsers.rows}">
           
                    <tr>
                   
                         <td><strong>${user.id}<strong></strong></td>
                      <td>${user.name}</td>
                         <td>${user.dob}</td>
                      <td>${user.email}</td>
                      <td>${user.inst}</td>
                        <td>${user.skills}</td>
                      <td>${user.edu}</td>
                      <td>${user.role}</td>
                       <td>${user.why}</td>
                         <td>${user.time}</td>
           
                    </tr>
                  
                </c:forEach>
                  
                  </tbody>
                </table>
              </div>
            </div>
            <div class="card-footer small text-muted">Codingliquids.com</div>
          </div>

        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright � https://github.com/soumyadip007</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
   
   
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">�</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="Logout">Logout</a>
          </div>
        </div>
      </div>
    </div>

   
   
   
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>

  </body>

</html>
