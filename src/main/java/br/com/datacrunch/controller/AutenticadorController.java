package br.com.datacrunch.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.datacrunch.entidade.Usuario;
import br.com.datacrunch.persistencia.jdbc.UsuarioDAO;



@WebServlet("/autenticador.do")
public class AutenticadorController extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		HttpSession sessao = req.getSession(false);
		
		if(sessao != null){
			
			sessao.invalidate();
		}
		
		resp.sendRedirect("login.jsp");
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
				//captura de dados
		
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");
		
		//Colocando dados no objeto usuario
		Usuario usuario = new Usuario();
		usuario.setLogin(login);
		usuario.setSenha(senha);
		
		//consultando se usuario existe no banco
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		
		Usuario usuAutenticado = usuarioDAO.autenticar(usuario);
	
		
		if (usuAutenticado != null){
			
			//colocando ususario na sessao
			HttpSession sessao = req.getSession();
			sessao.setAttribute("usuAutenticado", usuAutenticado);
			
			sessao.setMaxInactiveInterval(60);
		//redirecionando usuario para a tela principal
			resp.getWriter().println("Usuario existe");
		req.getRequestDispatcher("WEB-INF/index.jsp").forward(req, resp);
		System.out.println("Usuario entrou");
			
		}else {
			
			resp.getWriter().println("Usuario não existe");
			
		}
	
	}

}
