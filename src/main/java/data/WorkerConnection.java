package data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.models.Tenant;
import com.models.Worker;

import Util.Utility;

public class WorkerConnection {
	 private static Connection connection;
	    private static PreparedStatement pst;
	    private static ResultSet resultSet;
	    private static Worker worker;
	    private static List<Worker> workerDetails;
	    
	    public  List<Worker> viewAvailableWorkers() {
	        try{
	            String q="select * from Workers where Availability=TRUE";
	            connection=DbCode.getConnection();
	            pst=connection.prepareStatement(q);
	            resultSet=pst.executeQuery();
	            workerDetails=new ArrayList<>();
	            while(resultSet.next()){
	            	workerDetails.add(wcreateObject());
	            }
	        }catch (Exception e){
	            Utility.showAlert( "Error: "+e);
	        }
	        return workerDetails;
	    }
	    
	    public  List<Worker> viewAllWorkers() {
	        try{
	            String q="select * from Workers";
	            connection=DbCode.getConnection();
	            pst=connection.prepareStatement(q);
	            resultSet=pst.executeQuery();
	            workerDetails=new ArrayList<>();
	            while(resultSet.next()){
	            	workerDetails.add(wcreateObject());
	            }
	        }catch (Exception e){
	            Utility.showAlert( "Error: "+e);
	        }
	        return workerDetails;
	    }

		

		public boolean addWorker(String name, String mobile, String email, String jobtype, int experience) {
			try{
	            String q="insert into Workers (Name,Phone,Email, JobType,Availability, Experience) values(?,?,?,?,?,?)";
	            connection=DbCode.getConnection();
	            pst=connection.prepareStatement(q);
	          
	            pst.setString(1, name);
	            pst.setString(2, mobile);
	            pst.setString(3, email);
	            pst.setString(4, jobtype);
	            pst.setBoolean(5, true);
	            pst.setInt(6, experience);
	            int c= pst.executeUpdate();
	            if(c>=1){
	                return true;
	            }
	        }catch (SQLException e){
	            Utility.showAlert( "Error: "+e);
	        } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	        return false;
		}
		public int updateWorker(int wid) {
	    	int n=0;
	        try{
	            String q="update Workers set Availability=? where WorkerID=?";
	            connection=DbCode.getConnection();
	            pst=connection.prepareStatement(q);
	            pst.setBoolean(1,false);
	            pst.setInt(2,wid);
	            n=pst.executeUpdate();
	        }catch (Exception e){
	            Utility.showAlert( "Error: "+e);
	        }
	        return n;
	    }
		
		private Worker wcreateObject() throws SQLException {
			int wid=resultSet.getInt("WorkerID");
			String name=resultSet.getString("Name");
			String mobile=resultSet.getString("Phone");
			String email=resultSet.getString("Email");
			String jobtype=resultSet.getString("JobType");
			boolean availability=resultSet.getBoolean("Availability");
			int experience=resultSet.getInt("Experience");
			worker=new Worker(wid, name, mobile, email, jobtype, availability, experience);
			return worker;
		}
		
}
