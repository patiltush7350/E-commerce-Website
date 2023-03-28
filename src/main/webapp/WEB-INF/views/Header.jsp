<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@include file="/WEB-INF/views/Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${pageinfo}-FashionWorld</title>
<meta name=viewport content="width=device-width, intial-scale=1">
<link rel="stylesheet" type="text/css" href=''Main.css''>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapin.com/ajax/Libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Fashion World</a>
				</div>
				<c:if test="${!sessionScope.loggedIn}">
					<ul>
						<li><a href="<c:url value='./contactus'/>">Contact Us</a></li>
						<li><a href="<c:url value='./aboutus'/>">About Us</a></li>
						<li><a href="<c:url value='./login'/>">Login</a></li>
						<li><a href="<c:url value='./register'/>">Register</a></li>
					</ul>
				</c:if>
				<c:if test="${sessionScope.loggedIn}">
					<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
						<ul>
							<li><a href="<c:url value='./adminhome'/>">Home</a></li>
							<li><a href="<c:url value='./product'/>">Product</a></li>
							<li><a href="<c:url value='./productDisplay'/>">product
									Catalog</a></li>
							<li><a href="<c:url value='./category'/>">Category</a></li>
							<li><a href="<c:url value='./cart'/>">Cart</a></li>
						</ul>
					</c:if>
					
					
					<c:if test="${sessionScope.role=='ROLE_USER'}">


						<ul class="nav navbar-nav">
							<li><a href="<c:url value='/userhome'/>">Home</a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown">CATEGORY<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="<c:url value='/mens'/>">men's</a></li>
									<li><a href="<c:url value='/productDisplay'/>">women's</a></li>
									<li><a href="<c:url value='/productDisplay'/>">kid's</a></li>
								</ul></li>
							<li><a href="<c:url value='./contactus'/>">Contact Us</a></li>
							<li><a href="<c:url value='./aboutus'/>">About Us</a></li>
							<li><a href="<c:url value='./cart'/>">Cart</a></li>
					</c:if>
                   </c:if>
                    
					<c:if test="${sessionScope.loggedIn }">
						<div class="nav navbar-nav navbar-right">
							<font color="white" face="calibri" size="2">
								Welcome:${sessionScope.username}</font> <a
								href="<c:url value='/perform_Logout'/>" class="btn btn-danger">LOGOUT</a>
						</div>
					</c:if>
			</div>
		</nav>
	</div>
</body>
</html>
