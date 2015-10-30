package br.com.datacrunch.persistencia.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.datacrunch.entidade.Usuario;

public class UsuarioDAO {

	// Metodo cadastrar
	public void cadastrar(Usuario usuario) {
		
		// TODO Auto-generated method stub
		Connection con = ConexaoFactory.getConnection();
		String sql = "insert into usuario (nome, login, senha) values (?,?,?)";

		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(1, usuario.getNome());
			preparador.setString(2, usuario.getLogin());
			preparador.setString(3, usuario.getSenha());

			// Executando o comando SQL no banco de dados
			preparador.execute();
			preparador.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// Metodo alterar
	public void alterar(Usuario usuario) {
		// TODO Auto-generated method stub
		Connection con = ConexaoFactory.getConnection();
		String sql = "update usuario set nome=?, login=?, senha=? where id=?";

		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(1, usuario.getNome());
			preparador.setString(2, usuario.getLogin());
			preparador.setString(3, usuario.getSenha());
			preparador.setInt(4, usuario.getId());

			// Executando o comando SQL no banco de dados
			preparador.execute();
			preparador.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * 
	 * @param usu
	 */
	public void excluir(Usuario usuario) {
		// TODO Auto-generated method stub
		Connection con = ConexaoFactory.getConnection();
		String sql = "delete from  usuario  where id=?";

		try {
			PreparedStatement preparador = con.prepareStatement(sql);

			preparador.setInt(1, usuario.getId());

			// Executando o comando SQL no banco de dados
			preparador.execute();
			preparador.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * Busca de um registro no banco de dados pelo numero do ID do usario
	 * 
	 * @param id
	 *            é um inteiro que representa o numero do ID do usuario a ser
	 *            buscado
	 * @return Um objeto usuario quando encontra ou null quando não encotra.
	 */
	public Usuario buscarPorID(Integer id) {
		// TODO Auto-generated method stub
		Connection con = ConexaoFactory.getConnection();
		String sql = "select * from usuario where id=?";

		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setInt(1, id);

			ResultSet resultado = preparador.executeQuery();
			// posicionando o curso do primeiro registro
			if (resultado.next()) {

				Usuario usuario = new Usuario();
				usuario.setId(resultado.getInt("id"));
				usuario.setNome(resultado.getString("nome"));
				usuario.setLogin(resultado.getString("login"));
				usuario.setLogin(resultado.getString("senha"));

				return usuario;

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * Realiza a busca de varios registros da tabela de usuarios
	 * 
	 * @return retornar lista de objetos Usuario contendo 0 elementos quando não
	 *         tiver registros ou n elementos quando não tiver registros.
	 */
	public List<Usuario> buscarTodos() {
		// TODO Auto-generated method stub
		Connection con = ConexaoFactory.getConnection();
		String sql = "select * from usuario order by id";

		List<Usuario> lista = new ArrayList<Usuario>();

		try {
			PreparedStatement preparador = con.prepareStatement(sql);

			ResultSet resultado = preparador.executeQuery();
			// posicionando o curso do primeiro registro
			while (resultado.next()) {

				Usuario usuario = new Usuario();
				usuario.setId(resultado.getInt("id"));
				usuario.setNome(resultado.getString("nome"));
				usuario.setLogin(resultado.getString("login"));
				usuario.setLogin(resultado.getString("senha"));

				lista.add(usuario);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lista;
	}

	/**
	 * 
	 * @param usuConsulta
	 * @return
	 */

	public Usuario autenticar(Usuario usuConsulta) {

		Connection con = ConexaoFactory.getConnection();

		String sql = "select * from usuario where login=? and senha=?";

		try {

			PreparedStatement preparador = con.prepareStatement(sql);

			preparador.setString(1, usuConsulta.getLogin());
			preparador.setString(2, usuConsulta.getSenha());
			ResultSet resultado = preparador.executeQuery();

			if (resultado.next()) {

				Usuario usuario = new Usuario();

				usuario.setId(resultado.getInt("id"));
				usuario.setNome(resultado.getString("nome"));
				usuario.setLogin(resultado.getString("login"));
				usuario.setSenha(resultado.getString("senha"));

				return usuario;

			} else {

				return null;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	public void salvar(Usuario usuario) {
		// TODO Auto-generated method stub
		
		if (usuario.getId() !=null && usuario.getId() !=0){
			
			alterar(usuario);
		}else{
			
			cadastrar(usuario);
		}
		
	}
}
