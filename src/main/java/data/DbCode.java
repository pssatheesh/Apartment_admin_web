package data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCode {
	private static Connection connection=null;
    private DbCode(){ }
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        if(connection==null){
        	
            String url="jdbc:mysql://localhost:3306/apartment2";
            String user="root";
            String pass="satheesh";
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection= DriverManager.getConnection(url, user, pass);
        }
        return connection;
    }

}
