/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.Login.bll;


import br.com.Login.dal.LoginUsuarioDao;
import br.com.Login.model.LoginUsuario;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Elisabete
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private LoginUsuarioDao ludao;
       
    public LoginServlet() {
        super();
        ludao = new LoginUsuarioDao();
    }
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pagina = "logininvalido.jsp";
                
                
                LoginUsuario loginBanco = new LoginUsuario();
                
                loginBanco.setLogin(request.getParameter("login"));
                loginBanco.setSenha(request.getParameter("senha"));
		// Validando se o usuário é igual a "admin" e a senha é igual a "senha"
		
		if(request.getParameter("acao").equals("login")) {
                    
			if(ludao.ConsultarLogin(loginBanco)) {
				
					HttpSession sessao = request.getSession();
					// setando um atributo da sessao
					sessao.setAttribute("login", request.getParameter("login"));
					// como obtive sucesso, chamo a página principal
					pagina = "principal.jsp";
				
			}
		} else if(request.getParameter("acao").equals("logout")) {
			// no logout invalido a sessao
			HttpSession sessao = request.getSession();
			sessao.invalidate();
			// chamo novamente a pagina principal, que deve chamar a página index
			// que ira mostrar o formulario para o usuário logar
			pagina = "principal.jsp";
		}
		
		response.sendRedirect(pagina);
		
	}
}
