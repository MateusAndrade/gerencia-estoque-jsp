package estoque.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import estoque.model.Produto;
import estoque.persistence.DBUtil;
import estoque.persistence.IProdutoDAO;
import estoque.persistence.ProdutoDAOImp;

@WebServlet("/ControllerProduto")
public class ServletProduto extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	IProdutoDAO produtoDAO =  new ProdutoDAOImp();
	Produto prod = new Produto();
	
    public ServletProduto() {
        super();
    }
	  	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		prod.setNome(request.getParameter("nome"));
		prod.setPreco(Double.parseDouble(request.getParameter("preco")));
		prod.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
		try {
			produtoDAO.adicionar(prod);
			response.sendRedirect("principal_produto.jsp");
		} catch (SQLException e) {
			e.printStackTrace();;
		}		
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
