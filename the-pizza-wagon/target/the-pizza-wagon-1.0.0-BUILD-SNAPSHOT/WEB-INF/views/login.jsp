<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-control" content="no-cache">

<title>Pizza Order Manager</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<spring:url value="/resources/css/supersized.css"/>">
    <link rel="stylesheet" href="<spring:url value="/resources/css/login_signup.css"/>">
</head>
<body>
<div class="container">
  	<div class="page-container">
          <h1>Login</h1>
          <spring:url value="/home" var="formUrl"/>
		  <form:form action="${formUrl}" method="POST" modelAttribute="user" cssClass="col-md-8 col-md-offset-2">			
				<div class="form-group">
					<form:input path="username" cssClass="form-control username" id="username" placeholder="Username"/>
					<FONT color="red"><form:errors path="username"/></FONT>
				</div>
				<div class="form-group">
					<form:input path="password" type="password" cssClass="form-control password" id="password" placeholder="Password"/>
					<FONT color="red"><form:errors path="password"/></FONT>
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-success">Submit</button>
					<a href="<spring:url value="/signup"/>" class="btn btn-default">Register Now</a>
				</div>
		  </form:form>
          <div class="connect">
              <p>Or connect with:</p>
              <p>
                  <a class="facebook" href=""></a>
                  <a class="twitter" href=""></a>
              </p>
          </div>
     </div>
</div>
     <script src="<spring:url value="/resources/js/jquery-1.11.1.min.js.download"/>"></script>
     <script src="<spring:url value="/resources/js/supersized.3.2.7.min.js"/>"></script>
     <script src="<spring:url value="/resources/js/supersized-init.js"/>"></script>
     <script src="<spring:url value="/resources/js/scripts.js"/>"></script>
</body>
</html>