package estoque.persistence;

import java.sql.SQLException;
import java.util.List;

import estoque.model.Requisicao;

public interface IRequisicaoDAO {

	public void geraRequiscao( Requisicao req ) throws SQLException;
	public void baixaRequisicao( Requisicao req ) throws SQLException;
	public void cancelarRequisicao( Requisicao req ) throws SQLException;
	public List<Requisicao> listaRequisicao( String nome ) throws SQLException;

}
