<!DOCTYPE html>


<html>
<head>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">


</head>

<body>

	<header>
		<%@include file="jspIncluse/header.jsp" %>
	</header>

	<nav class="navbar navbar-default" role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse  navbar-ex1-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">Consigli</a></li>
				<li><a href="#">Eventi</a></li>
				<li><a href="#">Forum</a></li>
				<li><a href="#">Contatti</a></li>
			</ul>
		</div>
	</nav>



<section class="row">

<div class="card-group">
  <div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title">Card title</h4>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title center-block">Card title</h4>
      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
  <div class="card col-xs-12 col-sm-4">
    <img class="card-img-top center-block" src="img/logo.png" alt="Card image cap">
    <div class="card-block">
      <h4 class="card-title center-block">Card title</h4>
      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
    </div>
    <div class="card-footer">
      <small class="text-muted">Last updated 3 mins ago</small>
    </div>
  </div>
</div>

</section>






	<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

</body>
</html>
