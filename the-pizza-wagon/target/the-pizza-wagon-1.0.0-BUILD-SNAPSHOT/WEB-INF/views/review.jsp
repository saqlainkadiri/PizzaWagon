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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<spring:url value="/resources/css/review.css"/>">	
</head>
<body>	
	<jsp:include page="../views/fragments/navbar.jsp"></jsp:include>
	<div class="container"  style="padding-bottom:50px;">
	 <ul class="media-list">
	 <c:forEach items="${reviewlist}" var="myreview">
       <li class="media">
         <a class="pull-left" href="#">
           <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg" alt="profile">
         </a>
         <div class="media-body">
           <div class="well well-sm">
               <h4 class="media-heading text-uppercase reviews">${myreview.username} </h4>
               <ul class="media-date text-uppercase reviews list-inline">
                 <li class="dd">${myreview.date}</li>
                 
               </ul>
               <p class="media-comment">
                 ${myreview.review}
               </p>
           </div>              
         </div>
    	</li>     
    	</c:forEach>	
     </ul>
	<div class="section-content">
		<h1 class="section-header"><span class="content-header">Review Us</span></h1>
	</div>
	<div class="contact-section">
      <spring:url value="/submitreview" var="formUrl"/>
	  <form:form action="${formUrl}" method="POST" modelAttribute="review" cssClass="col-md-8 col-md-offset-2">			
		<div class="col-md-12">
			<div class="col-md-6 col-sm-12">
	  			<div class="form-group">
	  				<label for="username">Your name</label>
					<form:input path="username" cssClass="form-control" id="username" placeholder=" Enter name"/>
					<FONT color="red"><form:errors path="username"/></FONT>
				</div>
	  			<!-- <div class="form-group">
		  			<label for="file">Upload media</label><br/>
					<label class="custom-file">
					  <input type="file" id="file" class="custom-file-input">
					  <span class="custom-file-control"></span>
					</label>
				</div> -->
				<div>
	  				<button type="submit" id="sendEmailBtn" class="btn btn-default submit">
	  					<i class="fa fa-paper-plane" aria-hidden="true"></i> Submit</button>
  				</div>
		  	</div>
	  		<div class="col-md-6 col-sm-12">
	  			<div class="form-group">
	  				<label for="review"> Review</label>
	  				<form:textarea path="review" cssClass="form-control" id="username" placeholder=" Enter review"/>
					<FONT color="red"><form:errors path="username"/></FONT>
	  			</div>
			</div>
		</div>
	  </form:form>
	</div>
   </div>
    <jsp:include page="../views/fragments/footer.jsp"></jsp:include>	
</body>
</html>