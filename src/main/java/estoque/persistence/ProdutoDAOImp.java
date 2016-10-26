package estoque.persistence;

import java.lang.invoke.SerializedLambda;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

import estoque.model.Produto;

public class ProdutoDAOImp implements IProdutoDAO {

	private Connection con = null;
	private Gson serialize = new Gson();
	
	public ProdutoDAOImp() {
		con = new DBUtil().getConnection();
	}
	
	@Override
	public void adicionar(Produto prod) throws SQLException {
		String sql = "Call inserirProduto(?,?,?);";
		
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, prod.getNome());
		ps.setInt(2, prod.getQuantidade());
		ps.setDouble(3, prod.getPreco());
		ps.execute();
		ps.close();		
		
	}

	@Override
	public void excluir(String nome) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Produto alterar(int codigo) throws SQLException {
		return null;
	}

	@Override
	public List<Produto> listarProdutos1() throws SQLException {
		String sql = "SELECT * FROM produtos";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		List<Produto> listaProdutos = new ArrayList<Produto>();
		while (rs.next()){
			Produto prod = new Produto();
			prod.setCodigo((rs.getInt("codigo_produto")));
			prod.setNome((rs.getString("nome_produto")));
			prod.setPreco((rs.getDouble("preco_produto")));
			prod.setQuantidade((rs.getInt("quantidade_produto")));
			listaProdutos.add(prod);
		}
		rs.close();
		ps.close();
		return listaProdutos;
	}

	@Override
	public String listarProdutos() throws SQLException {
		String sql = "SELECT * FROM produtos";
		String json = "json";
		
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			ArrayList<Produto> produtos = new ArrayList<Produto>();
			while(rs.next()){
				Produto produto = new Produto();
				produto.setCodigo(rs.getInt("codigo_produto"));
				produto.setNome(rs.getString("nome_produto"));
				produto.setPreco(rs.getDouble("preco_produto"));
				produto.setQuantidade(rs.getInt("quantidade_produto"));
				produtos.add(produto);
			}
			
			json = serialize.toJson(produtos);
		
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return json;
		
	}

}
