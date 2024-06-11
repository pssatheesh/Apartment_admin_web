package com.action;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.models.Tenant;
import com.opensymphony.xwork2.ActionSupport;

import data.TenantConnection;

public class TenantAction extends ActionSupport {
	private List<Tenant> tenant=new ArrayList();
	private TenantConnection tenantconnect=new TenantConnection();
	private int regno;
	private String name;
	private String block;
	private String flat;
	private String address;
	private String vehicle;
	private String parking;
	private String mobile;
	private String idproof;
	private String idproofno;
	
	public int getRegno() {
		return regno;
	}
	public void setRegno(int regno) {
		this.regno = regno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBlock() {
		return block;
	}
	public void setBlock(String block) {
		this.block = block;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	
	
	public String getFlat() {
		return flat;
	}
	public void setFlat(String flat) {
		this.flat = flat;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getIdproof() {
		return idproof;
	}
	public void setIdproof(String idproof) {
		this.idproof = idproof;
	}
	public String getIdproofno() {
		return idproofno;
	}
	public void setIdproofno(String idproofno) {
		this.idproofno = idproofno;
	}
	public List<Tenant> viewAllTenant() {
        return tenantconnect.viewAllTenant();
    }
	public String execute() 
    {
		 LocalDate date= LocalDate.now();
	        LocalTime time=LocalTime.now();
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm:ss a");
	        String formatTime = time.format(formatter);
			
	        if(tenantconnect.addTenant(name, block, flat, address, vehicle,mobile, idproof, idproofno, Date.valueOf(date), formatTime, parking)){
	            System.out.println("added successfully");
	            return SUCCESS;
	        }
        	System.out.println("Unable to add tenant");
            return ERROR;
        
    }
	public String executeMethodOne() {
		LocalDate date= LocalDate.now();
        LocalTime time=LocalTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("hh:mm:ss a");
        String formatTime = time.format(formatter);
        if(tenantconnect.updateTenantOut(regno, name, Date.valueOf(date), formatTime) >= 1) {
        	return SUCCESS;
        }
        return ERROR;
		
	}
	public List<Tenant> executeMethodTwo() {
	       return tenantconnect.searchTenant(name);
	    }
	public String executeMethodThree() {
	       if(tenantconnect.updateTenant(regno, mobile)>=1) {
	    	   return SUCCESS;
	       }
	       return ERROR;
	    }
	
}
