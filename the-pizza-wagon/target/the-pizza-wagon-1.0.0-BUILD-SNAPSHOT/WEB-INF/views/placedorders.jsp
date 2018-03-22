<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-control" content="no-cache">

<title>Pizza Order Manager</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/r/bs-3.3.5/jq-2.1.4,dt-1.10.8/datatables.min.css"/>	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<spring:url value="/resources/css/placedorders.css"/>">
</head>
<body>
	<jsp:include page="../views/fragments/navbar.jsp"></jsp:include>		
	<br/>	
	<div class="container table-panel-color">
		<h2 align="center">Order History</h2>	
		<div class="col-md-12">
			<div class="table-responsive">
			<table class="table table-bordered compact hover nowrap" style="text-align:center;" id="prevordertable">
				<thead>	
					<tr>
						<th>Order no.</th>
						<th>Ordered On</th>
						<th>Item Name</th>
						<th>Category</th>
						<th>Size</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Soft Crust</th>
						<th>Extra Cheese</th>
						<th>Veg Topping</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${orders}" var="order">
					<tr>
						<td>${order.orderNo}</td>
						<td>${order.dt_made}</td>
						<td>${order.itemName}</td>
						<td>${order.category}</td>
						<td>${order.size}</td>
						<td>${order.quantity}</td>
						<td>${order.price}</td>
						<td><c:choose><c:when test="${order.toppings[0]=='Yes'}">
							<span class="glyphicon glyphicon-ok"></span>
						</c:when></c:choose></td>
						<td>
							<c:choose>
								<c:when test="${order.toppings[1]=='Yes'}">
									<span class="glyphicon glyphicon-ok"></span>
								</c:when>   
							</c:choose>
						</td>
						<td>
							<c:choose>
								<c:when test="${order.toppings[2]=='Yes'}">
									<span class="glyphicon glyphicon-ok"></span>
								</c:when>   
							</c:choose>
						</td>
					</tr>	
				</c:forEach>
			</tbody>
			</table>
			</div>
		</div>
	</div>
	<br/>
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>	
</body>
<script type="text/javascript" charset="utf-8">
$(document).ready(function() {
	$(document).ready(function (){
		var table = $("#prevordertable").DataTable({
	    	stateSave: true,
			"deferRender": true,
	        "aaSorting": [[ 0, "desc" ]],
	        dom: "Blfrtip",
	    	select: true
   		});
		$("div.dataTables_wrapper").addClass("form-group");
		$("div.dataTables_length").css({"float":"left","font-family":"Open Sans","font-size":"14px"});
		$("div.dt-buttons").css({"display":"inline-block","margin-left":"2%"});
		$("div.dataTables_filter input").addClass("form-control");
		$("div.dataTables_filter input").attr("placeholder", "Search" );
	});   
});
</script>
</html>