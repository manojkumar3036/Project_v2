<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="resources/images/productimages/" var="images" />
<%-- <spring:url value="resources/css/" var="css" /> --%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Products</title>
<!-- <link rel="styelsheet" href="resources/css/style.css"> -->
<style type="text/css">

.mksitemcontianer{
	background-color:#F2F1EF;
	border:1px solid gray;
	margin:10px;
}
.productname{
color:gray;
color: gray;
    font-size: 22px;
    font-weight: bold;
}
.productdesc{
	font-szie:9px;
	color:#BDC3C7;
}
.productwrapper{
padding:10px;
}
</style>
</head>

<body>
	<jsp:include page="carousel.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">
				<div>

					<c:forEach items="${productlist}" var="p">
						<div class="row">
							<div class="col-md-12">
								<div class="mksitemcontianer">
									<div class="mksimgContainer">
										<img src="${images}/${p.id}.jpg" style="width: 100%"
											align="middle">
									</div>
									<div class="mksproductdetails">
										<div class="row">
											<div class="col-md-7">
												<div class="productwrapper" >
												<div class="productname">
												<p>${p.name}</p>
												</div>
												<div class="productdesc">
													<p>this is a sample text</p>
												</div>
												</div>
											</div>
											
										</div>
										
									</div>
								</div>
								
							</div>
						</div>
					</c:forEach>




				</div>

			</div>
			<!-- End of col-md-4 -->

		</div>
		<!-- End of row -->
		
	</div>
	<!-- End of main container -->
<jsp:include page="footer.jsp"></jsp:include>



