<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DashBoard</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<c:if test="${empty username}">
   <div id="success" class="success">
     <c:redirect url = "login"/>
   </div>
</c:if>
<nav class="navbar navbar-inverse" >
  <div class="container-fluid">
    <ul class="nav navbar-nav ">
     <li class="active"><a href="Dashboard">Home</a></li>
	<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">JPSoftechAdmin<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Purchase Amount</a></li>
          <li><a href="#">Bank Account Information </a></li>
          <li><a href="#">Client Payment </a></li>
        </ul>
      </li>
      <li ><a href="Dashboard">Register</a></li>
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">JPSoftech<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Employee Register</a></li>
          <li><a href="#">Employee attendance</a></li>
          <li><a href="#">Employee Salary Information</a></li>
           <li><a href="#">Employee Client Information</a></li>
           <li><a href="#">Document Information</a></li>
            <li><a href="#">AWS/AZURE/Other Information</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Support<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Support Register</a></li>
          <li><a href="#">Client Information</a></li>
          <li><a href="#">Payment Information</a></li>
        </ul>
      </li>
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">GKSUPPORT<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Client Information</a></li>
          <li><a href="#">TaskAssign Information</a></li>
          <li><a href="#">Payment Information</a></li>
        </ul>
      </li>
    </ul>
    <li ><a href="Dashboard">Register</a></li>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
</body>
</html>