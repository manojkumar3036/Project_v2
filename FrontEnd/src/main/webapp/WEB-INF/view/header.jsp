<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
	<script type="text/javascript" src="resources/js/app.js"></script>
	<script type="text/javascript" src="resources/js/productController.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">WebSiteName</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<c:url value="/product" var="producturl"></c:url>
				<li><a href="${producturl }">Product</a></li>
				
				
				<%-- <c:url value="/category" var="categoryurl"></c:url>
				<li><a href="${categoryurl }">Category</a></li>
				<c:url value="/supplier" var="supplierurl"></c:url>
				<li><a href="${supplierurl }">Supplier</a></li> --%>
				
			</ul>
			<ul class="nav navbar-nav navbar-right">
			<c:url value="/signup" var="signupurl"></c:url>
				<li><a href="${signupurl }"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
						<c:url value="/signin" var="signinurl"></c:url>
				<li><a href="${signinurl }"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</nav>

	
</body>
</html>
