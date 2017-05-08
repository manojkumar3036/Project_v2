<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="resources/images/productimages/" var="images" />
<%@page isELIgnored="false"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-10">
				<c:url value="/addProduct.do" var="inserturl"></c:url>
				<form:form action="${inserturl }" method="post"
					modelAttribute="productdata" enctype="multipart/form-data">
					<div class="form-group">
						<form:hidden path="id" />
						<%-- <form:input path="id" disabled="true" placeholder="Enter Product ID"
						class="form-control" /> --%>

					</div>
					<div class="form-group">


						<form:input path="name" placeholder="Enter Product Name"
							class="form-control" />
						<form:errors path="name" cssClass="error"></form:errors>
					</div>
					<div class="form-group">


						<form:input path="price" placeholder="Enter Product Price"
							class="form-control" />
						<form:errors path="price" cssClass="error"></form:errors>
					</div>
					<div class="form-group">


						<form:input path="description"
							placeholder="Enter Product Description" class="form-control" />
						<form:errors path="description" cssClass="error"></form:errors>
					</div>
					<div class="form-group">


						<form:input path="quantity" placeholder="Enter Product Quantity"
							class="form-control" />
						<form:errors path="quantity" cssClass="error"></form:errors>
					</div>
					<div class="form-group">


						<form:input path="totalPrice" disabled="true"
							placeholder="Total Price" class="form-control" />

					</div>
					<form:input type="file" path="file" />
					<div class="form-group">



						<button class="btn btn-success">Submit</button>
					</div>
				</form:form>


			</div>

			<!-- End of col-md-6 class -->
		</div>
		<!-- End of row -->
		<div class="row">
			<div class="col-md-12">
				<table class="table">
					<thead>
						<tr>
							<th>Image</th>
							<th>ID</th>
							<th>Name</th>
							<th>Price</th>
							<th>Description</th>
							<th>Quantity</th>
							<th>Total Price</th>
							<th>Actions</th>
						</tr>
					</thead>
					<c:forEach items="${productlist }" var="p">
						<tr>
							<td><c:url var="src" value="${images}/${p.id}.jpg"></c:url>
								<img src="${src}" style="width: 60%" align="middle" /></td>
							<td>${p.id }</td>
							<td>${p.name }</td>
							<td>${p.price }</td>
							<td>${p.description }</td>
							<td>${p.quantity }</td>
							<td>${p.quantity * p.price }</td>
							<c:url var="deleteurl" value="/product/delete/${ p.id}"></c:url>
							<td><a href="${deleteurl }"><span
									class="glyphicon glyphicon-trash"></span></a> <c:url
									var="updateurl" value="/product/update/${ p.id}"></c:url> <a
								href="${updateurl }"><span
									class="glyphicon glyphicon-pencil"></span></a></td>

						</tr>

					</c:forEach>


				</table>

			</div>

		</div>
	</div>
	<!-- End of main container -->

</body>




</html>