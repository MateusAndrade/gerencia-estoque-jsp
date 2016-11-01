package estoque.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import estoque.model.Produto;
import estoque.persistence.IProdutoDAO;
import estoque.persistence.ProdutoDAOImp;

@WebServlet("/UpdateProduto")
public class UpdateProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private Produto prod = new Produto();
    private IProdutoDAO prodDao = new ProdutoDAOImp();
	
	
    public UpdateProduto() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int codigoProduto =  Integer.parseInt(request.getParameter("codigo"));
		try {
			prod = prodDao.retornaProduto(codigoProduto);
			request.setAttribute("produto", prod);
			request.getRequestDispatcher("cadastra_produto.jsp").forward(request, response);
			System.out.println(prod.getNome());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	
	
}
