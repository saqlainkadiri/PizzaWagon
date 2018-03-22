<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-control" content="no-cache">
<title>Pizza Order Manager</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="<spring:url value="/resources/css/items.css"/>" type="text/css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>	
	<jsp:include page="../views/fragments/navbar.jsp"></jsp:include>	
	<br/>
	<div class="container">
	  <div class="row"> 
	  <c:forEach items="${items}" var="item" varStatus="myIndex">
		<spring:url value="/order/confirmorder" var="formUrl"/>
		<form:form class="orderform" action="${formUrl}" method="POST" modelAttribute="order">											        					
	    <div class="block span3 col-md-3">
	      <div class="product">
			<spring:url value="/resources/images" var="images" />      
	        <img src="${images}/${myIndex.index}.jpg" height="266" width="265">
	          <div class="buttons">
	           <!-- <a class="buy btn btn-large btn-info" href="#"><i class="icon-shopping-cart"></i> Add to Cart</a>          
	            <a class="preview btn btn-large btn-info" href="#"><i class="icon-eye-open"></i> View item</a>
	         --> 
	       	  </div>
	      </div>
	      <div class="info">
	        <h4>${item.itemName}</h4>
	        <span class="description">
	          ${item.description}
	        </span>
	        <div class="col-md-6">
	       		<div class="form-group">
					<label>QTY: </label>   		
	        		<input id="quantity" type="text" class="form-control calculate" name="quantity" placeholder="Qty" value="1" style="width:50%;display:inline-block;"/>
					<FONT color="red"><form:errors path="quantity"/></FONT>
	        	</div>
			</div>
			<div class="col-md-6">
				<div class="form-group">
					<label>SIZE: </label>
					<form:select path="size" items="${sizeList}" name="size" cssClass="selectpicker form-control calculate" style="width:50%;padding:0%;display:inline-block;"/>
				</div>
			</div>
			<div class="form-group">	
				<form:checkboxes path="toppings" class="form-control checkie calculate" name="toppings" items="${checkOptions}"></form:checkboxes>
			</div>
	        <span class="price"><span class="fa fa-inr"></span><span class="priceval">${item.price}</span></span>
	       	<input type="hidden" class="form-control" value="${item.itemName}" name="itemName"/>
			<input type="hidden" class="form-control" value="${item.category}" name="category"/>
			<input type="hidden" class="form-control" value="${item.price}" name="price"/>
			<input type="hidden" class="form-control" value="${item.price}" name="price_orig"/>
			<input type="hidden" class="form-control" value="${item.itemId}" name="itemId"/>
			<button id="ordersubmit" type="submit" class="btn btn-primary pull-right" style="background-color: #ca8bdc;border-color: #ca8bdc;">Order</button>
			<a class="btn pull-right resetbtn"><span class="fa fa-undo"></span></a>
		  </div>
	      <div class="details">
	        
	      </div>
	    </div>
		</form:form>
	 	</c:forEach>
	  </div>
	</div>
	<br/>
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>	
</body>
<script type="text/javascript" charset="utf-8">
$(".calculate").change(function() {
	var t = $(this).parent().parent().parent();
	var priceval = parseInt(t.find("input[name='price']").val());
	var priceorigval = parseInt(t.find("input[name='price_orig']").val());
	var quanval = parseInt(t.find("input[name='quantity']").val());
	var sizeval = parseInt(t.find("select[name='size']").val());
	var count = 0;
	t.find('input:checked').each(function() {
	    count++;
	});
	t.find("input[name='price']").val(Math.floor((priceorigval*quanval)*sizeval/8)+count*quanval*40);
	t.find(".priceval").text(Math.floor((priceorigval*quanval)*sizeval/8)+count*quanval*40);
});
$(".resetbtn").click(function(){
	var t = $(this).parent().parent().parent();
	var price_orig = parseInt(t.find("input[name='price_orig']").val());
	t.find(".priceval").text(price_orig);
	t.find("input[name='price']").val(Math.floor(price_orig));
	t.closest("form")[0].reset();
});
</script>
</html>