<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.com.service.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<div>
		<form action="Login" method="POST">
			<h2>Aplicações Web Uniesp</h2>
			<h2>Login</h2>
			Login <input type="text" name="login" id="login" value="eduardo"><br><br><br>
			Senha <input type="password" name="senha" id="senha" value="123"><br><br><br>
			
			<input type="submit" value="Enviar">
		</form>
	</div>
</body>
</html>