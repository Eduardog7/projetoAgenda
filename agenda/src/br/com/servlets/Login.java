package br.com.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.model.Usuario;
import br.com.service.LoginDeServico;
/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		//formas de adicionar novo usuário
		LoginDeServico.adicionarUsuario();
		
		
		String login = request.getParameter("login");
		String userEmail = login+"@uniesp.edu.br";
		String senha = request.getParameter("senha");
	
		
		HttpSession session = request.getSession();
		
		if (LoginDeServico.login(login, senha)) {
			session.setAttribute("userEmail", userEmail.trim());
			session.setAttribute("logado", login);
			
			response.sendRedirect("Menu.jsp");
			
		} else {
			session.setAttribute("userEmail", null);
			session.setAttribute("logado", null);
			request.setAttribute("erro", "Login ou senha, inválido");
			RequestDispatcher rd = request.getRequestDispatcher("erro.jsp");
			rd.forward(request, response);
		}
	}

}


