package com.action;


import com.opensymphony.xwork2.ActionSupport;

import data.LoginDetails;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

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
    	HttpServletRequest request = ServletActionContext.getRequest();
        if (success) {
             HttpSession session = request.getSession();
             session.setAttribute("user", username);
//        	System.out.println("Login - Success");
            return SUCCESS;
        } else {
        	HttpSession session = request.getSession();
            session.setAttribute("error", "*Invalid credentials");
        	//System.out.println("Login - Invalid credentials");
            return ERROR;
        }
    }
	public String logout() {
		HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        if(session!=null) {
        	session.removeAttribute("user");
    		session.invalidate();
    		HttpServletResponse response = ServletActionContext.getResponse();
    		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
        }
        
		return SUCCESS;
	}

}
