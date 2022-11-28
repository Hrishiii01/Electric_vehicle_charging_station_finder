<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "evcharging";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html lang="en">

<head>
<style>


</style>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <title>EV Charging Station</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body style="background-color:white;">
  <div class="container-scroller">

    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="navbar-brand-wrapper d-flex justify-content-center">
        <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">  
          <a class="navbar-brand brand-logo" href="index.html"><img src="images/logo.png" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg" alt="logo"/></a>
          <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-sort-variant"></span>
          </button>
        </div>  
      </div>
     
	  
	  
	  
    </nav>
    
      <!-- partial -->
	  
	  
		   <div class="card">
                <div class="card-body">
                 <center><h1 class="card-title">Approve Request Table</h1></center>
                  <p class="card-description">
                    
                  </p>
                  <div class="table-responsive">
                    <table class="table table-hover">
                      <thead>
<tr>
<td>Id</td>
<td>Station Name</td>
<td>Address</td>
<td>City</td>
<td>Taluka</td>
<td>District</td>
<td>Open Time</td>
<td>Close Time</td>
<td>Mobile</td>
<td>Pass</td>
<td>Power</td>
<td>Latitude</td>
<td>Longitude</td>
<td>Status</td>
<td>Delete</td>







</tr>
</thread>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from chargingstation where status='Pending'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
                           <tr>
                       <td><%=resultSet.getInt(1) %></td>
                       <td><%=resultSet.getString(2) %></td>
                        <td><%=resultSet.getString(3) %></td>
                        <td><%=resultSet.getString(4) %></td>

                         <td><%=resultSet.getString(5) %></td>
                          <td><%=resultSet.getString(6) %></td>
                     <td><%=resultSet.getInt(7) %></td>
                       <td><%=resultSet.getInt(8) %></td>
                     <td><%=resultSet.getString(9) %></td>
                  <td><%=resultSet.getString(10) %></td>
                          <td><%=resultSet.getString(11) %></td>
                  <td><%=resultSet.getInt(12) %></td>
                    <td><%=resultSet.getInt(13) %></td>

	<td><a  href="approvechargingstation.jsp?id=<%=resultSet.getInt(1)%>"><button type="button" 
name="id" class="approve">approve</button></a></td>
	<td><a href="deletechargingstation.jsp?id=<%=resultSet.getInt("id") %>"><button type="button" 
class="delete">Delete</button></a></td>
					
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
 </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->

        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <script src="vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <script src="js/data-table.js"></script>
  <script src="js/jquery.dataTables.js"></script>
  <script src="js/dataTables.bootstrap4.js"></script>
  <!-- End custom js for this page-->

  <script src="js/jquery.cookie.js" type="text/javascript"></script>
</body>

</html>

