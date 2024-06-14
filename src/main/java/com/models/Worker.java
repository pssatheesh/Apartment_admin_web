package com.models;

public class Worker {
	private int workerId;
	private String name;
	private String mobile;
	private String email;
	private String jobtype;
	private boolean available;
	private int experience;
	
	
	public Worker(int workerId, String name, String mobile, String email, String jobtype, boolean available,
			int experience) {
		super();
		this.workerId = workerId;
		this.name = name;
		this.mobile = mobile;
		this.email = email;
		this.jobtype = jobtype;
		this.available = available;
		this.experience = experience;
	}
	public int getWorkerId() {
		return workerId;
	}
	public void setWorkerId(int workerId) {
		this.workerId = workerId;
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
	public boolean isAvailable() {
		return available;
	}
	public void setAvailable(boolean available) {
		this.available = available;
	}
	public int getExperience() {
		return experience;
	}
	public void setExperience(int experience) {
		this.experience = experience;
	}
	@Override
	public String toString() {
		return "Workers [workerId=" + workerId + ", name=" + name + ", mobile=" + mobile + ", email=" + email
				+ ", jobtype=" + jobtype + ", available=" + available + ", experience=" + experience + "]";
	}
	
	

}
