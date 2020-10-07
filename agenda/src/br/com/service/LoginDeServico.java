package br.com.service;
import java.util.ArrayList;
import java.util.List;
import br.com.model.Usuario;

public class LoginDeServico {
	
	public static List<Usuario> usuarios = new ArrayList<Usuario>();
	
	public static boolean login(String nome, String senha) {
		for(Usuario usuario : LoginDeServico.usuarios) {
			if((usuario.getNome().equals(nome)) && (usuario.getSenha().equals(senha))) {
				return true;
			}
	
		}
		return false;
		
	}
	
	public static void adicionarUsuario() {
		if (!LoginDeServico.login("eduardo", "123")) {
			usuarios.add(new Usuario("eduardo","eduardo@iesp.edu.br","985558777","rua1 , quadra 7","123"));
		}
	}
	
	
	
	
}
	
	

		
