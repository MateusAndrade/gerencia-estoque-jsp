package estoque.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import estoque.model.Funcionario;
import estoque.model.Produto;
import estoque.model.Requisicao;

public class RequisicaoImpl implements IRequisicaoDAO {

	private Connection con = null;
	
	public RequisicaoImpl() {
		con = new DBUtil().getConnection();	
	}
	
	@Override
	public void geraRequiscao(Requisicao req) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void baixaRequisicao(Requisicao req) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Requisicao> listaRequisicao() throws SQLException {
		String sql = "CALL consultaRequisicao();";
		List<Requisicao> listaRequisicao = new ArrayList<Requisicao>();
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while (rs.next()){
			Requisicao req = new Requisicao();
			Funcionario func = new Funcionario();
			Produto prod = new Produto();
			req.setCodigo_requisicao((rs.getInt("codigo_requisicao")));
			func.setNome((rs.getString("nome_funcionario")));
			prod.setNome((rs.getString("nome_produto")));
			req.setFunc(func);
			req.setProd(prod);
			req.setQtd_requisicao((rs.getInt("qtd_requisicao")));
			req.setData_requisicao((rs.getDate("data_requisicao")));
			req.setStatus((rs.getString("status_requisicao")));
			listaRequisicao.add(req);
		}
		rs.close();
		ps.close();		
		return listaRequisicao;
	}

}
