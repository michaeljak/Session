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
	<title>Principal</title>
</head>

<body>
    <div class="text-center">

        <h1 class="text-info"> Bem vindo <% out.print(session.getAttribute("login")); %>! </h1>
        <div>
            <img src="img/ads.jpg"
        </div>
        <br>
        <a class="btn btn-danger" href="LoginServlet?acao=logout">Logout</a>

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