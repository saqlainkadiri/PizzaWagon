<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<link rel="stylesheet" href="<spring:url value="/resources/css/navbar.css"/>">
<nav class="navbar navbar-inverse" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#top-navbar-1">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
   			<a class="navbar-brand" href="<spring:url value="/home"/>"><img class="navbar-brand" src="<spring:url value="/resources/images/logo.jpg"/>"/></a>
		</div>
		<div class="collapse navbar-collapse" id="top-navbar-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<spring:url value="/home"/>"><i class="fa fa-home"></i> <span>Home</span></a></li>
				<li><a href="<spring:url value="/order/add"/>"><i class="fa fa-cutlery"><span>new</span></i><span>Order</span></a></li>
				<li><a href="<spring:url value="/order/find"/>"><i class="fa fa-history"></i> <span>Order History</span></a></li>
				<li><a href="<spring:url value="/review"/>"><i class="fa fa-pencil-square-o"></i> <span>Review</span></a></li>
				<li><a href="<spring:url value="/contactus"/>"><i class="fa fa-paper-plane"></i> <span>Contact Us</span></a></li>
				<li><a href="<spring:url value="/findus"/>"><i class="fa fa-map"></i> <span>Find Us</span></a></li>
				<li><a href="<spring:url value="/logout"/>"><i class="fa fa-sign-out"></i> <span>Logout</span></a></li>
				<li>
				<a>
				<div class="inset">
                  <img src="http://rs775.pbsrc.com/albums/yy35/PhoenyxStar/link-1.jpg~c200">
                </div><span>${user.username}</span>
                </a>
                </li>
			</ul>
		</div>
	</div>
</nav>
<hr/>