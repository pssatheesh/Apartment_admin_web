package data;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import Util.Utility;

public class LoginDetails {
	private static PreparedStatement pst;
    private static ResultSet resultSet;
     private Connection connection;
    private DbCode Dbcode;

    public boolean isValidateCredential(String user, String pass) {
        boolean res=false;
        try{
            String q="select * from credentials where username=? and password=?";
            connection= DbCode.getConnection();
            pst=connection.prepareStatement(q);
            pst.setString(1,user);
            pst.setString(2, pass);
            resultSet= pst.executeQuery();
            if (resultSet.next()){
                if (resultSet.getString("password").equals(pass)){
                    return true;
                }
            }
        }catch (Exception e){
        	HttpServletResponse response = ServletActionContext.getResponse();
            try {
                response.sendError(805, "invalid credential");
            } catch (IOException ioException) {
                ioException.printStackTrace();
            }
        }
        return res;
    }

	public boolean addUser(String name, String username, String password) {
		int n=0;
		try{
            String q="insert into credentials (Name, username, password) values(?,?,?)";
            connection= DbCode.getConnection();
            pst=connection.prepareStatement(q);
            pst.setString(1,name);
            pst.setString(2, username);
            pst.setString(3, password);
            n=pst.executeUpdate();
            if(n>=1) {
				return true;
			}
            
        }catch (Exception e){
            Utility.showAlert( "Error: "+e);
        }
		return false;
	}

    

}
