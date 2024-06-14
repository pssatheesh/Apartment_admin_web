package data;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.models.Guest;

import Util.Utility;

public class GuestConnection {
	private static DbCode dbCode;
	private static Connection connection;
	private static PreparedStatement pst;
	private static ResultSet resultSet;
	private static Guest guest;
	private static List<Guest> guestDetails;

	public boolean addGuest(String vehicle, String block, String house, Date date, String time, String parking,
			String reason) {
		try {
			String q = "insert into GuestDetails (Vehicle_details,Block,Flat_No,Indate,Intime,Parking_slot,Reason) values(?,?,?,?,?,?,?)";
			connection = DbCode.getConnection();
			pst = connection.prepareStatement(q);
			pst.setString(1, vehicle);
			pst.setString(2, block);
			pst.setString(3, house);
			pst.setDate(4, date);
			pst.setString(5, time);
			pst.setString(6, parking);
			pst.setString(7, reason);
			int c = pst.executeUpdate();
			if (c >= 1) {
				return true;
			}
		} catch (Exception e) {
			Utility.showAlert("Error: " + e);
		}
		return false;
	}

	public Guest searchGuest(String vehicle) {
		try {
			String q = "select * from GuestDetails where Vehicle_details=?";
			connection = DbCode.getConnection();
			pst = connection.prepareStatement(q);
			pst.setString(1, vehicle);
			resultSet = pst.executeQuery();
			if (resultSet.next()) {
				return gcreateObject();
			}
		} catch (Exception e) {
			Utility.showAlert("Error: " + e);
		}
		return null;
	}

	public List<Guest> viewAllGuest() {
		try {
			String q = "select * from GuestDetails";
			connection = DbCode.getConnection();
			pst = connection.prepareStatement(q);
			resultSet = pst.executeQuery();
			guestDetails = new ArrayList<>();
			while (resultSet.next()) {
				guestDetails.add(gcreateObject());
			}
		} catch (Exception e) {
			Utility.showAlert("Error: " + e);
		}
		return guestDetails;
	}

	public int updateGuestOut(String vehicle, Date date, String formatTime) {
		int n = 0;
		try {
			String q = "update GuestDetails set Outdate=?, Outtime=? where Vehicle_details=?";
			updateParkingSlot(vehicle);
			connection = DbCode.getConnection();
			pst = connection.prepareStatement(q);
			pst.setDate(1, date);
			pst.setString(2, formatTime);
			pst.setString(3, vehicle);
			n = pst.executeUpdate();
		} catch (Exception e) {
			Utility.showAlert("Error: " + e);
		}
		return n;
	}

	private void updateParkingSlot(String vehicle) throws ClassNotFoundException, SQLException {
		String parkingSlot = getParkingSlot(vehicle);
		System.out.println(" Parking slot : " + parkingSlot);
		String query = "update parkingGuest set available=? where Parking_slot=?";
		connection = DbCode.getConnection();
		try (PreparedStatement pr = connection.prepareStatement(query)) {
			pr.setInt(1, 1);
			pr.setString(2, parkingSlot);
			System.out.println(pr.executeUpdate());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private String getParkingSlot(String vehicle) throws ClassNotFoundException, SQLException {
		String query = "select Parking_slot from GuestDetails where Vehicle_details =? ";
		connection = DbCode.getConnection();
		String parkingSlot = null;
		try (PreparedStatement pr = connection.prepareStatement(query)) {
			pr.setString(1, vehicle);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				parkingSlot = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return parkingSlot;
	}

	private Guest gcreateObject() throws Exception {
		int id = resultSet.getInt("S_No");
		String Vehicle_details = resultSet.getString("Vehicle_details");
		String block = resultSet.getString("Block");
		String house = resultSet.getString("Flat_No");
		Date indate = resultSet.getDate("Indate");
		String intime = resultSet.getString("Intime");
		Date outdate = resultSet.getDate("Outdate");
		String outtime = resultSet.getString("Outtime");
		String parking = resultSet.getString("Parking_slot");
		String reason = resultSet.getString("Reason");
		guest = new Guest(id, Vehicle_details, block, house, indate, intime, outdate, outtime, parking, reason);
		return guest;
	}

	public String getAllowcate() throws ClassNotFoundException, SQLException {
		String query = "select * from parkingGuest where available=?";
		connection = DbCode.getConnection();
		try (PreparedStatement pr = connection.prepareStatement(query)) {
			pr.setInt(1, 1);
			ResultSet rs = pr.executeQuery();
			while (rs.next()) {
				return rs.getString(2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public int updateParking(String parking) throws ClassNotFoundException, SQLException 
	{
		String query = "update parkingGuest set available=? where parking_slot=?";
		int row=0;
		connection = DbCode.getConnection();
		try(PreparedStatement pr = connection.prepareStatement(query))
		{
			pr.setBoolean(1, false);
			pr.setString(2, parking);
			row = pr.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return row;
	}
}