<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!--<%@page import="javax.servlet.http.HttpSession"%>-->
<%@page import="br.com.service.LoginDeServico"%>
<%@include file="includes/session.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Menu Agenda </title>
</head>
<body>
	<!-- Logado em: ${login} --><br>
	Bem Vindo, Sr(a) ${logado}<br>
	<h2>Usuários</h2>
	<a href="cadastroUsuario.jsp">Cadastro Usuario</a><br>
	<a href="listaUsuarios.jsp">Visualizar Usuarios</a><br>
	<hr>
	<h2>Contatos</h2>
	<a href="cadastroContato.jsp">Cadastro Contatos</a><br>
	<a href="listaContatos.jsp">Visualizar Contatos</a><br>
	
	<hr>
	
	<form action ="Logout">
		<input type="submit" value="Logout">
	</form>
	
	
</body>
</html>