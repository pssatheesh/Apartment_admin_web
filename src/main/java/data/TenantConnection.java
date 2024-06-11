package data;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.models.Tenant;

import Util.Utility;

public class TenantConnection {
    private static Connection connection;
    private static PreparedStatement pst;
    private static ResultSet resultSet;
    private static Tenant tenant;
    private static List<Tenant> tenantDetails;
    public boolean addTenant(String name, String block, String house, String address, String vehicle, String mobile,String govidproof,String govid, Date date, String formatTime, String parkingSlot) {
        try{
            String q="insert into tenantdetails (Name,Block,Flat_No, Address,Vehicle_details, Mobile_No, Govt_Id_proof, Id_No, Indate, Intime,Parking_slot, Status) values(?,?,?,?,?,?,?,?,?,?,?,?)";
            connection=DbCode.getConnection();
            pst=connection.prepareStatement(q);
          
            pst.setString(1, name);
            pst.setString(2, block);
            pst.setString(3, house);
            pst.setString(4, address);
            pst.setString(5, vehicle);
            pst.setString(6, mobile);
            pst.setString(7, govidproof);
            pst.setString(8, govid);
            pst.setDate(9, date);
            pst.setString(10, formatTime);
            pst.setString(11, parkingSlot);
            pst.setBoolean(12, true);
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
    public  List<Tenant> viewAllTenant() {
        try{
            String q="select * from tenantdetails";
            connection=DbCode.getConnection();
            pst=connection.prepareStatement(q);
            resultSet=pst.executeQuery();
            tenantDetails=new ArrayList<>();
            while(resultSet.next()){
                tenantDetails.add(tcreateObject());
            }
        }catch (Exception e){
            Utility.showAlert( "Error: "+e);
        }
        return tenantDetails;
    }
    public List<Tenant> searchTenant(String name) {
        try{
            String q="select * from tenantdetails where Name=?";
            connection=DbCode.getConnection();
            pst=connection.prepareStatement(q);
            pst.setString(1,name);
            resultSet=pst.executeQuery();
            while(resultSet.next()){
                tenantDetails.add(tcreateObject());
            }
        }catch (Exception e){
            Utility.showAlert( "Error: "+e);
        }
        return tenantDetails;
    }
    public Tenant searchTenant(int regno) {
        try{
            String q="select * from tenantdetails where Register_No=?";
            connection=DbCode.getConnection();
            pst=connection.prepareStatement(q);
            pst.setInt(1,regno);
            resultSet=pst.executeQuery();
            if(resultSet.next()){
                return tcreateObject();
            }
        }catch (Exception e){
            Utility.showAlert( "Error: "+e);
        }
        return null;
    }

    public int updateTenant(int regno, String data) {
    	int n=0;
        try{
            String q="update tenantdetails set Mobile_No=? where register_no=?";
            connection=DbCode.getConnection();
            pst=connection.prepareStatement(q);
            pst.setString(1,data);
            pst.setInt(2,regno);
            n=pst.executeUpdate();
        }catch (Exception e){
            Utility.showAlert( "Error: "+e);
        }
        return n;
    }


    

    public int updateTenantOut(int regno, String name, Date date, String formatTime) {
        int n=0;
        try{
            String q="update tenantdetails set Outdate=?, Outtime=?, Status=? where Register_No=? AND Name=?";
            connection=DbCode.getConnection();
            pst=connection.prepareStatement(q);
            pst.setDate(1,date);
            pst.setString(2,formatTime);
            pst.setBoolean(3, false);
            pst.setInt(4,regno);
            pst.setString(5, name);            
            n=pst.executeUpdate();
        }catch (Exception e){
            Utility.showAlert( "Error: "+e);
        }
        return n;
    }

    private Tenant tcreateObject() throws SQLException {
        int regno=resultSet.getInt("Register_No");
        String name=resultSet.getString("Name");
        String block=resultSet.getString("Block");
        String flatNo=resultSet.getString("Flat_No");
        String address=resultSet.getString("Address");
        String Vehicle_details=resultSet.getString("Vehicle_details");
        String mobile=resultSet.getString("Mobile_No");
        String proof=resultSet.getString("Govt_Id_proof");
        String govId=resultSet.getString("Id_No");
        Date indate=resultSet.getDate("Indate");
        String intime=resultSet.getString("Intime");
        Date outdate=resultSet.getDate("Outdate");
        String outtime=resultSet.getString("Outtime");
        String parking=resultSet.getString("Parking_slot");
        boolean status=resultSet.getBoolean("Status");
        tenant=new Tenant(regno, name, block, flatNo, address, Vehicle_details,
    			mobile, proof, govId, indate, intime, outdate, outtime,
    			parking, status);
        return tenant;
    }


}

