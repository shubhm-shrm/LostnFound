<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.util.ArrayList" %>
  <%@ page import="product.Product" %>  
<%@ page import="database.DatabaseQuery" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>	<head>
		<title>LOST 'N' FOUND PORTAL, LNMIIT</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href="css/bootstrap_min.css" rel="stylesheet" />
		<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:700italic,400,300,700' rel='stylesheet' type='text/css'>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<link rel="stylesheet" href="css/style.css" />
		<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
	</head>

	<body class="homepage">

	<!-- Header -->
		<div id="header">
			<div class="container">
					
				<!-- Logo -->
					<div id="logo">
						<h4><a href="#">LOST 'n' FOUND</a></h4>
					</div>
				
				<!-- Nav -->
					<nav id="nav">
						<ul>
					 	<%
 							if((session.getAttribute("admin_id"))!=null)
 							{
							%> 
								<li><a href="Controller2?mode=logout"><i>Log Out</i></a></li>	
				 				<li> hello <%= session.getAttribute("admin_id") %> </li>
				 			<% 
							 }
				 			else
							{ 	
							%>
							<li><a href="admin_signup.jsp">Sign Up</a></li>
							<li><a href="admin_login.jsp">Login</a></li>
							<% 
							}
							%>  
						</ul>
					</nav>

			</div>
		</div>
	<!-- Header -->
		
	<!-- Banner -->
		<div id="banner">
			<div class="container">
			</div>
		</div>
	<!-- /Banner -->
	
	<!--  Navigation  -->
	<div class="menu">
		<div class="menu_list">
			<ul class="main-menu">
				<li><a href="Controller?mode=admin_display&status=0"><i>LOST</i></a></li>
				<li><a href="Controller?mode=admin_display&status=1"><i>FOUND</i></a></li>
				<li><a href="admin_approve.jsp"><i>APPROVE</i></a></li>
				<li><a href="admin_archieve.jsp"><i>MOVE TO ARCHIEVE</i></a></li>
			</ul>
		</div> 
	</div>
	<!--  Navigation  -->

	<!-- Main -->
	<div>
<!--  retrieve your list from the request, with casting 
 request.getAttribute("list") method will return Object that we need to cast to ArrayList
 print the information about every category of the list -->

<% ArrayList<Product> ProductList = (ArrayList<Product>) request.getAttribute("list"); %>
 <table border="1"  cellspacing="2">
	<tr>
            <td> Category </td>
            <td> College_id </td>
            <td> Place </td>
            <td> Description  </td>
        </tr>
	<% for(Product Plist : ProductList) {%>
		<tr>
            <td><%= Plist.getCategory() %></td>
            <td><%= Plist.getCollege_id() %></td>
            <td><%= Plist.getPlace() %></td>
            <td><%= Plist.getDescription() %> </td>
        	<td> <a href="Controller?mode=delete&id=<%= Plist.id %>"><button><img style="box-shadow:0px 0px 0px 0px rgba(50, 50, 50, 0.75);" src="images/delete.jpg" height="20" alt="Delete"> </button></a></td>
        </tr>
        <% } %>
</table>		
	</div>	
		<div id="copyright" class="container">
			Design: <a href="#">SHUBH</a> Images:(<a href="#">LNMIIT</a>)
		</div>
	</body>
</html>		