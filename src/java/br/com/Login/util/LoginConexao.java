
package br.com.Login.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Avell 1513
 */
public class LoginConexao {
private static Connection connection = null;

    public static Connection getConnection() {
        if (connection != null)
            return connection;
        else {
            try {
              
                String driver = "org.postgresql.Driver";
                String url = "jdbc:postgresql://localhost:5432/login";
                String user = "postgres";
                String password = "123456";
                Class.forName(driver);
                connection = DriverManager.getConnection(url, user, password);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return connection;
        }

    }
}