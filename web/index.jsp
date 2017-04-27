<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Index</title>
</head>

<body>
	<center>
	<form method="post" action="LoginServlet">
		<h3>Login</h3>
		<table border=1>
			<tr>
				<td>Usuário:</td>
				<td><input type="text" name="login" size="10" /></td>
			</tr>
			<tr>
				<td>Senha:</td>
				<td><input type="password" name="senha" size="10" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Entrar" /></td>
			</tr>
		</table>
		<input type="hidden" name="acao" value="login" />
	</form>
	</center>

</body>

</html>