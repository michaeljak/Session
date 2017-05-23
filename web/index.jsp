<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
         <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
         <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.css"/>
	<title>Index</title>
</head>

<body>
   
	<center>
             <dir class="container">
	<form method="post" action="LoginServlet">
           
            <h3>Login</h3>
        
		<table class="table table-hover" border=05>
                    <tr class="text-danger">
                        <td><h4>
                                
                                Usuário:    <span class="glyphicon glyphicon-user"></span></h4></td>	
                        <td><input type="text" name="login" size="33" /></td>
			</tr>
                        
                        <tr class="text-danger">
			<td><h4>Senha :  <span class="glyphicon glyphicon-lock"></span></h4></td>	
				<td><input type="password" name="senha" size="33" /></td>
			</tr>
                        <tr class="btn btn-success text-center">
				<td class="btn btn-default text-center"><input type="submit" value="Entrar" /></td>
			</tr>
		</table>
		<input type="hidden" name="acao" value="login" />
	</form>
                 </dir>

	</center>
       
</body>

</html>