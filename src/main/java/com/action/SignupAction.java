package com.action;

import com.opensymphony.xwork2.ActionSupport;

import data.LoginDetails;

public class SignupAction extends ActionSupport{
	private String name;
	private String username;
	private String password;
	
	private LoginDetails loginDetails=new LoginDetails();
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String execute() 
    {
		boolean success = loginDetails.addUser(name, username, password);
        if (success) {
        	System.out.println("Signup - Success");
            return SUCCESS;
        } else {
        	System.out.println("Signup - Invalid Values");
            return ERROR;
        }
    }

}
