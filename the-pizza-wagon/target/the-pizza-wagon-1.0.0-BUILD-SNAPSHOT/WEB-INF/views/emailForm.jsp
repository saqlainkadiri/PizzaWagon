<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-control" content="no-cache">
<title>Pizza Order Manager</title>
	<title>Pizza Order Manager</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="<spring:url value="/resources/css/contactus.css"/>" type="text/css"/>
	</head>
	<body>
	    <jsp:include page="../views/fragments/navbar.jsp"></jsp:include>	
	    <section id="contact">
			<div class="section-content">
				<h1 class="section-header">Get in <span class="content-header wow fadeIn" data-wow-delay="0.2s" data-wow-duration="2s"> Touch with us</span></h1>
				<h3>We would love to hear from you !</h3>
			</div>
			<div class="contact-section">
			<div class="container">
				<form id="sendEmailForm" method="post" action="sendEmail" enctype="multipart/form-data">
				<div class="col-md-12">
					<div class="col-md-6 col-sm-12">
			  			<div class="form-group">
			  				<label for="mailName">Your name</label>
					    	<input type="text" class="form-control" id="mailName" name="name" placeholder=" Enter Name">
					    	<input id="mailAttachment" type="file" name="attachFileObj" size="60"/>
				  		</div>
				  		<div class="form-group">
					    	<label for="receiverMail">Email Address</label>
					    	<input type="email" class="form-control" name="mailFrom" id="receiverMail" placeholder=" Enter Email id">
					  	</div>	
					  	<div class="form-group">
					    	<label for="mailSubject">Subject</label>
					    	<input type="text" class="form-control" id="mailSubject" name="subject" placeholder=" Enter Subject">
			  			</div>
			  		</div>
			  		<div class="col-md-6 col-sm-12">
			  			<div class="form-group">
			  				<label for="mailMessage"> Message</label>
			  			 	<textarea class="form-control" id="mailMessage" name="message" placeholder=" Enter Your Message"></textarea>
			  			</div>
			  			<div>
			  				<button type="submit" id="sendEmailBtn" class="btn btn-default submit"><i class="fa fa-paper-plane" aria-hidden="true"></i>  Send Message</button>
		  				</div>
					</div>
					</div>
				</form>
			</div>
			</div>
		</section>
      	    <jsp:include page="../views/fragments/footer.jsp"></jsp:include>	  
	</body>
	<script type="text/javascript">
	$(document).ready(function(){
	    $('#mailAttachment').hide();
	});
	</script>
</html>