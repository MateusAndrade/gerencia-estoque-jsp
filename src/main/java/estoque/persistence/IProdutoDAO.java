package estoque.persistence;

import java.sql.SQLException;
import java.util.List;

import estoque.model.Produto;

public interface IProdutoDAO {

	public void adicionar( Produto prod ) throws SQLException;
	public void excluir( String nome ) throws SQLException;
	public Produto alterar( String nome ) throws SQLException;
	public List<Produto> listarProdutos( String nome ) throws SQLException;
	
}
