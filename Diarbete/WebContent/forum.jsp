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
<link rel="stylesheet" href="stile/forum.css">
<title>Forum</title>
</head>

<body>

	<header>
		<%@include file="jspIncluse/header.jsp" %>
	</header>
 
 	<script>
		$(document).ready(function(){
			$('#homeMenuNavigazionale').removeClass("active");
			$('#forumMenuNavigazionale').addClass("active");
		})
	 </script>

    <%@include file="jspIncluse/menuNavigazionale.jsp"%>

<section class="row">
<div class="container">
  <div class="page-header page-heading" style="margin:0px">
    <ol class="breadcrumb pull-right where-am-i">
      <li><a href="#">Forums</a></li>
      <li class="active">List of topics</li>
    </ol>
    <div class="clearfix"></div>
  </div>
  <p class="lead">Nel <b>forum</b> potrai aprire nuovi topics per permettere ad altri di chiarire i tuoi dubbi.</p>
  <p>Controlla prima, cercando nell'apposito form di ricerca, se qualche altro utente ha gia avuto il tuo stesso problema ricevendo una risposta soddisfacente, per evitare inutili duplicati.</p>
  <table class="table forum table-striped">
    <thead>
      <tr>
        <th class="cell-stat"></th>
        <th>
          <h3>Titolo topic</h3>
        </th>
        <th class="cell-stat text-center hidden-xs hidden-sm">Risposte</th>
        <th class="cell-stat-2x hidden-xs hidden-sm">Ultima risposta</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="text-center"><i class="fa fa-question fa-2x text-primary"></i></td>
        <td>
          <h4><a href="#">Frequently Asked Questions</a><br><small>Some description</small></h4>
        </td>    
        <td class="text-center hidden-xs hidden-sm"><a href="#">89 897</a></td>
        <td class="hidden-xs hidden-sm">by <a href="#">John Doe</a><br><small><i class="fa fa-clock-o"></i> 3 months ago</small></td>
      </tr>
      <tr>
        <td class="text-center"><i class="fa fa-exclamation fa-2x text-danger"></i></td>
        <td>
          <h4><a href="#">Important changes</a><br><small>Category description</small></h4>
        </td>
        <td class="text-center hidden-xs hidden-sm"><a href="#">152123</a></td>
        <td class="hidden-xs hidden-sm">by <a href="#">Jane Doe</a><br><small><i class="fa fa-clock-o"></i> 1 years ago</small></td>
      </tr>
    </tbody>
  </table>
</div>
</section>


<footer class="row"><%@ include file="jspIncluse/footer.jsp" %></footer>

</body>
</html>