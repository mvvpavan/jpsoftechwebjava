<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<title>Storing IPADDRESS INFORMATION</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<c:if test="${ empty username}">
   <div id="success" class="success">
     <c:redirect url = "login"/>
   </div>
</c:if>
<nav class="navbar navbar-inverse" >
  <div class="container-fluid">
    <ul class="nav navbar-nav ">
     <li class="active"><a href="Dashboard">Home</a></li>
			<li><a href="addhost">ADD HOST</a></li>
			<li><a href="addgroup">ADD GROUP</a></li>
			<li><a href="rungroup">GROUP RUN</a></li>
			<li><a href="singleserver">SINGLE INSTANCE  RUN</a></li>
			<li><a href="messages">BUILD</a></li>
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Settings<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
	<form method="POST" action="host" class="loginform"  modelAttribute="hostForm">
  <div class="form-group">
    <label for="email">Purpose:</label>
    <input type="text" class="form-control" id="purpose" name="purpose">
  </div>
  <div class="form-group">
    <label for="email">Amount:</label>
    <input type="text" class="form-control" id="Amount" name="Amount">
  </div>
   <div class="form-group">
    <label for="email">Date:</label>
    <input type="text" class="form-control" id="Date" name="Date">
  </div>
   <div class="form-group">
    <label for="email">Bill Number:</label>
    <input type="text" class="form-control" id="billnumber" name="billnumber">
  </div>
  <button type="submit" class="btn btn-default">Submit</button> 
</form>
	
</body>
</html>