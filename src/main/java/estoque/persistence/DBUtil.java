package estoque.persistence;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

	
	private Connection conn = null;
	
	public Connection getConnection(){
		try {
			String driverName = "com.mysql.jdbc.Driver";                        
			Class.forName(driverName);
			String serverName = "localhost";    
            String mydatabase = "estoque";        
            String url = "jdbc:mysql://" + serverName + "/" + mydatabase;
            String username = "root";              
            String password = "1234";      
            conn = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		if(conn != null){
			System.out.println("Conectado");
		}else {
			System.out.println("Nao");
		}
		return conn;
	}
	
	public void closeConnection(Connection c){
		try {
			c.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
}
