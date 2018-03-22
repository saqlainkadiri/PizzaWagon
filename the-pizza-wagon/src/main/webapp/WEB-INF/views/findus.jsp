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
<link rel="stylesheet" href="<spring:url value="/resources/css/findus.css"/>">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<jsp:include page="../views/fragments/navbar.jsp"></jsp:include>		
	<br/>	
<div class="container animated fadeIn">

  <div class="row">
    <h1 class="header-title"> Find Us </h1>
    <hr>
    <div class="col-sm-12" id="parent">
    	<div class="col-sm-2">
    	</div>
    	<div class="col-sm-8">
<iframe width="100%" height="320" frameborder="0" style="border:0"
src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ--RHg8f2yoARbUCNbsTDYWE&key=YOUR_GOOGLE_API_KEY" allowfullscreen></iframe>
    	</div>
    	<div class="col-sm-2">
    	</div>
    </div>
  </div>

  <div class="container second-portion">
	<div class="row">
        <!-- Boxes de Acoes -->
    	<div class="col-xs-12 col-sm-6 col-lg-4">
			<div class="box">							
				<div class="icon">
					<div class="image"><i class="fa fa-envelope" aria-hidden="true"></i></div>
					<div class="info">
						<h3 class="title">MAIL</h3>
						<p>
							<i class="fa fa-envelope" aria-hidden="true"></i> &nbsp rahuljoshi3423@gmail.com
							<br>
							<br>
							<i class="fa fa-envelope" aria-hidden="true"></i> &nbsp saqlaink1106@gmail.com
						</p>
					
					</div>
				</div>
				<div class="space"></div>
			</div> 
		</div>
			
        <div class="col-xs-12 col-sm-6 col-lg-4">
			<div class="box">							
				<div class="icon">
					<div class="image"><i class="fa fa-mobile" aria-hidden="true"></i></div>
					<div class="info">
						<h3 class="title">CONTACT</h3>
    					<p>
							<i class="fa fa-mobile" aria-hidden="true"></i> &nbsp  (+91)-7506561544
							<br>
							<br>
							<i class="fa fa-mobile" aria-hidden="true"></i> &nbsp  (+91)-8108375131 
						</p>
					</div>
				</div>
				<div class="space"></div>
			</div> 
		</div>
			
        <div class="col-xs-12 col-sm-6 col-lg-4">
			<div class="box">							
				<div class="icon">
					<div class="image"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
					<div class="info">
						<h3 class="title">ADDRESS</h3>
    					<p>
							 <i class="fa fa-map-marker" aria-hidden="true"></i> &nbsp 713 W State St, Hurricane, UT 84737, USA
						</p>
					</div>
				</div>
				<div class="space"></div>
			</div> 
		</div>		    
	</div>
</div>

</div>
<jsp:include page="../views/fragments/footer.jsp"></jsp:include>	
</body>
</html>