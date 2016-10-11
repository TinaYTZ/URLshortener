<%@ page import="java.util.Map"%>
<%@page import="com.cpsc476.urlshortner.URLHandler"%>



<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

  </head>
  <body>
    <!--  Navbar -->
    
   <nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value="/userprofile"><c:param name="action" value="logout" /></c:url>" >Logout</a></li>
        
        <li><h3>${username}</h3></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<h1> Welcome ${username}</h1>

<div class="jumbotron">
  <div class="col-xs-3"></div>
  <div class="col-xs-6">
  <form method="POST" action="<c:url value="/userprofile"><c:param name="action" value="shortenURL" /></c:url>">
  <div class="input-group">
  <input type="text" class="form-control" placeholder="URL" aria-describedby="basic-addon2" name="longUrl">
  <span class="input-group-addon" id="basic-addon"><input type="submit" value="Submit" /></span>
  </div>
  </form>
  </div>
  <div class="col-xs-3"></div>
</div>


<c:choose>
    <c:when test="${links ne null}">
        <c:forEach items="${links}" var="link">
        <h3>
        <a target="_blank" href="${link.key}">${link.value}</a>
        </h3>
    	<h5>Key = ${link.key}, value = ${link.value}</h5><br>
   </c:forEach>
        <br />
    </c:when>    
    <c:otherwise>
        <h1> Data does not exists</h1> 
        <br/>
    </c:otherwise>
</c:choose>


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
