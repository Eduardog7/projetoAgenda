<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.com.servlets.*" %>
<%@include file="includes/session.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Contatos</title>
</head>
<body>
	<fieldset>
	<% CadastroContatoServlet.attusuarioslistByUserEmail((String)session.getAttribute("userEmail")); %>
		olá Sr(a) ${logado}, esses são seus Contatos: <br>
		<c:forEach items="${CadastroContatoServlet.usuarioslist}" var="contato">
		E-mail Usuário:<c:out value="${contato.userEmail}"></c:out>	
			Nome:<c:out value="${contato.nome}"></c:out><br/>
			Email:<c:out value="${contato.email}"></c:out><br/>
			Telefone:<c:out value="${contato.telefone}"></c:out><br/>
			Endereço:<c:out value="${contato.endereco}"></c:out><br/><br/>
		</c:forEach>
	</fieldset>
	UserEmail Is <% out.println((String)session.getAttribute("userEmail")); %>
	<a href="cadastroContato.jsp">Cadastro Contato</a>
	<br><p>
	<a href="Menu.jsp">Retornar ao Menu</a>
	
	
</body>
</html>