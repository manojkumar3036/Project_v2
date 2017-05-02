<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="resources/images/productimages/" var="images" />

<!DOCTYPE html>
<html lang="en">
<head>
<body>
	<jsp:include page="carousel.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-4">
				<table class="table" >
					<thead>
						<tr>
							<th>Product</th>
							<th>Name</th>
						</tr>
					</thead>

					<c:forEach items="${productlist}" var="p">
						<tr>
							<td><img src="${images}/${p.id}.jpg" style="width: 30%" align="middle"></td>
							<td>${p.name}</td>
							<td><a href=""><span class="glyphicon glyphicon-eye-open" style="color:green; font-size:20px;" ></span></a>
							<a href=""><span class="glyphicon glyphicon-shopping-cart" style="color:green; font-size:20px;"></span></a></td>
						</tr>
					</c:forEach>




				</table>

			</div>
			<!-- End of col-md-3 -->

		</div>
		<!-- End of row -->
	</div>
	<!-- End of main container -->



</body>
</html>
