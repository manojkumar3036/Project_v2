<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
	<c:url value="/addcategory.do" var="categoryurl"></c:url>
		<form:form action="${categoryurl}" method="post"
			modelAttribute="categorydata">
			<div class="row">
				<div class="col-md-6">

					<div class="form-group">
						<form:hidden path="id" />
					</div>
					<div class="form-group">


						<form:input path="categoryName" placeholder="Enter Category Name"
							class="form-control" />
					</div>
					<div class="form-group">


						<button class="btn btn-success">Submit</button>
					</div>


				</div>
				<!-- End of col-md-6 class -->
			</div>
			<!-- End of row -->
			<div class="row">
				<div class="col-md-8">
					<table class="table">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Action</th>

							</tr>
						</thead>
						<c:forEach items="${categorylist }" var="c">
							<tr>
								<td>${c.id }</td>
								<td>${c.categoryName }</td>
								<c:url var="deleteurl" value="/category/delete/${ c.id}"></c:url>
								<td><a href="${deleteurl }"><span
										class="glyphicon glyphicon-trash"></span></a></td>
							</tr>


						</c:forEach>

					</table>

				</div>
		
	</div>
	</form:form>
	</div>
	<!-- End of main container -->
</body>
</html>