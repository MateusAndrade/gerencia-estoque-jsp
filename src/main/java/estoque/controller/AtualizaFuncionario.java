package estoque.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import estoque.model.Funcionario;
import estoque.persistence.FuncionarioDAOImpl;
import estoque.persistence.IFuncionarioDAO;

@WebServlet("/AtualizaFuncionario")
public class AtualizaFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IFuncionarioDAO funcDAO = new FuncionarioDAOImpl();

    public AtualizaFuncionario() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
