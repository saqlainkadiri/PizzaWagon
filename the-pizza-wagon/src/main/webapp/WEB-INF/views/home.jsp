<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pizza Order Manager</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>">	
</head>
<body>	
	<jsp:include page="../views/fragments/navbar.jsp"></jsp:include>
	<div class="container">
	<div class="jumbotron">
	<h3>About The-Pizza-Wagon</h3>
In staying true to our culture of bringing iconic restaurants to those with discerning tastes, The-Pizza-Wagon
is a much-cherished destination in downtown Mumbai. Our large selection of "freshly rolled dough" pizzas complimented with 
a virtually endless variety of toppings and crusts, along with authentic Italian pastas, guarantees in keeping the eatery a-buzz.
If breakfast is more your thing, why not indulge in our healthy breakfast served al fresco overlooking the Arabian Sea. 
We're convinced that with just one visit you'll discover why The-Pizza-Wagon is the talk of the town!
	</div>
	<!-- <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  <div class="overlay"></div>
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item slides active">
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h1>Be a Foodie!</h1>        
            <h3>Share it with your loved ones.</h3>
        </hgroup>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h1>Now more Savings!</h1>        
            <h3>Because people love saving money.</h3>
        </hgroup>       
      </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h1>Paytm Karo!</h1>        
            <h3>Save your money in Paytm wallet.</h3>
        </hgroup>
      </div>
    </div>
  </div> 
</div>
-->
	<div class="section-content">
		<h1 class="section-header"><span class="content-header">The-Pizza-Wagon</span></h1>
	</div>
	
<div class="col-md-3 col-sm-3">
		<div class="service-content">
		    <a href="/saveResult" id="request-link"><span class="service-icon"><i class="fa fa-cutlery img-circle wow flipInX animated" style="visibility: visible;"></i></span></a>
		    <h3>Our Menu</h3>
		    <p>Explore our range of mouth-watering Pizza's,delivered hot and fresh in 30 minutes!</p>
		</div>
	</div>
	<div class="col-md-3 col-sm-3">
		<div class="service-content">
		    <a href="../the-pizza-wagon/findus"><span class="service-icon"><i class="fa fa-map img-circle wow flipInX animated" style="visibility: visible;"></i></span></a>
		    <h3>Your Nearest Store</h3>
		    <p>Find The-Pizza-Wagon near you.</p>
		</div>
	</div>
	<div class="col-md-3 col-sm-3">
		<div class="service-content">
		    <a href="../the-pizza-wagon/contactus?birthday=true"><span class="service-icon"><i class="fa fa-birthday-cake img-circle wow flipInX animated" style="visibility: visible;"></i></span></a>
		    <h3>Birthday Party</h3>
		    <p>Celebrate the joy of birthday's with The-Pizza-Wagon.</p>
		</div>
	</div>
	<div class="col-md-3 col-sm-3">
		<div class="service-content last">
		    <a href="../the-pizza-wagon/contactus?catering=true"><span class="service-icon"><i class="fa fa-group img-circle wow flipInX animated" style="visibility: visible;"></i></span></a>
		    <h3>Catering</h3>
		    <p>The-Pizza-Wagon's Live kitchen for wedding/corporate events.</p>
		</div>
			</div>
    </div>
   
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>	
</body>
<script type="text/javascript">
</script>
</html>