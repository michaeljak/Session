<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	// verificando se tem um atributo login na sessao
	// se tiver vai continuar e mostrar o menu
	if(session.getAttribute("login") != null) {
%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>         
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Principal</title>
</head>

<body>
    <div class="text-center">

        <h1 class="text-info"> <i class="fa fa-male"></i> Bem vindo <% out.print(session.getAttribute("login")); %>! </h1>
        <div>
            <img src="img/ads.jpg"
        </div>
        <br>
        <a class="btn btn-danger" href="LoginServlet?acao=logout"><i class="fa fa-refresh"></i>  Logout</a>

        </div>
        </div>
       
</body>

</html>

<%
	// se não existir um login na sessao, 
	// vai enviar para a página de login novamente
	} else {
%>
	<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>