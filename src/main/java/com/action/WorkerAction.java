package com.action;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import com.models.Worker;
import com.opensymphony.xwork2.ActionSupport;

import data.WorkerConnection;

public class WorkerAction extends ActionSupport {
	private int wid;
	private String name;
	private String mobile;
	private String email;
	private String jobtype;
	private int experience;
	private List<Worker> workers=new ArrayList();
	private WorkerConnection con=new WorkerConnection();
	
	
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJobtype() {
		return jobtype;
	}
	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	
	
	public List<Worker> viewAvailableWorkers(){
		return con.viewAvailableWorkers();
	}
	public List<Worker> viewAllWorkers(){
		return con.viewAllWorkers();
	}
	public String execute() 
    {
		 
	        if(con.addWorker(name, mobile, email, jobtype, experience)){
	            System.out.println("added successfully");
	            return SUCCESS;
	        }
        	System.out.println("Unable to add tenant");
            return ERROR;
        
    }
	public String executeMethodOne() {
	       if(con.updateWorker(wid)>=1) {
	    	   return SUCCESS;
	       }
	       return ERROR;
	    }
	
}
