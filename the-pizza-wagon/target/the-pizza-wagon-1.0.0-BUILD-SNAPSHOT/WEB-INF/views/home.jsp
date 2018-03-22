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
	
		<!-- 	<div class="jumbotron">
	<h3>About The-Pizza-Wagon</h3>
In staying true to our culture of bringing iconic restaurants to those with discerning tastes, The-Pizza-Wagon
is a much-cherished destination in downtown Mumbai. Our large selection of "freshly rolled dough" pizzas complimented with 
a virtually endless variety of toppings and crusts, along with authentic Italian pastas, guarantees in keeping the eatery a-buzz.
If breakfast is more your thing, why not indulge in our healthy breakfast served al fresco overlooking the Arabian Sea. 
We're convinced that with just one visit you'll discover why The-Pizza-Wagon is the talk of the town!
			</div>
        </div>
     -->
		<div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
  <!-- Overlay -->
  <div class="overlay"></div>

  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
    <li data-target="#bs-carousel" data-slide-to="1"></li>
    <li data-target="#bs-carousel" data-slide-to="2"></li>
  </ol>
  
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item slides active">
      <div class="slide-1"></div>
      <div class="hero">
        <hgroup>
            <h1>We are creative</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-2"></div>
      <div class="hero">        
        <hgroup>
            <h1>We are smart</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>       
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
    <div class="item slides">
      <div class="slide-3"></div>
      <div class="hero">        
        <hgroup>
            <h1>We are amazing</h1>        
            <h3>Get start your next awesome project</h3>
        </hgroup>
        <button class="btn btn-hero btn-lg" role="button">See all features</button>
      </div>
    </div>
  </div> 
</div>

	<div class="container">
	<div class="section-content">
		<h1 class="section-header"><span class="content-header">Features</span></h1>
	</div>
	
<div class="col-md-3 col-sm-3">
		<div class="service-content">
		    <a href="#."><span class="service-icon"><i class="fa fa-desktop img-circle wow flipInX animated" style="visibility: visible;"></i></span></a>
		    <h3>Responsive Layout</h3>
		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ultricies vestibulum Graphic river molestie.</p>
		</div>
	</div><!--/ End first service -->
	<div class="col-md-3 col-sm-3">
		<div class="service-content">
		    <a href="#."><span class="service-icon"><i class="fa fa-pagelines img-circle wow flipInX animated" style="visibility: visible;"></i></span></a>
		    <h3>Clean Design</h3>
		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ultricies vestibulum Graphic river molestie.</p>
		</div>
	</div><!--/ End 2nd service -->
	<div class="col-md-3 col-sm-3">
		<div class="service-content">
		    <a href="#."><span class="service-icon"><i class="fa fa-comments-o img-circle wow flipInX animated" style="visibility: visible;"></i></span></a>
		    <h3>Great Support</h3>
		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ultricies vestibulum Graphic river molestie.</p>
		</div>
	</div><!--/ End 3rd service -->
	<div class="col-md-3 col-sm-3">
		<div class="service-content last">
		    <a href="#."><span class="service-icon"><i class="fa fa-flask img-circle wow flipInX animated" style="visibility: visible;"></i></span></a>
		    <h3>Best Features</h3>
		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ultricies vestibulum Graphic river molestie.</p>
		</div>
			</div><!--/ End 4th service -->
    </div>
    
	<jsp:include page="../views/fragments/footer.jsp"></jsp:include>	
</body>
</html>