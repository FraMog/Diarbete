<!DOCTYPE html>
<%@page import="servlet.ValoriGlicemici"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
<meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1" />
<link rel="shortcut icon" href="img/favicon.ico">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="stile/stile.css">
<title>Diario</title>
<style type="text/css">
	


</style>
</head>
<body>
<%
if (session.getAttribute("valori")==null)
{
	RequestDispatcher dispatcher = request.getRequestDispatcher("/ServletValoriGlicemici");
	dispatcher.forward(request, response);
}
else
{
	ArrayList<ValoriGlicemici> valori = (ArrayList<ValoriGlicemici>)session.getAttribute("valori");
	int count=(int)session.getAttribute("count");
%>

    <header>
        <%@include file="jspIncluse/header.jsp"%>
    </header>
    <%@include file="jspIncluse/menuNavigazionale.jsp"%>
    <section class="row">
        <div class="col-xs-10 col-xs-offset-2" style="margin-top:15px;">
        	<div class="col-xs-7 col-xs-offset-1" style="background:url('img/diary.png') no-repeat;  background-size: 100% 100%; height:400px">
        		<div class="col-xs-3 col-xs-offset-1" style="margin-top:55px;">
        			<p>Mattina</p><input id="mattina" type="text" value="<%= valori.get(count).getMattina() %>" style="margin-bottom:6px;">
        			<p>Pomeriggio</p><input id="pom" type="text" value="<%= valori.get(count).getPomeriggio() %>" style="margin-bottom:6px;"/>
        			<p>Sera</p><input id="sera" type="text" value="<%= valori.get(count).getSera() %>" style="margin-bottom:6px;"/>
        			<p><button type="button" class="btn btn-primary" onclick="indietro()" style="margin-top:10px;">Indietro</button> <%= valori.get(0).getData() %></p>
        		</div>
        		<div class="col-xs-3 col-xs-offset-3" style="margin-top:55px;">
        			<p>Mattina</p><input id="mattina" type="text" value="<%= valori.get(count+1).getMattina() %>" style="margin-bottom:6px;">
        			<p>Pomeriggio</p><input id="pom" type="text" value="<%= valori.get(count+1).getPomeriggio() %>" style="margin-bottom:6px;"/>
        			<p>Sera</p><input id="sera" type="text" value="<%= valori.get(count+1).getSera() %>" style="margin-bottom:6px;"/>
        			<p><button type="button" class="btn btn-primary" onclick="avanti()" style="margin-top:10px;">Avanti</button> <%= valori.get(1).getData() %> <button type="button" class="btn btn-primary" style="margin-top:5px;">Modifica</button></p>
        			<p></p>
        		</div>
        	</div>
        </div>
            <div style="clear: both; margin-top: 73px"></div>
        
    </section>
    <footer class="row"><%@ include file="jspIncluse/footer.jsp"%></footer>
    
    <% } %>
</body>
</html>
