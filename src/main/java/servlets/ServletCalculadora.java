package servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.ModelCalculadora;

import java.io.IOException;

@WebServlet("/ServletCalculadora")
public class ServletCalculadora extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ServletCalculadora() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String expressao = request.getParameter("display");
		
		ModelCalculadora calculadora = new ModelCalculadora();
		calculadora.organizarExpressao(expressao);
		
		RequestDispatcher redirecionar = request.getRequestDispatcher("index.jsp");
		redirecionar.forward(request, response);
		
	}

}
