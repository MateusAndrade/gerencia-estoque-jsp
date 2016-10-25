package estoque.persistence;

import java.lang.invoke.SerializedLambda;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.google.gson.Gson;

import estoque.model.Produto;

public class ProdutoDAOImp implements IProdutoDAO {

	private Connection con = null;
	private Gson SerializedLambda = new Gson();
	
	public ProdutoDAOImp() {
		con = new DBUtil().getConnection();
	}
	
	@Override
	public void adicionar(Produto prod) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void excluir(String nome) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Produto alterar(int codigo) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Produto> listarProdutos(String nome) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}
