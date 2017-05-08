<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<form:form action="" method="post" modelAttribute="customerdata">
					<div class="form-group">


						<form:hidden path="id"  />
					</div>

					<div class="form-group">


						<form:input path="firstName" placeholder="Enter your first name"
							class="form-control" />
					</div>
					<div class="form-group">


						<form:input path="lastName" placeholder="Enter your last name"
							class="form-control" />
					</div>
					<div class="form-group">


						<form:input path="email" placeholder="Enter your email"
							class="form-control" />
					</div>
					<div class="form-group">


						<form:input path="phoneNumber" placeholder="Enter your phone number"
							class="form-control" />
					</div>
					<div class="form-group">


						<button class="btn btn-success">Submit</button>
					</div>
				</form:form>


			</div>
			<!-- End of col-md-6 class -->
		</div>

		<!-- End of row -->
	</div>
	<!-- End of main container -->
</body>
</html>