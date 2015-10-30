package br.com.datacrunch.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import br.com.datacrunch.entidade.Usuario;
import br.com.datacrunch.persistencia.jdbc.UsuarioDAO;


public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	public void init() throws ServletException {
		// Antes de processar qualquer requisição se usa o Init
		System.out.println("Chamou o INIT");
		super.init();
	}
	/**
	 * usando servlet com varias ações declaradas
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String acao = req.getParameter("acao");
		/**
		if (acao.equals("login")){
		RequestDispatcher view = req.getRequestDispatcher("login.jsp");  
		view.forward(req, resp); 
		} else if (acao.equals("get")){
			
		**/
		//Gaveta excluir
		if (acao.equals("exc")){
			
			String id = req.getParameter("id");
			Usuario usu = new Usuario();
			
			usu.setId(Integer.parseInt(id));
			
			UsuarioDAO usuarioDAO = new UsuarioDAO();	
			usuarioDAO.excluir(usu);
			
			// falando com o servidor
			System.out.println("Usuario: " +usu + " foi removido");
			// falando com o usuario
			resp.sendRedirect("UsuarioController?acao=lis");
			
		//Gaveta listar
		}else if (acao.equals("lis")){
			
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			List<Usuario> lista = usuarioDAO.buscarTodos();

			req.setAttribute("lista", lista);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/formusuario.jsp");
			dispatcher.forward(req, resp);
			
		} else if (acao.equals("alt")){
			
			String id = req.getParameter("id");
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			
			Usuario usuario = usuarioDAO.buscarPorID(Integer.parseInt(id));
			req.setAttribute("usu", usuario);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/form.jsp");
			dispatcher.forward(req, resp);
			
			
		}else if (acao.equals("cad")){
			
			Usuario usuario = new Usuario();
			usuario.setId(0);
			usuario.setNome("");
			usuario.setLogin("");
			usuario.setSenha("");
			
			req.setAttribute("usu", usuario);
			
			RequestDispatcher dispatcher = req.getRequestDispatcher("WEB-INF/form.jsp");
			dispatcher.forward(req, resp);
			
			
		}
		
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String id = req.getParameter("id");
		String nome = req.getParameter("nome");
		String login = req.getParameter("login");
		String senha = req.getParameter("senha");

		Usuario usuario = new Usuario();

		 if (id != null)
			 usuario.setId(Integer.parseInt(id));	
		 
		 usuario.setNome(nome);
		 usuario.setLogin(login);
		 usuario.setSenha(senha);
			
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		usuarioDAO.salvar(usuario);

		// falando com o servidor
		System.out.println("Cadastro realizado com sucesso!");

		// falando com o usuario
		resp.getWriter().println("Cadastro realizado com sucesso!");
		//redirecionando pagina
		
		
		 } 
		
	

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}
