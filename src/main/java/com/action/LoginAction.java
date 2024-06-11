package com.action;


import com.opensymphony.xwork2.ActionSupport;

import data.LoginDetails;

public class LoginAction extends ActionSupport {
	private String username;
	private String password;

	private LoginDetails loginDetails=new LoginDetails();
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
    	boolean success = loginDetails.isValidateCredential(username, password);
        if (success) {
        	System.out.println("Login - Success");
            return SUCCESS;
        } else {
        	System.out.println("Login - Invalid credentials");
            return ERROR;
        }
    }

}
