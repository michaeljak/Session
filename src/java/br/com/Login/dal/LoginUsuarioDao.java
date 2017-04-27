/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Login.dal;

import br.com.Login.util.LoginConexao;
import br.com.Login.model.LoginUsuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Avell 1513
 */
public class LoginUsuarioDao {
    private Connection connection;
    
    public LoginUsuarioDao(){
        connection = LoginConexao.getConnection();
        
    }
    
    public boolean ConsultarLogin(LoginUsuario login) {
		
		try {
			PreparedStatement preparedStatement = connection.
					prepareStatement("select * from public.usuario where login=? and senha = ?");
			preparedStatement.setString(1, login.getLogin());
			preparedStatement.setString(2, login.getSenha());
                        
			ResultSet rs = preparedStatement.executeQuery();
			
			if (rs.next()) {
				return true;
				
                               
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}
