<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pizza Order Manager</title>
<meta http-equiv="Cache-control" content="no-cache">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<spring:url value="/resources/css/placedorders.css"/>">
</head>
<body>
<jsp:include page="../views/fragments/navbar.jsp"></jsp:include>
<br/>
<div class="container table-panel-color">
<br/>
	<div class="alert alert-success">
		<i class="fa fa-exclamation "></i>
	    Order successfully booked!
	</div>
		<h2 align="center">Order Summary</h2>	
		<div class="col-md-12">
			<div class="table-responsive">
			<table class="table table-bordered compact hover nowrap" style="text-align:center;" id="prevordertable">
				<thead>	
					<tr>
						<th>Item Name</th><th>Category</th><th>Size</th><th>Quantity</th><th>Price</th><th>Soft Crust</th>
						<th>Extra Cheese</th><th>Veg Topping</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${order.itemName}</td>
						<td>${order.category}</td>
						<td>${order.size}</td>
						<td>${order.quantity}</td>
						<td>${order.price}</td>
						<td>
							<c:choose>
								<c:when test="${order.toppings[0]=='Soft Crust'}">
									<span class="glyphicon glyphicon-ok"></span>
								</c:when>  
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${order.toppings[1]=='Extra Cheese' or order.toppings[0]=='Extra Cheese'}">
									<span class="glyphicon glyphicon-ok"></span>
								</c:when>   
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${order.toppings[2]=='Veg Topping' or order.toppings[1]=='Veg Topping' or order.toppings[0]=='Veg Topping'}">
									<span class="glyphicon glyphicon-ok"></span>
								</c:when>
							</c:choose>
				 		</td>
					</tr>	
			</tbody>
			</table>
			<spring:url value="/order/downloadPDF" var="formUrl"/>
			<form:form class="orderpdfform" action="${formUrl}" method="POST" modelAttribute="order">											        					
		       	<input type="hidden" class="form-control" value="${order.orderNo}" name="orderNo"/>
		       	<input type="hidden" class="form-control" value="${order.dt_made}" name="dt_made"/>
		       	<input type="hidden" class="form-control" value="${order.itemName}" name="itemName"/>
		       	<input type="hidden" class="form-control" value="${order.itemId}" name="itemId"/>
		       	<input type="hidden" class="form-control" value="${order.category}" name="category"/>
		       	<input type="hidden" class="form-control" value="${order.username}" name="username"/>
				<input type="hidden" class="form-control" value="${order.quantity}" name="quantity"/>
				<input type="hidden" class="form-control" value="${order.size}" name="size"/>
				<input type="hidden" class="form-control" value="${order.price}" name="price"/>
				<button id="orderpdf" type="submit" class="btn btn-primary pull-right"> Bill  <i class="fa fa-download"></i></button>
			</form:form>
			<a class="btn btn-primary pull-right" href="<spring:url value="/home"/>">Return home</a>
			<br/>
			<br/>
			<br/>
        </div>
	</div>
</div>
<br/>
<br/>
<br/>
<jsp:include page="../views/fragments/footer.jsp"></jsp:include>
</body>
</html>