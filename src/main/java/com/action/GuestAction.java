package com.action;

import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.models.Guest;
import com.opensymphony.xwork2.ActionSupport;

import data.GuestConnection;

public class GuestAction extends ActionSupport {
	private List<Guest> reg = new ArrayList();
	private GuestConnection guestconnect = new GuestConnection();
	private String vehicle;
	private String block;
	private String house;
	private String reason;

	public String getVehicle() {
		return vehicle;
	}

	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}

	public String getBlock() {
		return block;
	}

	public void setBlock(String block) {
		this.block = block;
	}

	public String getHouse() {
		return house;
	}

	public void setHouse(String house) {
		this.house = house;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public List<Guest> viewAllGuest() {
		return guestconnect.viewAllGuest();
	}

	public String execute() throws ClassNotFoundException, SQLException {
		String parking = guestconnect.getAllowcate();
		if (parking == null) {
			return ERROR;
		}
		LocalDate date = LocalDate.now();
		LocalTime time = LocalTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm:ss a");
		String formatTime = time.format(formatter);
		if (guestconnect.addGuest(vehicle, block, house, Date.valueOf(date), formatTime, parking, reason)) {
			System.out.println("added successfully");
			int rows = guestconnect.updateParking(parking);
			System.out.println(rows);
			return SUCCESS;
		}
		System.out.println("Login - Invalid credentials");
		return ERROR;
	}

	public String executeMethodOne() {
		LocalDate date = LocalDate.now();
		LocalTime time = LocalTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm:ss a");
		String formatTime = time.format(formatter);
		if (guestconnect.updateGuestOut(vehicle, Date.valueOf(date), formatTime) >= 1) {
			return SUCCESS;
		}
		return ERROR;
	}
}