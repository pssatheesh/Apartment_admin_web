package com.action;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.time.format.DateTimeFormatter;

import com.models.Register;
import com.opensymphony.xwork2.ActionSupport;

import data.RegisterConnection;

public class RegisterAction extends ActionSupport {
	private List<Register> reg=new ArrayList();
	private RegisterConnection registerconnect=new RegisterConnection();
	private String vehicle;
	
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public List<Register> viewRegistry(){
		return registerconnect.viewRegistry();
	}
	public String execute() 
    {
		 LocalDate date= LocalDate.now();
	        LocalTime time=LocalTime.now();
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm:ss a");
	        String formatTime = time.format(formatter);
	        if(registerconnect.addDetails(vehicle, date, formatTime)){
	            System.out.println("added successfully");
	            return SUCCESS;
	        }
        	System.out.println("Login - Invalid credentials");
            return ERROR;
        
    }
	public String executeMethodOne() {
		LocalDate date= LocalDate.now();
        LocalTime time=LocalTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm:ss a");
        String formatTime = time.format(formatter);
        if(registerconnect.updateIntime(vehicle, Date.valueOf(date), formatTime) >= 1) {
        	return SUCCESS;
        }
        return ERROR;
		
	}
	

}
