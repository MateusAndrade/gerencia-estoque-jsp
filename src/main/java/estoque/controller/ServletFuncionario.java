package estoque.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import estoque.model.Funcionario;
import estoque.persistence.FuncionarioDAOImpl;
import estoque.persistence.IFuncionarioDAO;

/**
 * Servlet implementation class ServletFuncionario
 */
@WebServlet("/ServletFuncionario")
public class ServletFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IFuncionarioDAO funcionarioDAO = new FuncionarioDAOImpl();
	Funcionario func = new Funcionario();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletFuncionario() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		try {			
//			request.setAttribute("funcionarios", funcionarioDAO.consultarFuncionarios());
//			request.getRequestDispatcher("principal_funcionario.jsp").forward(request, response);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String telefone = func.getTelefone();
		System.out.println(telefone);
		func.setNome(request.getParameter("nome"));
		func.setCpf(request.getParameter("cpf"));
		func.setRg(request.getParameter("rg"));
		func.setTelefone(request.getParameter("fone"));
		func.setEmail(request.getParameter("email"));
		func.setSenha(Integer.parseInt(request.getParameter("senha")));
		try {
			funcionarioDAO.adicionarFuncionario(func);
			response.sendRedirect("RetornaFuncionarios");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//doGet(request, response);
	}
	
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		func.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		System.out.println(func.getCodigo());
		try {
			funcionarioDAO.excluirFuncionario(func);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//Até Excluir Pronto

}
