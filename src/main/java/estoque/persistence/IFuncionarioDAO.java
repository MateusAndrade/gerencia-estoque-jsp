package estoque.persistence;

import java.sql.SQLException;
import java.util.List;

import estoque.model.Funcionario;
import estoque.model.Produto;

public interface IFuncionarioDAO {

	public void adicionarProduto( Funcionario func ) throws SQLException;
	public void excluirProduto( int codigo ) throws SQLException;
	public void consultarProduto( String nome ) throws SQLException;
	public List<Produto> consultarProdutos( String nome ) throws SQLException;
	
}
