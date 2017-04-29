<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp" %>
<html>
<style type="text/css">
.customeSideBar {
	border: 1px solid #dff0d8;
	height: 229px;
}

/* .customeSideBar li {
	/* border-bottom: 1px solid black; */
padding:10px 0;
}
*
/
</style>

<body>

<div class="col-md-3">
				<div class="customeSideBar">
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#">Home</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">Menu 1 <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Submenu 1-1</a></li>
								<li><a href="#">Submenu 1-2</a></li>
								<li><a href="#">Submenu 1-3</a></li>
							</ul></li>
						<c:url value="/product" var="producturl"></c:url>
						<li><a href="${producturl }">Product</a></li>
						<c:url value="/category" var="categoryurl"></c:url>
						<li><a href="${categoryurl }">Category</a></li>
						<c:url value="/supplier" var="supplierurl"></c:url>
						<li><a href="${supplierurl }">Supplier</a></li>
					</ul>
					
					</div><!-- End of custome side bar -->
			</div><!-- End of col-md-3 -->
		
			<div class="col-md-6">
					<c:if test="${isUserClickedCategory=='true' }">

						<jsp:include page="categoryform.jsp"></jsp:include>

					</c:if>
					<c:if test="${isUserClickedSupplier=='true' }">
						<jsp:include page="supplierform.jsp"></jsp:include>

					</c:if>
					<c:if test="${isUserClickedProduct=='true' }">

						<jsp:include page="productform.jsp"></jsp:include>

					</c:if>
					</div>

				
</body>
</html>
