package estoque.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import estoque.model.Funcionario;

public class FuncionarioDAOImpl implements IFuncionarioDAO {

	private Connection con = null;
	
	public FuncionarioDAOImpl() {
		con = new DBUtil().getConnection();
	}
	
	@Override
	public void adicionarFuncionario(Funcionario func) throws SQLException {
		//FAZER	
	}

	@Override
	public void excluirFuncionario(int codigo) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void consultarFuncionario(String nome) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void alterarFuncionario(Funcionario func) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Funcionario> retornaFuncionarios() throws SQLException {
		String sql = "SELECT * FROM funcionarios";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		List<Funcionario> listaFuncionarios = new ArrayList<Funcionario>();
		while (rs.next()){
			Funcionario func = new Funcionario();
			func.setCodigo((rs.getInt("codigo_funcionario")));
			func.setNome((rs.getString("nome_funcionario")));
			func.setCpf((rs.getString("cpf_funcionario")));
			func.setTelefone((rs.getString("telefone_funcionario")));
			func.setEmail((rs.getString("email_funcionario")));
			listaFuncionarios.add(func);
		}
		rs.close();
		ps.close();		
		return listaFuncionarios;
	}

}
